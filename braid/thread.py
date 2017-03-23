import collections, yaml, os
from .core import driver
from .lib import num_args, midi_out
from .signal import linear
from .notation import *
from .tween import *

class Thread(object):

    """Class definitions"""

    threads = driver.threads

    @classmethod
    def add(cls, name, default=0):
        """Add a property with tweening capability (won't send MIDI)"""
        def getter(self):
            if isinstance(getattr(self, "_%s" % name), Tween):
                return getattr(self, "_%s" % name).value
            return getattr(self, "_%s" % name)
        def setter(self, value):
            if isinstance(value, Tween):
                value.start(self, getattr(self, name))
            if value is True:
                value = 127
            if value is False:
                value = 0
            setattr(self, "_%s" % name, value)
        setattr(cls, "_%s" % name, default)
        setattr(cls, name, property(getter, setter))       

    @classmethod
    def setup(cls):
        # standard properties
        Thread.add('chord', None)
        Thread.add('velocity', 1.0)
        Thread.add('grace', 0.75)
        Thread.add('phase', 0.0)
        Thread.add('micro', None)


    """Instance definitions"""

    def __init__(self, channel, sync=True):
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
        self._triggers = []
        self._sync = sync 
        self._start_lock = False

        # specialized properties       
        self.pattern = [0]
        self.rate = 1.0        

        print("Created thread on channel %d" % self._channel)


    def update(self, delta_t):        
        """Run each tick and update the state of the Thread"""
        if not self._running:
            return
        self.update_controls()
        self._cycles += delta_t * self.rate * driver.rate
        if self._sync and isinstance(self._rate, Tween):
            pc = self._rate.get_phase()
            if pc is not None:
                self.__phase_correction.target_value = pc
        p = (self._cycles + self.phase + self._phase_correction) % 1.0  
        if self.micro is not None:
            p = self.micro(p)
        i = int(p * len(self._steps))
        if i != self._index or (len(self._steps) == 1 and int(self._cycles) != self._last_edge): # contingency for whole notes
            if self._start_lock:
                self._index = i
            else:
                self._index = (self._index + 1) % len(self._steps) # dont skip steps
            if self._index == 0:
                self.update_triggers()
                if isinstance(self.pattern, Tween): # pattern tweens only happen on an edge
                    pattern = self.pattern.value()
                else:
                    pattern = self.pattern
                self._steps = pattern.resolve() # new patterns kick in here
            if self._start_lock:
                self._start_lock = False
            else:
                step = self._steps[self._index]
                self.play(step)
        self._last_edge = int(self._cycles)

    def update_controls(self):
        """Check if MIDI attributes have changed, and if so send"""
        if not hasattr(self, "controls"):
            return
        for control in self.controls:
            value = int(getattr(self, control))
            if control not in self._control_values or value != self._control_values[control]:
                midi_out.send_control(self._channel, midi_clamp(self.controls[control]), value)
                self._control_values[control] = value
                print("%d: %s %s" % (self._channel, control, value))

    def update_triggers(self):
        """Check trigger functions a fire as necessary"""
        for trigger in self._triggers:
            trigger[1] -= 1
            if trigger[1] == 0:
                if num_args(trigger[0]):
                    trigger[0](self)
                else:
                    trigger[0]()
        self._triggers = [trigger for trigger in self._triggers if trigger[1] > 0]

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
                try:
                    pitch = root + scale[step]
                except ScaleError as e:
                    print(e)
                    return
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
        midi_out.send_note(self._channel, pitch, midi_clamp(velocity * 127))

    def hold(self):
        """Override to add behavior to held notes, otherwise nothing"""
        pass

    def rest(self):
        """Send a MIDI off"""
        midi_out.send_note(self._channel, self._previous_pitch, 0)        

    def end(self):
        """Override to add behavior for the end of the piece, otherwise rest"""
        self.rest()             


    """Specialized parameters"""

    @property
    def pattern(self):
        if isinstance(self._pattern, Tween):
            return self._pattern.value        
        return self._pattern

    @pattern.setter
    def pattern(self, pattern):
        if isinstance(pattern, Tween):
            pattern.start(self, self.pattern)
        else:
            pattern = Pattern(pattern)
        self._pattern = pattern

    @property
    def rate(self):
        if isinstance(self._rate, Tween):
            return self._rate.value        
        return self._rate

    @rate.setter
    def rate(self, rate):
        if isinstance(rate, Tween):
            rate = RateTween(rate.target_value, rate.cycles, rate.signal_f)         # downcast tween
            if self._sync:
                def rt():
                    rate.start(self, self.rate)
                    phase_correction = tween(89.9, rate.cycles)                     # make a tween for the subsequent phase correction
                    phase_correction.start(driver, self._phase_correction)
                    self.__phase_correction = phase_correction
                    self._rate = rate
                self.trigger(rt)                                                    # this wont work unless it happens on an edge, and we need to do that here unlike other tweens
                return
            else:
                rate.start(self, self.rate)
        self._rate = rate

    @property
    def _phase_correction(self):
        if isinstance(self.__phase_correction, Tween):
            return self.__phase_correction.value        
        return self.__phase_correction


    """Sequencing"""

    def start(self, thread=None):
        self._running = True
        if thread is not None:
            self._cycles = thread._cycles
            self._last_edge = 0
            self._index = -1
            self._start_lock = True
        else:
            self._cycles = 0.0
            self._last_edge = 0
            self._index = -1
        print("Thread started on channel %s" % self._channel)

    def stop(self):
        self._running = False
        self.end()

    def trigger(self, f, cycles=0):
        self._triggers.append([f, cycles + 1])


def midi_clamp(value):
    """Clamp value to int between 0-127"""
    if value < 0:
        value = 0
    if value > 127:
        value = 127
    return int(value)


def make(controls={}, defaults={}):
    """Make a Thread with MIDI control values and defaults (will send MIDI)"""
    name = "T%s" % str(random())[-4:]           # name doesn't really do anything
    T = type(name, (Thread,), {})    
    T.add('controls', controls)
    for control in controls:
        T.add(control, defaults[control] if control in defaults else 0)    # mid-level for knobs, off for switches
    return T

Thread.setup()

"""Create all synths in config file--look in the directory above the braid module, and in the current directory"""
synths = {}
try:
    with open(os.path.join(os.path.dirname(__file__), "..", "synths.yaml")) as f:
        synths.update(yaml.load(f))
except FileNotFoundError as e:
    pass
try:
    with open(os.path.join(os.getcwd(), "synths.yaml")) as f:
        synths.update(yaml.load(f))
except FileNotFoundError as e:
    pass
if len(synths):
    for synth, params in synths.items():
        controls = params['controls']
        defaults = params['defaults']
        try:
            exec("%s = make(controls, defaults)" % synth)
        except Exception as e:
            print("WARNING: failed to load %s" % synth, e)
        else:
            print("Loaded %s" % synth)
