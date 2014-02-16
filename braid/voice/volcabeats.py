from . import synth, Voice
from ..notation import Scale, C2

class Volcabeats(Voice):

    def __init__(self):
        Voice.__init__(self, 10)
        # kick = 36 #
        # snare = 38 # 2
        # lotom = 43 # 7
        # hitom = 50 # 14
        # clhat = 42 # 6
        # ophat = 46 # 10
        # clap = 39   # 3
        # claves = 75 # 39
        # agogo = 67 # 31
        # crash = 49  # 13
        drums = Scale([0, 2, 7, 14, 6, 10, 3, 39, 31, 13])
        self.chord = C2, drums

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        velocity = 1
        synth.send('/braid/note', self.channel, pitch, int(velocity * 127))
