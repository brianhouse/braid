from attribute import Attribute

class Voice(Attribute):

    voices = driver.voices

    def __init__(self, channel, **params):
        self.channel = channel
        self._value = [0]   # pattern
        self.chord = Attribute(C, MAJ)
        self.velocity = Attribute(1.0)
        self.tempo = Attribute(120)
        self.phase = Attribute(0.0)
        self.mute = False
        for param, value in params.items():
            if hasattr(self, param):
                setattr(self, param, value)
            else:
                raise AttributeError("Voice has no property %s" % param)    
        for control in self.controls: 
            setattr(self, control, 0)

