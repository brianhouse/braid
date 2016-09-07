import collections
from .core import driver
from .util import log, num_args, midi_out
from .signal import linear
from .notation import *
from .tween import *
from .sync import *


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
        self._sync = None

        # settable/tweenable attributes        
        self.pattern = [0]
        self.chord = C, MAJ
        self.velocity = 1.0            
        self.rate = 1.0
        self.phase = 0.0    


    def update(self, delta_t):        
        """Run each tick and update the state of the Thread"""
        if not self._running:
            return
        self.update_control()
        if self.sync is not None:
            self._rate.target_value = self.sync.syncee.rate
        self._cycles += delta_t * self.rate * driver.rate
        if self.sync is not None:        
            self._phase = self.sync.get_phase()
            print(self.phase)
        p = (self._cycles + self.phase) % 1.0        
        i = int(p * len(self._steps))
        if i != self._index or (len(self._steps) == 1 and int(self._cycles) != self._last_edge): # contingency for whole notes
            self._index = (self._index + 1) % len(self._steps) # dont skip steps
            if self._index == 0:
                print(self._channel, self._cycles, self._cycles + self.phase, self.phase)
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
        v = 0.75 if type(step) == float else 1.0 # floats signify gracenotes
        step = int(step)
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
            pattern.start(self, self._pattern)
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
            chord.start(self, self._chord)        
        self._chord = chord

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
    def rate(self):
        if isinstance(self._rate, Tween):
            return self._rate.value        
        return self._rate

    @rate.setter
    def rate(self, rate):
        if self.sync is not None:
            return
        if isinstance(rate, Tween):
            start_value = self._rate.value if isinstance(self._rate, Tween) else self._rate ## fix with this
            rate.start(self, self._rate)                ## if _rate is a tween, this breaks
        self._rate = rate

    @property
    def phase(self):
        if isinstance(self._phase, Tween):
            return self._phase.value        
        return self._phase

    @phase.setter
    def phase(self, phase):
        if self.sync is not None:
            return        
        if isinstance(phase, Tween):
            phase.start(self, self._phase)                
        self._phase = phase

    @property
    def sync(self):
        return self._sync

    @sync.setter
    def sync(self, thread):
        if thread is None:
            self._sync = None
            return
        if not isinstance(thread, Tween):   # here, we want it to track the syncee immediately
            self.rate = tween(thread.rate, 0)
            self.phase = tween(thread.phase, 0)            
            return
        # in this case, the passed Tween is just a container to pass variables
        print("making a sync")
        container = thread
        syncee = container.target_value
        cycles, signal_f = container.cycles, container.signal_f
        self._sync = Sync(self, syncee, cycles)
        print("--> made sync object")        
        start_rate = self._rate
        self._rate = tween(syncee.rate, cycles)  # create tween for rate
        print("--> made rate tween")
        self._rate.start(syncee, start_rate)      # ...but base it on the _syncee's_ cycles
        print("--> sync thread", self._rate.thread)

    def start(self):
        self._running = True

    def stop(self):
        self._running = False


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
