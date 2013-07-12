from . import Voice, synth

class BasicMidi(Voice):

    """ Voice is suited for MIDI by default, but assumes monophonic. This handles general midi. """

    def __init__(self, channel=1):  
        Voice.__init__(self, channel)
        self.previous_pitch = 0

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity    	
        synth.send('/braid/note', self.channel, self.previous_pitch, 0)        
        synth.send('/braid/note', self.channel, pitch, int(velocity * 127))
        self.previous_pitch = pitch

    def rest(self):
        synth.send('/braid/note', self.channel, self.previous_pitch, 0)        

    def end(self):
        self.rest()        