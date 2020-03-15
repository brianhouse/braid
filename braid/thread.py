import collections, yaml, os, math
from .core import driver, LIVECODING
from . import num_args, midi_out
from .signal import linear
from .notation import *
from .tween import *


class Thread(object):
    """Class definitions"""

    threads = driver.threads

    @classmethod
    def add_attr(cls, name, default=0):
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
        Thread.add_attr('transpose', 0)
        Thread.add_attr('transpose_step_len', 1)
        Thread.add_attr('chord', None)
        Thread.add_attr('velocity', 1.0)
        Thread.add_attr('grace', 0.75)
        Thread.add_attr('phase', 0.0)
        Thread.add_attr('micro', None)
        Thread.add_attr('controls', None)

    """Instance definitions"""

    def __setattr__(self, key, value):
        if not key == "_attr_frozen" and self._attr_frozen and not hasattr(self, key):
            print("[No property %s]" % key)
            return
        try:
            object.__setattr__(self, key, value)
        except Exception as e:
            print("[Error: \"%s\"]" % e)

    def __getattr__(self, key):
        print("[No property %s]" % key)
        return None

    def add(self, param, default=0):
        self._attr_frozen = False
        self.__class__.add_attr(param, default)
        self._attr_frozen = True

    def __init__(self, channel, sync=True):
        Thread.threads.append(self)

        # private reference variables
        self._attr_frozen = False
        self._channel = channel
        self._running = False
        self._cycles = 0.0
        self._base_phase = 0.0
        self._last_edge = 0
        self._index = -1
        self._transpose_index = -1
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
        self.keyboard = False
        self.micro = linear()

        print("[Created thread on channel %d]" % self._channel)
        self._attr_frozen = True

        if not LIVECODING:
            self.start()

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
        self._base_phase = (self._cycles + self.phase + self._phase_correction) % 1.0
        if self.micro is not None:
            self._base_phase = self.micro(self._base_phase)
        i = int(self._base_phase * len(self._steps))
        if i != self._index or (
                len(self._steps) == 1 and int(self._cycles) != self._last_edge):  # contingency for whole notes
            if self._start_lock:
                self._index = self._transpose_index = i
            else:
                self._index = (self._index + 1) % len(self._steps)  # dont skip steps
                if type(self.transpose) == list and not self._index % int(self.transpose_step_len):
                    self._transpose_index = (self._transpose_index + 1) % len(self.transpose)
            if self._index == 0:
                self.update_triggers()
                if isinstance(self.pattern, Tween):  # pattern tweens only happen on an edge
                    pattern = self.pattern.value()
                else:
                    pattern = self.pattern
                self._steps = pattern.resolve()  # new patterns kick in here
            if self._start_lock:
                self._start_lock = False
            else:
                step = self._steps[self._index]
                self.play(step)
        self._last_edge = int(self._cycles)

    def update_controls(self):
        """Check if MIDI attributes have changed, and if so send"""
        if not hasattr(self, "controls") or self.controls is None:
            return
        for control in self.controls:
            value = int(getattr(self, control))
            if self._channel not in self._control_values:
                self._control_values[self._channel] = {}
            if control not in self._control_values[self._channel] or value != self._control_values[self._channel][
                control]:
                midi_out.send_control(self._channel, midi_clamp(self.controls[control]), value)
                self._control_values[self._channel][control] = value
                # print("[CTRL %d: %s %s]" % (self._channel, control, value))

    def update_triggers(self):
        """Check trigger functions a fire as necessary"""
        updated = False
        for t, trigger in enumerate(self._triggers):
            trigger[3] += 1  # increment edge
            if (trigger[1] + 1) - trigger[
                3] == 0:  # have to add 1 because trigger[1] is total 'elapsed' cycles but we're counting edges
                try:
                    if num_args(trigger[0]):
                        trigger[0](self)
                    else:
                        trigger[0]()
                except Exception as e:
                    print("\n[Trigger error: %s]" % e)
                if trigger[2] is True:
                    self.trigger(trigger[0], trigger[1], True)  # create new trigger with same properties
                else:
                    trigger[2] -= 1
                    if trigger[2] > 0:
                        self.trigger(trigger[0], trigger[1], trigger[2] - 1)  # same, but decrement repeats
                self._triggers[t] = None  # clear this trigger
                updated = True
        if updated:
            self._triggers = [trigger for trigger in self._triggers if trigger is not None]

    def play(self, step, velocity=None):
        """Interpret a step value to play a note"""
        while isinstance(step, collections.Callable):
            step = step(self) if num_args(step) else step()
            self.update_controls()  # to handle note-level CC changes
        if type(step) == float:  # use the part after the decimal to scale velocity
            v = step % 1
            v = self.grace if v == 0.0 else v  # if decimal part is 0.0 fallback to self.grace to scale velocity
        else:
            v = 1.0
        step = int(step) if type(step) == float else step
        if step == Z:
            self.rest()
        elif step == 0 or step is None:
            self.hold()
        else:
            transposition = self.transpose
            if type(transposition) == list:
                transposition = transposition[self._transpose_index % len(transposition)]
            while type(transposition) == tuple:
                transposition = choice(transposition)
            if self.chord is None:
                pitch = step + int(transposition)
            else:
                root, scale = self.chord
                try:
                    pitch = scale.quantize(root + int(transposition) + scale[step])
                except ScaleError as e:
                    print("\n[Error: %s]" % e)
                    return
            velocity = 1.0 - (random() * 0.05) if velocity is None else velocity
            velocity *= self.velocity
            velocity *= v
            self.note(pitch, velocity)
        if step != 0:
            self._previous_step = step

    def note(self, pitch, velocity):
        """Override for custom MIDI behavior"""
        if self.keyboard is True and velocity == 0:
            midi_out.send_note(self._channel, pitch, 0)
        else:
            if self.keyboard is not True:
                midi_out.send_note(self._channel, self._previous_pitch, 0)
            midi_out.send_note(self._channel, pitch, midi_clamp(velocity * 127))
            self._previous_pitch = pitch

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

    # Convenience methods for getting/setting chord root
    # Does NOT support tweening, for that use chord or transpose
    @property
    def root(self):
        if isinstance(self.chord, Tween):
            return self.chord.value[0]
        return self.chord[0] if self.chord else None

    @root.setter
    def root(self, root):
        if isinstance(self.chord, Tween):
            scale = self.chord.value[1]
        else:
            scale = self.chord[1] if self.chord else CHR  # Default to Chromatic Scale
        self.chord = root, scale

    # Convenience methods for getting/setting chord scale
    # Does NOT support tweening, for that use chord
    @property
    def scale(self):
        if isinstance(self.chord, Tween):
            return self.chord.value[1]
        return self.chord[1] if self.chord else None

    @scale.setter
    def scale(self, scale):
        if isinstance(self.chord, Tween):
            root = self.chord.value[0]
        else:
            root = self.chord[0] if self.chord else C  # Default to Middle C
        self.chord = root, scale

    @property
    def channel(self):
        return self._channel

    @channel.setter
    def channel(self, channel):
        self._channel = channel

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
            rate = RateTween(rate.target_value, rate.cycles, rate.signal_f, rate.end_f, rate.osc)  # downcast tween
            if self._sync:
                def rt():
                    rate.start(self, self.rate)
                    phase_correction = tween(89.9, rate.cycles)  # make a tween for the subsequent phase correction
                    phase_correction.start(driver, self._phase_correction)
                    self.__phase_correction = phase_correction
                    self._rate = rate

                self.trigger(
                    rt)  # this wont work unless it happens on an edge, and we need to do that here unlike other tweens
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
            self._cycles = math.floor(thread._cycles)
            time_to_edge = (thread._cycles % 1.0) / thread.rate
            self._cycles += time_to_edge * self.rate

            self._last_edge = 0
            self._index = -1
            self._start_lock = True
        else:
            self._cycles = 0.0
            self._last_edge = 0
            self._index = -1
        print("[Thread started on channel %s]" % self._channel)

    def stop(self):
        self._running = False
        self.end()
        print("[Thread stopped on channel %s]" % self._channel)

    def trigger(self, f=None, cycles=0, repeat=0):
        if f is None and repeat is False:
            self._triggers = [trigger for trigger in self._triggers if trigger[2] is not True]  # filter repeat=True
        elif f is False:
            self._triggers = []
        else:
            try:
                assert (callable(f))
                if cycles == 0:
                    assert repeat == 0
            except AssertionError as e:
                print("\n[Bad arguments for trigger]")
            else:
                self._triggers.append([f, cycles, repeat, 0])  # last parameter is cycle edges so far


