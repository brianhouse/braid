import collections
from .attribute import Attribute
from .sequence import Sequence
from .core import driver, midi
from .notation import *
from .pattern import Pattern
from .util import num_args

class Voice(object):

    voices = driver.voices

    def __init__(self, channel, **params):
        Voice.voices.append(self)        
        
        # built-in attributes
        self.channel = Attribute(self, channel)
        self.chord = Attribute(self, (C, MAJ))
        self.mute = Attribute(self, False)
        self.phase = Attribute(self, 0.0)
        self.rate = Attribute(self, 1.0)
        self.velocity = Attribute(self, 1.0)

        self.pattern = None
        self.sequence = Sequence([0])

        # arbitrary attributes linked to MIDI controls
        # 'control' is a dict in the form {'attack': 54, 'decay': 53, 'cutoff': 52, ...}
        self.controls = {} if 'controls' not in params else params['controls'] 
        self.control_values = {}
        for control in self.controls: 
            setattr(self, control, Attribute(self, 0))

        # private reference variables
        self._cycles = 0.0
        self._last_edge = 0
        self._index = -1      
        self._steps = [0]
        self._previous_pitch = 60
        self._previous_step = 1

        # set passed defaults
        for param, value in params.items():
            if hasattr(self, param):
                setattr(self, param, Attribute(self, value))
            else:
                raise AttributeError("Cannot set property %s in constructor" % param)    


    def update(self, delta_t):
        """Run each tick and update the state of the Voice and all its attributes"""

        # update tweens in all attributes
        for attribute in (attribute for attribute in dir(self) if isinstance(attribute, Attribute)):
            attribute.tween.update()

        # calculate step
        self._cycles += delta_t * self.rate.value * driver.rate
        p = (self._cycles + self.phase.value) % 1.0        
        i = int(p * len(self._steps))
        if i != self._index or (len(self._steps) == 1 and int(self._cycles) != self._last_edge):    # contingency for whole notes
            self._index = (self._index + 1) % len(self._steps) # dont skip steps
            if self._index == 0:
                if self.pattern is not None and self.pattern.tween is not None: # tweening patterns override sequence                
                    self.pattern.tween.update()
                else:
                    self.pattern = self.sequence._shift(self)
                self._steps = self.pattern.resolve()
            step = self._steps[self._index]
            self.play(step)
        self._last_edge = int(self._cycles)

        # check if MIDI attributes have changed, and send if so
        if not self.mute.value:
            for control in self.controls:
                value = int(getattr(self, control))
                if control not in self.control_values or value != self.control_values[control]:
                    midi.send_control(self.channel, self.controls[control], value)
                    self.control_values[control] = value


    def play(self, step, velocity=None):
        """Interpret a step value to play a note"""
        if isinstance(step, collections.Callable):
            step = step(self) if num_args(step) else step()
        if step == Z:
            self.rest()
        elif step == 0 or step is None:
            self.hold()
        else:
            if step == P:
                step = self._previous_step
            if self.chord is None:
                pitch = step
            else:
                root, scale = self.chord.value
                pitch = root + scale[step]
            velocity = 1.0 - (random() * 0.05) if velocity is None else velocity
            velocity *= self.velocity.value
            if not self.mute.value:
                midi.send_note(self.channel.value, self._previous_pitch, 0)
                midi.send_note(self.channel.value, pitch, int(velocity * 127))
            self._previous_pitch = pitch
        if step != 0:        
            self._previous_step = step            

    def play_at(self, t, step, velocity=None):
        """Play a step outside of the update cycle"""
        def p():
            self.play(step, velocity)
        driver.callback(t, p)               ###

    def hold(self):
        """Override to add behavior to held notes, otherwise nothing"""
        pass

    def rest(self):
        """Send a MIDI off"""
        midi.send_note(self.channel.value, self._previous_pitch, 0)        

    def end(self):
        """Override to add behavior for the end of the piece, otherwise rest"""
        self.rest()

    def set(self, sequence):
        """Convenience method, synonym for voice.sequence.set"""
        return self.sequence.set(sequence)