from . import osc_synth, Voice

class Serotonin(Voice):

    def __init__(self, channel, **params):
        # these numbers are ms, not midi
        self.attack = 20
        self.decay = 100
        self.sustain = 0.5
        self.release = 10
        self.bend = 0.0
        Voice.__init__(self, channel, **params)  

    def connect(self):
        osc_synth.connect()   

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        osc_synth.send('/braid/serotonin/note', self.channel, midi_to_freq((pitch + self.bend)), velocity, [self.attack, self.decay, self.sustain, self.release])
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