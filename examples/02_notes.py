#!/usr/bin/env python3

from braid import *

v1 = Thread(10)


# MIDI pitch value can be specified by MIDI number or with note-name aliases between C0 and B8
# C is an alias for C4, likewise for the rest of the middle octave

v1.pattern = C, C, C, C
# is the same as
v1.pattern = 60, 60, 60, 60



# rests are specified with a Z
v1.pattern = C, Z, Z, C


v1.start()

start()
