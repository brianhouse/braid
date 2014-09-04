import copy, math, collections
from collections import deque
from ..pattern import *
from ..notation import *
from ..tween import *
from ..core import *
from ..util import log, num_args

class Voice(object):

    voices = driver.voices
        
    def __init__(self, channel, **params):
        Voice.voices.append(self)        
        self.channel = channel
        self.index = -1
        self.tweens = {}
        self.cycles = 0.0
        self.tempo = 120
        self.chord = C, MAJ
        self.velocity = 1.0
        self.phase = 0.0
        self.previous_pitch = 60
        self.previous_step = 1        
        self.controls = {}              # in the form {'attack': 54, 'decay': 53, 'cutoff': 52}
        self.control_values = {}
        self._pattern = Pattern([0, 0])
        self._steps = self._pattern.resolve()        
        self._sequence = None
        self._queue = deque()           # perform a series of functions on the next cycle                
        self._mute = False
        self.set(self._pattern)                                       
        for param, value in params.items():
            if hasattr(self, param):
                setattr(self, param, value)
            else:
                raise AttributeError("Voice has no property %s" % param)    
        for control in self.controls: 
            setattr(self, control, 0)

    def update(self, delta_t):
        params_changed = self._perform_tweens()
        self.cycles += delta_t * self.rate
        p = (self.cycles + self.phase) % 1.0        
        i = int(p * len(self._steps))
        if i != self.index:        
            self.index = (self.index + 1) % len(self._steps) # dont skip steps
            if self.index == 0:
                if self._pattern.tween is not None:
                    # this overrides sequencing         ## problem for new model
                    self._pattern = self.tweens['pattern'].get_value()                
                # if len(self.sequence):
                else:
                    self._pattern = self.sequence._shift(self)
                self._steps = self.pattern.resolve()
            step = self._steps[self.index]
            self.play(step)
        if not self._mute:
            for control in self.controls:
                value = int(getattr(self, control))
                if control not in self.control_values or value != self.control_values[control]:
                    midi.send_control(self.channel, self.controls[control], value)
                    self.control_values[control] = value

    def play(self, step, velocity=None):
        if isinstance(step, collections.Callable):
            step = step(self) if num_args(step) else step()
        if step == Z:
            self.rest()
        elif step == 0 or step is None:
            self.hold()
        else:
            if step == P:
                step = self.previous_step
            if self.chord is None:
                pitch = step
            else:
                root, scale = self.chord
                pitch = root + scale[step]
            velocity = 1.0 - (random() * 0.05) if velocity is None else velocity
            velocity *= self.velocity                      
            if not self._mute:                
                midi.send_note(self.channel, self.previous_pitch, 0)
                midi.send_note(self.channel, pitch, int(velocity * 127))
            self.previous_pitch = pitch
        if step != 0:        
            self.previous_step = step            

    def play_at(self, t, step, velocity=None):
        def p():
            self.play(step, velocity)
        driver.callback(t, p)        

    def hold(self):
        pass

    def rest(self):
        midi.send_note(self.channel, self.previous_pitch, 0)        

    def end(self):
        self.rest()

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

    @property
    def chord(self):
        return self.root, self.scale

    @chord.setter
    def chord(self, value):
        self.root, self.scale = value


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
