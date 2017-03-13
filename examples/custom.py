from braid import VolcaKick, midi_out, midi_clamp

def note(self, pitch, velocity):
    midi_out.send_note(self._channel, self._previous_pitch, 0)
    midi_out.send_control(self._channel, 44, midi_clamp(velocity * 127))            
    midi_out.send_note(self._channel, pitch, 127)

VolcaKick.note = note