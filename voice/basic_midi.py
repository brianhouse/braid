from . import Voice, synth

class BasicMidi(Voice):

    def __init__(self, channel=1):  
        Voice.__init__(self, channel)
        self.previous_pitch = 0

    def play(self, pitch, velocity):
        synth.send('/braid/note', self.channel, self.previous_pitch, 0)        
        synth.send('/braid/note', self.channel, pitch, int(velocity * 127))
        self.previous_pitch = pitch
