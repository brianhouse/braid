from .thread import Thread
from .tween import *
from .notation import *
from .lib import midi_out

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



class Sero(Thread):

    def __init__(self, channel):
        super(Sero, self).__init__(channel)
        self._attack = 0
        self._decay = 0
        self._sustain = 0   # percentage out of 100
        self._release = 0
        self.controls = {'attack': 10, 'decay': 11, 'sustain': 12, 'release': 13}

    @property
    def attack(self):
        if isinstance(self._attack, Tween):
            return self._attack.value
        return self._attack

    @property
    def decay(self):
        if isinstance(self._decay, Tween):
            return self._decay.value
        return self._decay

    @property
    def sustain(self):
        if isinstance(self._sustain, Tween):
            return self._sustain.value
        return self._sustain

    @property
    def release(self):
        if isinstance(self._release, Tween):
            return self._release.value
        return self._release

    @property
    def adsr(self):
        return self.attack, self.sustain, self.decay, self.release

    @adsr.setter
    def adsr(self, adsr):
        if isinstance(adsr, Tween):
            attack, decay, sustain, release = adsr.target_value
            attack = tween(attack, adsr.cycles, adsr.signal_f)
            attack.start(self, self.attack)
            decay = tween(decay, adsr.cycles, adsr.signal_f)
            decay.start(self, self.decay)
            sustain = tween(sustain, adsr.cycles, adsr.signal_f)
            sustain.start(self, self.sustain)
            release = tween(release, adsr.cycles, adsr.signal_f)
            release.start(self, self.release)
            adsr = attack, sustain, decay, release
        self._attack, self._decay, self._sustain, self._release = adsr
