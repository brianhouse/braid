from . import midi_synth, Voice
from ..notation import Scale, C2

class Volcabeats(Voice):

    def __init__(self, **params):
        Voice.__init__(self, 10, **params)
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

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        midi_synth.send_control(self.channel, self.drums.index(pitch - 36) + 40, int(velocity * 127))
        midi_synth.send_note(self.channel, pitch, 127)
