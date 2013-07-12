import copy, math
from collections import deque
from ..pattern import Pattern
from ..notation import *
from ..tween import *
from ..core import *
from ..util import log
import collections

class Voice(object):
        
    def __init__(self, channel=1, continuous=False):
        driver.voices.append(self)        
        self.channel = channel
        self.index = -1
        self.tweens = {}
        self.callbacks = []
        self.channel = channel
        self.continuous = continuous  # set to true to send params outside of notes, ie panning or reverb
        self.cycles = 0.0
        self.tempo = 120
        self._pattern = Pattern((0, 0))
        self._sequence = deque()
        self._steps = self._pattern.resolve()
        self.chord = C, MAJ
        self.velocity = 1.0
        self.phase = 0.0

    def update(self, delta_t):
        params_changed = self._perform_tweens()   # might change to base on tempo/rate
        self.cycles += delta_t * self.rate
        p = (self.cycles + self.phase) % 1.0        
        i = int(p * len(self._steps))
        if i != self.index:        
            self.index = (self.index + 1) % len(self._steps) # dont skip steps
            if self.index == 0:
                self._perform_callbacks()
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
            step = self._steps[self.index]
            if isinstance(step, collections.Callable):
                step = step(self)
            if step is None:
                self.rest()
            elif step == 0:
                self.hold()
            else:
                if type(step) == int and step >= 12:
                    pitch = step
                else:
                    root, scale = self.chord
                    pitch = root + scale[step]
                velocity = 1.0 - (random.random() * 0.05)
                velocity *= self.velocity                           
                self.play(pitch, velocity)
        elif params_changed and self.continuous:   
            self.send_params()

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        synth.send('/braid/note', self.channel, pitch, velocity)

    def hold(self):
        pass

    def rest(self):
        self.play(0, 0)

    def end(self):
        pass

    def send_params(self):
        """ To facilitate abstraction"""
        synth.send('/braid/params', self.channel, self.velocity)

    def tween(self, param, start_value, target_value, duration, transition=linear, callback=None):
        value = getattr(self, param)
        if type(value) == int or type(value) == float:
            tween = ContinuousTween(start_value, target_value, duration, transition, callback)
        elif param == 'pattern':
            if type(start_value) != Pattern:
                start_value = Pattern(start_value)
            if type(target_value) != Pattern:
                target_value = Pattern(target_value)
            tween = PatternTween(start_value, target_value, duration, transition, callback)
        else:
            tween = DiscreteTween(start_value, target_value, duration, transition, callback)
        self.tweens[param] = tween

    def remove_tween(self, param):
        if param in self.tweens:
            self.tweens.pop(param)

    def _perform_tweens(self):
        changed = False
        for param, tween in list(self.tweens.items()):
            if tween.finished:
                log.info('Killed tween %s' % param)
                self.tweens.pop(param)
                if tween.callback is not None:
                    tween.callback(self)
            else:
                if param != 'pattern':
                    value = tween.get_value()
                    if value != getattr(self, param):
                        setattr(self, param, tween.get_value())
                        changed = True
        return changed

    def add_callback(self, f, count=1):
        self.callbacks.append((f, count))

    def _perform_callbacks(self):
        for c, callback in enumerate(self.callbacks):
            f, count = callback
            if count == 0:
                f(self)
                self.callbacks.remove(callback)
            else:                
                self.callbacks[c] = f, count - 1

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

