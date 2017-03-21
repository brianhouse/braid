from braid import VolcaKick, VolcaBeats, midi_out, midi_clamp
from braid.notation import *

"""
Volcas dont respond to note velocity, unfortunately, but we can simulate it with these customizations.

"""

def note(self, pitch, velocity):
    midi_out.send_note(self._channel, self._previous_pitch, 0)
    midi_out.send_control(self._channel, 44, midi_clamp(velocity * 127))            
    midi_out.send_note(self._channel, pitch, 127)

VolcaKick.note = note


def note(self, pitch, velocity):
    if pitch == 36:
        velocity /= 3.0
    midi_out.send_control(self._channel, VolcaBeats.drums.index(pitch - 36) + 40, midi_clamp(velocity * 127))
    midi_out.send_note(self._channel, pitch, 127)

VolcaBeats.note = note
VolcaBeats.drums = Scale([0, 2, 7, 14, 6, 10, 3, 39, 31, 13])
# v = VolcaBeats(10)
# v.chord = C2, VolcaBeats.drums
