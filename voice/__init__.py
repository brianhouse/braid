import copy, math
from collections import deque
from ..pattern import Pattern
from ..notation import *
from ..tween import *
from ..core import *
import collections

class Voice(object):
        
    def __init__(self, channel=1, cycles=1):  
        self.channel = channel
        self.index = None
        self.index_played = False
        self.tweens = {}
        self.callbacks = []
        self.cycles = cycles    ## this cycles thing is a hack for now
        self.channel = channel
        self.continuous = False  # set to true to send params outside of notes, ie panning or reverb

        # setter params
        self._pattern = Pattern()        
        self._sequence = deque()
        self._steps = self._pattern.resolve()
        self._reverb = [1.0, 0.0, 0.0, 0.0, 0.0]     
        self._angle = 0.0

        # params        
        self.chord = C, MAJ
        self.velocity = 1.0
        self.pan = 0.5        
        self.fade = 0.0
        self.synth = 'cycle'
        self.attack = 5
        self.sustain = 0
        self.release = 200
        self.glide = 5
        self.radius = 0.5 # is fully to the edge; 1.0 will make hard speakers                

    def update(self, p):
        changed = self._perform_tweens()        
        local_p = (p * self.cycles) % 1.0
        i = int(local_p * len(self._steps))
        if i != self.index:            
            self.index = i
            if self.index == 0:
                # self._perform_callbacks()
                if len(self.sequence):
                    while True:
                        next = self.sequence[0]
                        self.sequence.rotate(-1)
                        if type(next) == Pattern:
                            self.pattern = next
                            break
                        elif isinstance(next, collections.Callable):
                            next(self)
                elif 'pattern' in self.tweens:
                    self.pattern = self.tweens['pattern'].get_value()
                self._steps = self.pattern.resolve()
            self.index_played = False                                
        if not self.index_played:
            step = self._steps[self.index]
            if isinstance(step, collections.Callable):
                step = step(self)
            if step:
                self.play(step)
            self.index_played = True
        elif changed and self.continuous:
            ## throttle this?
            synth.send('/braid/params', self.channel, self.velocity, self.pan, self.fade)

    def play(self, step):
        """ To facilitate abstraction when driver/update isnt being used"""
        if type(step) == int and step > 20:
            pitch = step
        else:
            root, scale = self.chord
            pitch = root + scale[step]
        velocity = 1.0 - (random.random() * 0.05)
        velocity *= self.velocity           
        synth.send('/braid/note', self.channel, pitch, velocity, self.pan, self.fade, self.synth, self.attack, self.sustain, self.release, self.glide)

    # could do callbacks, once we figure out how tweens are actually timed
    def tween(self, param, start_value, target_value, duration, transition=linear):
        value = getattr(self, param)
        if type(value) == int or type(value) == float:
            tween = ContinuousTween(start_value, target_value, duration, transition)
        elif param == 'pattern':
            if type(start_value) != Pattern:
                start_value = Pattern(start_value)
            if type(target_value) != Pattern:
                target_value = Pattern(target_value)
            tween = PatternTween(start_value, target_value, duration, transition)
        else:
            tween = DiscreteTween(start_value, target_value, duration, transition)
        self.tweens[param] = tween

    def _perform_tweens(self):
        changed = False
        for param, tween in self.tweens.items():
            if tween.finished:          ## maybe take finisheds out, but might be needed for callbacks?
                self.tweens.pop(param)
                print('killed tween %s' % param)
            else:
                if param != 'pattern':
                    value = tween.get_value()
                    if value != getattr(self, param):
                        setattr(self, param, tween.get_value())
                        changed = True
        return changed

    # is this useful?
    # def add_callback(self, f, count=1):
    #     self.callbacks.append((f, count))

    # def _perform_callbacks(self):
    #     for c, callback in enumerate(list(self.callbacks)):
    #         f, count = callback
    #         if count == 0:
    #             f(self)
    #             self.callbacks.remove(callback)
    #         else:                
    #             self.callbacks[c] = f, count - 1

    @property
    def pattern(self):
        return self._pattern

    @pattern.setter
    def pattern(self, value):
        if type(value) == Pattern:
            self._pattern = value
        else:
            self._pattern = Pattern(value)

    @property
    def sequence(self):
        return self._sequence

    @sequence.setter
    def sequence(self, items):
        for i, item in enumerate(items):
            if type(item) == list:
                items[i] = Pattern(item)
        self._sequence = deque(items)

    @property
    def reverb(self):
        return self._reverb

    @reverb.setter
    def reverb(self, params):
        self._reverb = list(params)
        if not self.active:
            return        
        synth.send('/braid/reverb', self.channel, *params)

    @property
    def angle(self):
        return self._angle

    @angle.setter
    def angle(self, degrees):
        self._angle = degrees % 360
        degrees -= 90.0    # so 0 is front and center
        radians = degrees * (math.pi / 180.0)
        self.pan = 0.5 + (self.radius * math.cos(radians))
        self.fade = 0.5 + (self.radius * math.sin(radians))


""" Wrappers for sequenced changes """

def chord(chord):
    def f(voice):
        voice.chord = chord
    return f

def velocity(velocity):
    def f(voice):
        voice.velocity = velocity
    return f

def tween(param, start_value, target_value, duration, transition=linear):
    def f(voice):
        voice.tween(param, start_value, target_value, duration, transition=linear)
    return f

