import collections
from .core import driver
from .util import log, num_args, midi_out
from .notation import *
from .tween import *
from .pattern import Pattern


class Thread(object):

    threads = driver.threads

    def __init__(self, channel):
        Thread.threads.append(self)        
        
        # settable/tweenable attributes
        self.rate = 1.0
        self.pattern = [0]
        self.chord = C, MAJ
        self.velocity = 1.0        

        # private reference variables
        self._channel = channel
        self._running = False
        self._cycles = 0.0
        self._last_edge = 0
        self._index = -1      
        self._steps = [0]
        self._previous_pitch = 60
        self._previous_step = 1
        self._syncee = None


    def update(self, delta_t):        
        """Run each tick and update the state of the Thread"""
        if not self._running:
            return
        self.update_control()
        self._cycles += delta_t * self.rate * driver.rate
        p = self._cycles % 1.0        
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
        pass
    #     # check if MIDI attributes have changed, and send if so
    #     # this can potentially happen with any step, so check before plays
    #     # it can also happen if a note is not played, so check otherwise too ##
    #     if not self.mute:
    #         for control in self.controls:
    #             value = int(getattr(self, control).value)
    #             if control not in self.control_values or value != self.control_values[control]:
    #                 midi_out.send_control(self.channel.value, self.controls[control], value)
    #                 self.control_values[control] = value
    #                 log.info("%d: %s %s" % (self.channel.value, control, value))

    def play(self, step, velocity=None):
        """Interpret a step value to play a note"""
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
            pattern.start(self, self._pattern)
        if type(pattern) == list:
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
            rate.start(self, self._rate)                
        self._rate = rate

    @property
    def velocity(self):
        if isinstance(self._velocity, Tween):
            return self._velocity.value
        return self._velocity

    @velocity.setter
    def velocity(self, velocity):
        if isinstance(velocity, Tween):
            velocity.start(self, self._velocity)
        self._velocity = velocity

    @property
    def chord(self):
        if isinstance(self._chord, Tween):
            return self._chord.value        
        return self._chord

    @chord.setter
    def chord(self, chord):
        if isinstance(chord, Tween):
            chord.start(self, self._chord)        
        self._chord = chord

    def start(self):
        self._running = True

    def stop(self):
        self._running = False

    def sync(self, thread):
        self._syncee = thread


class Drums(Thread):

    def __init__(self):
        super(Drums, self).__init__(10)
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
        self.chord = C2, self.drums

    def note(self, pitch, velocity):
        midi_out.send_control(self._channel, self.drums.index(pitch - 36) + 40, int(velocity * 127))
        midi_out.send_note(self._channel, pitch, int(velocity * 127))