def midi_clamp(value):
    """Clamp value to int between 0-127"""
    if value < 0:
        value = 0
    if value > 127:
        value = 127
    return int(value)


def make(controls={}, defaults={}):
    """Make a Thread with MIDI control values and defaults (will send MIDI)"""
    name = "T%s" % str(random())[-4:]  # name doesn't really do anything
    T = type(name, (Thread,), {})
    T.add_attr('controls', controls)
    for control in controls:
        T.add_attr(control, defaults[control] if control in defaults else 0)  # mid-level for knobs, off for switches
    return T


Thread.setup()

"""Create all synths in config file--look in the current directory, in the directory above the braid module, and in /usr/local/braid"""
synths = {}
try:
    with open(os.path.join(os.getcwd(), "synths.yaml")) as f:
        synths.update(yaml.load(f, Loader=yaml.FullLoader))
except FileNotFoundError as e:
    pass
try:
    with open(os.path.join(os.path.dirname(__file__), "..", "synths.yaml")) as f:
        synths.update(yaml.load(f, Loader=yaml.FullLoader))
except FileNotFoundError as e:
    pass
try:
    with open("/usr/local/braid/synths.yaml") as f:
        synths.update(yaml.load(f, Loader=yaml.FullLoader))
except FileNotFoundError as e:
    pass
if len(synths):
    for synth, params in synths.items():
        try:
            controls = params['controls']
            defaults = params['defaults']
            exec("%s = make(controls, defaults)" % synth)
        except Exception as e:
            print("Warning: failed to load %s:" % synth, e)
    print("Loaded synths")
