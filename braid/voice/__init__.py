import copy, math, collections
from collections import deque
from ..pattern import *
from ..notation import *
from ..tween import *
from ..core import *
from ..util import log, num_args

class Voice(object):
        
    def __init__(self, channel, **params):
        driver.voices.append(self)        
        self.channel = channel
        self.index = -1
        self.tweens = {}
        # self.cyclebacks = []
        self.channel = channel
        self.continuous = False  # set to true to send params outside of notes, ie panning or reverb
        self.cycles = 0.0
        self.tempo = 120
        self.chord = C, MAJ
        self.velocity = 1.0
        self.phase = 0.0
        self.previous_pitch = 0
        self._queue = deque()         # perform a series of functions on the next cycle                
        self._mute = False
        self._pattern = Pattern([0, 0])
        self._steps = self._pattern.resolve()        
        self._sequence = None
        self.set(self._pattern)                                       
        for param, value in params.items():
            if hasattr(self, param):
                setattr(self, param, value)         

    def update(self, delta_t):
        params_changed = self._perform_tweens()
        self.cycles += delta_t * self.rate
        p = (self.cycles + self.phase) % 1.0        
        i = int(p * len(self._steps))
        if i != self.index:        
            self.index = (self.index + 1) % len(self._steps) # dont skip steps
            if self.index == 0:
                # self._perform_cyclebacks()
                # while len(self.queue):
                #     self.queue.popleft()(self)
                if 'pattern' in self.tweens:
                    # this overrides sequencing
                    self._pattern = self.tweens['pattern'].get_value()                
                # if len(self.sequence):
                else:
                    self._pattern = self.sequence._shift(self)
                self._steps = self.pattern.resolve()
            step = self._steps[self.index]
            if isinstance(step, collections.Callable):
                step = step(self) if num_args(step) else step()
            if not self._mute:
                if step == Z:
                    self.rest()
                elif step == 0 or step is None:
                    self.hold()
                else:
                    if self.chord is None:
                        pitch = step
                    else:
                        root, scale = self.chord
                        pitch = root + scale[step]
                    velocity = 1.0 - (random() * 0.05)
                    velocity *= self.velocity                           
                    self.play(pitch, velocity)
        elif params_changed and self.continuous and not self._mute:   
            self.send_params()

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        midi_synth.send_note(self.channel, self.previous_pitch, 0)
        midi_synth.send_note(self.channel, pitch, int(velocity * 127))
        self.previous_pitch = pitch

    def hold(self):
        pass

    def rest(self):
        midi_synth.send_note(self.channel, self.previous_pitch, 0)        

    def end(self):
        self.rest()

    def send_params(self):
        """ To facilitate abstraction"""
        ## hmm
        osc_synth.send('/braid/params', self.channel, self.velocity)

    def tween(self, param, start_value, target_value, duration, transition_f=linear):
        if not hasattr(self, param):    # can initialize properties with a tween, useful for reference values
            setattr(self, param, start_value)
        value = getattr(self, param)
        if start_value is None:
            start_value = value
        if type(value) == int or type(value) == float:
            tween = ContinuousTween(start_value, target_value, duration, transition_f)
        elif param == 'pattern':
            if not isinstance(start_value, Pattern):
                start_value = Pattern(start_value)
            if not isinstance(target_value, Pattern):
                target_value = Pattern(target_value)
            tween = PatternTween(start_value, target_value, duration, transition_f)
        elif param != 'chord' and (type(value) == list or type(value) == tuple):
            tween = TupleTween(start_value, target_value, duration, transition_f)
        else:
            tween = DiscreteTween(start_value, target_value, duration, transition_f)
        self.tweens[param] = tween      # only one active tween per parameter
        return tween

    def remove_tween(self, param):
        if param in self.tweens:
            self.tweens.pop(param)

    def _perform_tweens(self):
        changed = False
        for param, tween in list(self.tweens.items()):
            if param != 'pattern':
                value = tween.get_value()
                if value != getattr(self, param):       # better in this class, because we need the refs  ## really? I think we should move it
                    setattr(self, param, tween.get_value())
                    changed = True            
            if tween.finished:
                # if tween.repeat:
                #     tween.restart()
                # else:                    
                log.debug("Killed tween %s" % param)
                self.tweens.pop(param)
                if tween.finish_f is not None:          # do this here in case the callback is restarting the tween with different params  ## huh?
                    if num_args(tween.finish_f) > 1:
                        tween.finish_f(self, tween)
                    elif num_args(tween.finish_f) > 0:
                        tween.finish_f(self)
                    else:
                        tween.finish_f()                           
        return changed

    ## do we need this? maybe this just works on the driver
    ## so sequencing is either relative with voices, or with cycles of the driver
    ## or with tweening the driver
    # def on_cycle(self, count, f):
    #     """A a given number of cycles, call a function"""
    #     self.cyclebacks.append((count, f))

    # def clear_cycleback(self, clear_f):
    #     for c, cycleback in enumerate(self.cyclebacks):
    #         count, f = cycleback
    #         if f == clear_f:
    #             self.cyclebacks.remove(cycleback)

    # def _perform_cyclebacks(self):
    #     for c, cycleback in enumerate(self.callbacks):
    #         count, f = cycleback
    #         if count == 0:
    #             f(self) if num_args(f) else f()
    #             self.cyclebacks.remove(cycleback)
    #         else:                
    #             self.cyclebacks[c] = count - 1, f

    def mute(self, nop=True):   # nop allows direct callbacks
        self._mute = True
        self.rest()

    def unmute(self, nop=True):   # nop allows direct callbacks
        self._mute = False

    @property
    def tempo(self):
        return self.rate * 60.0 * 4.0

    @tempo.setter
    def tempo(self, value):
        """Convert to a multiplier of 1hz cycles"""
        value /= 60.0           # bpm -> bps
        value /= 4.0            # measures instead of beats, ref 4/4        
        self.rate = value

    @property
    def pattern(self):
        return self._pattern

    # @pattern.setter
    # def pattern(self, value):
    #     if isinstance(value, Pattern):
    #         self._pattern = value
    #     else:
    #         self._pattern = Pattern(value)

    @property
    def sequence(self):
        return self._sequence

    # @sequence.setter
    # def sequence(self, items):
    #     items = list(items)
    #     for i, item in enumerate(items):
    #         if type(item) == list or type(item) == tuple:
    #             items[i] = Pattern(item)
    #         else:
    #             assert isinstance(item, collections.Callable)
    #     self._sequence = Sequence(items)

    # def clear_sequence(self):
    #     self._sequence = deque()

    @property
    def queue(self):
        return self._queue

    @queue.setter
    def queue(self, items):
        items = list(items)
        for i, item in enumerate(items):
            assert isinstance(item, collections.Callable)
        self._queue = deque(items)

    def clear_queue(self):
        self._queue = deque()

    def set(self, *items):     
        ## if type(Sequence) make a copy
        self._sequence = Sequence(items)                
        return self._sequence


