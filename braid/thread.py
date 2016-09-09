import collections
from .core import driver
from .util import num_args, midi_out
from .signal import linear
from .notation import *
from .tween import *


class Thread(object):

    threads = driver.threads

    def __init__(self, channel):
        Thread.threads.append(self)        

        # private reference variables
        self._channel = channel
        self._running = False
        self._cycles = 0.0
        self._last_edge = 0
        self._index = -1      
        self._steps = [0]
        self._previous_pitch = 60
        self._previous_step = 1
        self.__phase_correction = 0.0
        self._control_values = {}        

        # settable/tweenable attributes        
        self.pattern = [0]
        self.chord = C, MAJ
        self.velocity = 1.0            
        self.grace = 0.75        
        self.rate = 1.0
        self.phase = 0.0
        self.micro = None

        print("Created thread on channel %d" % self._channel)


    def update(self, delta_t):        
        """Run each tick and update the state of the Thread"""
        if not self._running:
            return
        self.update_control()
        self._cycles += delta_t * self.rate * driver.rate
        if isinstance(self._rate, Tween):
            pc = self._rate.get_phase()
            if pc is not None:
                self.__phase_correction.target_value = pc
        p = (self._cycles + self.phase + self._phase_correction) % 1.0  
        if self.micro is not None:
            p = self.micro(p)
        i = int(p * len(self._steps))
        if i != self._index or (len(self._steps) == 1 and int(self._cycles) != self._last_edge): # contingency for whole notes
            self._index = (self._index + 1) % len(self._steps) # dont skip steps
            if self._index == 0:
                if isinstance(self.pattern, Tween): # pattern tweens only happen on an edge
                    pattern = self.pattern.value()
                else:
                    pattern = self.pattern
                self._steps = pattern.resolve() # new patterns kick in here
            step = self._steps[self._index]
            self.play(step)
        self._last_edge = int(self._cycles)

    def update_control(self):
        # check if MIDI attributes have changed, and if so send
        if not hasattr(self, "controls"):
            return
        for control in self.controls:
            value = int(getattr(self, control))
            if control not in self._control_values or value != self._control_values[control]:
                midi_out.send_control(self._channel, self.controls[control], value)
                self._control_values[control] = value
                print("%d: %s %s" % (self._channel, control, value))

    def play(self, step, velocity=None):
        """Interpret a step value to play a note"""        
        v = self.grace if type(step) == float else 1.0 # floats signify gracenotes
        step = int(step) if type(step) == float else step
        if isinstance(step, collections.Callable):
            step = step(self) if num_args(step) else step()
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
            velocity = 1.0 - (random() * 0.05) if velocity is None else velocity
            velocity *= self.velocity
            velocity *= v
            self.note(pitch, velocity)
            self._previous_pitch = pitch
        if step != 0:        
            self._previous_step = step            

    def note(self, pitch, velocity):
        """Override for custom MIDI behavior"""
        midi_out.send_note(self._channel, self._previous_pitch, 0)
        midi_out.send_note(self._channel, pitch, int(velocity * 127))

    def hold(self):
        """Override to add behavior to held notes, otherwise nothing"""
        pass

    def rest(self):
        """Send a MIDI off"""
        midi_out.send_note(self._channel, self._previous_pitch, 0)        

    def end(self):
        """Override to add behavior for the end of the piece, otherwise rest"""
        self.rest()

    @property
    def pattern(self):
        if isinstance(self._pattern, Tween):
            return self._pattern.value        
        return self._pattern

    @pattern.setter
    def pattern(self, pattern):
        if isinstance(pattern, Tween):
            pattern.start(self, self.pattern)
        if type(pattern) == list:
            pattern = Pattern(pattern)
        self._pattern = pattern

    @property
    def chord(self):
        if isinstance(self._chord, Tween):
            return self._chord.value        
        return self._chord

    @chord.setter
    def chord(self, chord):
        if isinstance(chord, Tween):
            chord.start(self, self.chord)
        self._chord = chord

    @property
    def velocity(self):
        if isinstance(self._velocity, Tween):
            return self._velocity.value
        return self._velocity

    @velocity.setter
    def velocity(self, velocity):
        if isinstance(velocity, Tween):
            velocity.start(self, self.velocity)
        self._velocity = velocity

    @property
    def grace(self):
        if isinstance(self._grace, Tween):
            return self._grace.value
        return self._grace

    @grace.setter
    def grace(self, grace):
        if isinstance(grace, Tween):
            grace.start(self, self.grace)
        self._grace = grace

    @property
    def rate(self):
        if isinstance(self._rate, Tween):
            return self._rate.value        
        return self._rate

    @rate.setter
    def rate(self, rate):
        if isinstance(rate, Tween):
            rate = RateTween(rate.target_value, rate.cycles, rate.signal_f) # downcast tween
            rate.start(self, self.rate)
            phase_correction = tween(89.9, rate.cycles)                     # make a tween for the subsequent phase correction
            phase_correction.start(driver, self._phase_correction)
            self.__phase_correction = phase_correction
        self._rate = rate

    @property
    def phase(self):
        if isinstance(self._phase, Tween):
            return self._phase.value        
        return self._phase

    @phase.setter
    def phase(self, phase):
        if isinstance(phase, Tween):
            phase.start(self, self.phase)                
        self._phase = phase

    @property
    def _phase_correction(self):
        if isinstance(self.__phase_correction, Tween):
            return self.__phase_correction.value        
        return self.__phase_correction

    @property
    def micro(self):
        if isinstance(self._micro, Tween):
            return self._micro.value        
        return self._micro

    @micro.setter
    def micro(self, micro):
        if isinstance(micro, Tween):
            raise NotImplementedError("Sorry")
        self._micro = micro

    def start(self):
        self._running = True

    def stop(self):
        self._running = False



def create(name, controls={}, defaults={}):

    properties = {'controls': controls}
    for control in controls:
        properties["_%s" % control] = defaults[control] if control in defaults else 0.0

        def getter(self):
            if isinstance(getattr(self, "_%s" % control), Tween):
                return getattr(self, "_%s" % control).value
            return getattr(self, "_%s" % control)

        def setter(self, value):
            if isinstance(value, Tween):
                value.start(self, getattr(self, control))
            setattr(self, "_%s" % control, value)

        properties[control] = property(getter, setter)

    T = type(name, (Thread,), properties)

    return T

    """
        control_numbers = {'res': 43}
        default_values = {'res': 69}
        Synth = create("Synth", control_numbers, default_values)
        synth = Synth(1)
        print(synth.res)

    """