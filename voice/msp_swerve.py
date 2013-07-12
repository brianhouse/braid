from . import Voice, synth

class MspSwerve(Voice):

    def __init__(self, channel=1, continuous=False):
        Voice.__init__(self, channel, continuous)
        self._reverb = [1.0, 0.0, 0.0, 0.0, 0.0]     
        self._angle = 0.0
        self.pan = 0.5        
        self.fade = 0.0
        self.synth = 'cycle'
        self.attack = 5
        self.sustain = 0
        self.release = 200
        self.glide = 5
        self.radius = 0.5 # is fully to the edge; 1.0 will make hard speakers 

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity        
        synth.send('/braid/note', self.channel, pitch, velocity, self.pan, self.fade, self.synth, self.attack, self.sustain, self.release, self.glide)

    def send_params(self):
        synth.send('/braid/params', self.channel, self.velocity, self.pan, self.fade)

    @property
    def reverb(self):
        return self._reverb

    @reverb.setter
    def reverb(self, params):
        self._reverb = list(params)
        synth.send('/braid/reverb', self.channel, *params)

    @property
    def angle(self):
        return self._angle

    @angle.setter
    def angle(self, degrees):
        self._angle = degrees % 360
        degrees -= 90.0    # so 0 is front and center
        radians = degrees * (math.pi / 180.0)
        self.pan = 0.5 + (self.radius * math.cos(radians))
        self.fade = 0.5 + (self.radius * math.sin(radians))

