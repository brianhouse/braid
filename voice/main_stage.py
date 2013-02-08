from . import Voice, synth

class MainStage(Voice):

    def __init__(self, channel=1, cycles=1):  
        Voice.__init__(self, channel, cycles)

    def play(self, pitch, velocity):
        synth.send('/braid/note', self.channel, pitch, int(velocity * 127))
