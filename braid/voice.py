import collections
from .attribute import Attribute
from .pattern import Pattern, PatternAttribute
from .core import driver, midi_out
from .notation import *
from .util import log, num_args

class Voice(object):

    voices = driver.voices

    def __init__(self, channel, **params):
        Voice.voices.append(self)        
        
        # built-in attributes
        self.channel = Attribute(self, channel)
        self.chord = Attribute(self, (C, MAJ))
        self.mute = Attribute(self, False)
        self.phase = Attribute(self, 0.0)
        self.pattern = PatternAttribute(self, Pattern())
        self.rate = Attribute(self, 1.0)
        self.velocity = Attribute(self, 1.0)

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
        self._locks = []

        # set passed defaults
        for param, value in params.items():
            if param == 'controls':
                continue
            if hasattr(self, param):
                setattr(self, param, Attribute(self, value))
            else:
                raise AttributeError("Cannot set property %s in constructor" % param)    


    def update(self, delta_t):
        """Run each tick and update the state of the Voice and all its attributes"""

        # update tweens in all attributes
        for attribute in (getattr(self, attribute) for attribute in dir(self) if isinstance(getattr(self, attribute), Attribute)):
            if isinstance(attribute, PatternAttribute):
                continue
            attribute.tween.update()

        # calculate step
        self._cycles += delta_t * self.rate.value * driver.rate
        p = (self._cycles + self.phase.value) % 1.0        
        i = int(p * len(self._steps))
        if i != self._index or (len(self._steps) == 1 and int(self._cycles) != self._last_edge): # contingency for whole notes
            self._index = (self._index + 1) % len(self._steps) # dont skip steps
            if self._index == 0:                      
                for lock in self._locks: # perform all locking 
                    print(lock)
                    lock()        
                self._locks = []  
                if self.pattern.tween.running: # pattern tweens only happen on an edge
                    self.pattern.tween.update()
                self.pattern.shift()
                self._steps = self.pattern.resolve()
            step = self._steps[self._index]
            self.play(step)
        self._last_edge = int(self._cycles)


    def update_control(self):
        # check if MIDI attributes have changed, and send if so
        # this can potentially happen with any step, so check before plays
        # it can also happen if a note is not played, so check otherwise too ##
        if not self.mute.value:
            for control in self.controls:
                value = int(getattr(self, control).value)
                if control not in self.control_values or value != self.control_values[control]:
                    midi_out.send_control(self.channel.value, self.controls[control], value)
                    self.control_values[control] = value
                    log.info("%d: %s %s" % (self.channel.value, control, value))

    def play(self, step, velocity=None):
        """Interpret a step value to play a note"""
        if isinstance(step, collections.Callable):
            step = step(self) if num_args(step) else step()
        if step == Z:
            self.rest()
        elif step == 0 or step is None:
            self.hold()
        else:
            self.update_control()
            if step == P:
                step = self._previous_step
            if self.chord.value is None:
                pitch = step
            else:
                root, scale = self.chord.value
                pitch = root + scale[step]
            velocity = 1.0 - (random() * 0.05) if velocity is None else velocity
            velocity *= self.velocity.value
            if not self.mute.value:
                self.note(pitch, velocity)
            self._previous_pitch = pitch
        if step != 0:        
            self._previous_step = step            

    def play_at(self, t, step, velocity=None):
        """Play a step outside of the update cycle"""
        def p():
            self.play(step, velocity)
        driver.on_t(t, p)

    def note(self, pitch, velocity):
        """Override for custom MIDI behavior"""
        midi_out.send_note(self.channel.value, self._previous_pitch, 0)
        midi_out.send_note(self.channel.value, pitch, int(velocity * 127))

    def hold(self):
        """Override to add behavior to held notes, otherwise nothing"""
        pass

    def rest(self):
        """Send a MIDI off"""
        midi_out.send_note(self.channel.value, self._previous_pitch, 0)        

    def end(self):
        """Override to add behavior for the end of the piece, otherwise rest"""
        self.rest()

    def set(self, value, repeat=None, endwith=None):
        """Shortcut for setting pattern"""
        pattern = self.pattern.set(value)
        if repeat is not None:
            pattern.repeat(repeat)
        if endwith is not None:
            pattern.endwith(endwith)
        return pattern

    def add(self, name, default=0.0):
        setattr(self, name, Attribute(self, default))

    def lock(self, voice, phase=0.0):
        """On the next cycle, sync locked voices"""
        assert(isinstance(voice, Voice))
        def lock_f():
            voice.phase.set(self.phase.value + phase)
            voice._cycles = self._cycles
            voice._index = 0            
        self._locks.append(lock_f)



class Drums(Voice):

    def __init__(self, **params):
        Voice.__init__(self, 10, **params)
        # 1 kick = 36 #
        # 2 snare = 38 # 2
        # 3 lotom = 43 # 7
        # 4 hitom = 50 # 14
        # 5 clhat = 42 # 6
        # 6 ophat = 46 # 10
        # 7 clap = 39   # 3
        # 8 claves = 75 # 39
        # 9 agogo = 67 # 31
        # 10 crash = 49  # 13
        self.drums = Scale([0, 2, 7, 14, 6, 10, 3, 39, 31, 13])
        self.chord.set((C2, self.drums))

    def note(self, pitch, velocity):
        if pitch == 36:
            velocity /= 3.0
        midi_out.send_control(self.channel.value, self.drums.index(pitch - 36) + 40, int(velocity * 127))
        midi_out.send_note(self.channel.value, pitch, 127)
