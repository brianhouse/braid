from .attribute import Attribute
from .sequence import Sequence

class Voice(Attribute):

    voices = driver.voices

    def __init__(self, channel, **params):
        self.channel = channel

        # built-in attributes
        self.chord = Attribute((C, MAJ))
        self.mute = Attribute(False)
        self.phase = Attribute(0.0)
        self.rate = Attribute(120)
        self.sequence = Sequence()        
        self.velocity = Attribute(1.0)

        # arbitrary attributes linked to MIDI controls
        # 'control' is a dict in the form {'attack': 54, 'decay': 53, 'cutoff': 52, ...}
        self.controls = {} if 'controls' not in params else params['controls'] 
        self.control_values = {}
        for control in self.controls: 
            setattr(self, control, Attribute(0))

        # set passed defaults
        for param, value in params.items():
            if hasattr(self, param):
                setattr(self, param, value)
            else:
                raise AttributeError("Cannot set property %s in constructor" % param)    

        # private reference variables
        self._cycles = 0.0
        self._index = -1      
        self._pattern = Pattern([0, 0])
        self._steps = self._pattern.resolve()
        self._previous_pitch = 60
        self._previous_step = 1


    def update(self, delta_t):
        """Run each tick and update the state of the Voice and all its attributes"""

        # update tweens in all attributes
        for attribute in (attribute for attribute in dir(self) if isinstance(attribute, Attribute)):
            attribute.tween.update()

        # calculate step
        self._cycles += delta_t * self.rate
        p = (self._cycles + self.phase) % 1.0        
        i = int(p * len(self._steps))
        if i != self._index:        
            self._index = (self._index + 1) % len(self._steps) # dont skip steps
            if self._index == 0:
                ### need some endwith love? or repeat love? where does that come in?
                if self._pattern.tween is not None: # tweening patterns override sequence                
                    self._pattern.tween.update()
                else:
                    self._pattern = self.sequence._shift(self)
                self._steps = self.pattern.resolve()
            step = self._steps[self.index]
            self.play(step)

        # check if MIDI attributes have changed, and send if so
        if not self.mute:
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
                root, scale = self.chord
                pitch = root + scale[step]
            velocity = 1.0 - (random() * 0.05) if velocity is None else velocity
            velocity *= self.velocity                      
            if not self._mute:                
                midi.send_note(self.channel, self._previous_pitch, 0)
                midi.send_note(self.channel, pitch, int(velocity * 127))
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
        midi.send_note(self.channel, self._previous_pitch, 0)        

    def end(self):
        """Override to add behavior for the end of the piece, otherwise rest"""
        self.rest()