try:
    from . import Anode, Triode, VolcaKick, VolcaBeats, VolcaDrum, midi_out, midi_clamp
except ImportError as e:
    print("Custom Threads failed: %s" % e)
else:

    from braid.notation import *

    """
    Volcas dont respond to note velocity, unfortunately, but we can simulate it with these customizations.

    Would rather not have this in the module itself, but so be it.

    """

    def note(self, pitch, velocity):
        midi_out.send_note(self._channel, self._previous_pitch, 0)
        midi_out.send_control(self._channel, 44, midi_clamp(velocity * 127))            
        midi_out.send_note(self._channel, pitch, 127)
        self._previous_pitch = pitch
    VolcaKick.note = note


    def note(self, pitch, velocity):
        if pitch == 36:
            velocity /= 3.0
        try:
            midi_out.send_control(self._channel, DRM.index(pitch - 36) + 40, midi_clamp(velocity * 127))
        except ValueError:
            print("(warning: note doesn't exist)")
        midi_out.send_note(self._channel, pitch, 127)
        self._previous_pitch = pitch
    VolcaBeats.note = note


    def note(self, pitch, velocity):
        midi_out.send_control(self._channel, 19, midi_clamp(velocity * 127))            
        midi_out.send_note(self._channel, pitch, 127)
        self._previous_pitch = pitch
    VolcaDrum.note = note