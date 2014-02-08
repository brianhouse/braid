from . import synth, Voice

class Serotonin(Voice):

    def __init__(self, channel=1):
        Voice.__init__(self, channel)
        # these numbers are ms, not midi
        self.attack = 20
        self.decay = 20
        self.sustain = 0.8
        self.release = 20
        self.bend = 0.0

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        synth.send('/braid/serotonin/note', self.channel, midi_to_freq((pitch + self.bend)), velocity, [self.attack, self.decay, self.sustain, self.release])
        self.previous_pitch = pitch

    @property
    def adsr(self):
        return self.attack, self.decay, self.sustain, self.release

    @adsr.setter
    def adsr(self, *params):
        self.attack = params[0][0]
        self.decay = params[0][1]
        self.sustain = params[0][2]
        self.release = params[0][3]


def midi_to_freq(p):
    return (2**((p - 69) / 12.0)) * 440