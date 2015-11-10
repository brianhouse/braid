#!/usr/bin/env python3

from braid import *

tempo(132)

# note that with serotonin, this is milliseconds, not MIDI, and sustain is a percentage
v1 = Voice(3, controls=config['serotonin'], attack=250, decay=200, sustain=100, release=200) 

v1.set([[1, 0, 0, 1], [7, (1, 7), 0, 0], [(0, 7), 0, 1, 0], [(7, 1), 0, 1, 0]])

play()