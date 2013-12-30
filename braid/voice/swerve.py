from . import Voice, synth

class Swerve(Voice):

    def __init__(self, channel=1, continuous=False):
        Voice.__init__(self, channel, continuous)
        self._reverb = [1.0, 0.0, 0.0, 0.0, 0.0]     # dry, wet, roomsize, damping, width
        self.pan = 0.5        
        self.synth = 'cycle'
        self.attack = 30
        self.decay = 300
        self.glide = 5

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity        
        synth.send('/braid/note', self.channel, midi_to_freq(pitch), velocity, self.pan, self.synth, self.attack, self.decay, self.glide)

    def rest(self):
        pass

    def send_params(self):
        synth.send('/braid/params', self.channel, self.velocity, self.pan)

    @property
    def reverb(self):
        return self._reverb

    @reverb.setter
    def reverb(self, params):
        self._reverb = list(params)
        synth.send('/braid/reverb', self.channel, *params)


def midi_to_freq(p):
    return (2**((p - 69) / 12.0)) * 440        