import subprocess
from . import synth
from .basic_midi import BasicMidi
from ..util import log

class Serotonin(BasicMidi):

    def __init__(self, channel=1):
        BasicMidi.__init__(self, channel)
        self.attack = 20
        self.decay = 20
        self.sustain = 0.8
        self.release = 20
        self.bend = 0.0

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        synth.send('/braid/note', self.channel, midi_to_freq((pitch + self.bend)), velocity, [self.attack, self.decay, self.sustain, self.release])
        self.previous_pitch = pitch


def midi_to_freq(p):
    return (2**((p - 69) / 12.0)) * 440