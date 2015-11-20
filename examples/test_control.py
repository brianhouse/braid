#!/usr/bin/env python3

from braid import *

v1 = Voice(1)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 6, 4

v1.set(pattern_1)

v1.rate.control(0, 1.0, 4.0)
v1.pattern.control(1, pattern_1, pattern_2)

play()



"""

Also, this works:

def set_controls():
    midi_in.callback(33, beat_intro_2)
    midi_in.callback(34, beat_intro_3)
    midi_in.callback(35, unison_separate)
    midi_in.callback(36, beat_lockup)
    midi_in.callback(37, melody_tween)
    midi_in.callback(38, melody2)
    midi_in.callback(39, melody3)
    midi_in.callback(40, melody4)
    midi_in.callback(41, unravel)

"""