class Sequence(list):

    def __init__(self, *args):
        self._index = 0
        self._repeat = False
        self._finish_f = None
        args = [self._check(item) for item in args[0]]
        list.__init__(self, args)

    def __setitem__(self, item):
        list.__setitem__(self, self._check(item))

    def append(self, item):
        list.append(self, self._check(item))

    def insert(self, i, item):
        list.insert(self, i, self._check(item))

    def extend(self):
        raise NotImplementedError

    def _check(self, item):
        if type(item) == list or type(item) == tuple:
            item = Pattern(item)
        elif not isinstance(item, Pattern):
            assert isinstance(item, collections.Callable)
        return item

    def _shift(self, voice):
        while True:
            item = self[self._index]
            if isinstance(item, collections.Callable):    # execute unlimited functions, but break on new pattern
                item(voice)        
            self._index = self._index + 1
            if self._index == len(self):
                if not self._repeat:
                    voice.set([0, 0])
                if self._finish_f is not None:
                    if num_args(self._finish_f) > 0:
                        self._finish_f(voice)
                    else:
                        self._finish_f()
                self._index = 0
            if isinstance(item, Pattern):
                return item

    def repeat(self):
        self._repeat = True
        return self

    def finish(self, f):
        assert isinstance(f, collections.Callable)
        self._finish_f = f
        return self


""" These wrappers can be called within sequences, eg v1.set([1, 1, 1, 1], chord(C, MAJ)) """

def chord(*chord):
    def f(voice):
        voice.chord = chord
    return f

def velocity(velocity):
    def f(voice):
        voice.velocity = velocity
    return f

def tween(param, start_value, target_value, duration, transition_f=linear):
    def f(voice):
        voice.tween(param, start_value, target_value, duration, transition_f=linear)
    return f


from .serotonin import Serotonin
from .meeblip import Meeblip
from .swerve import Swerve
from .volcabeats import Volcabeats



