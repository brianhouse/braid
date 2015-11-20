#!/usr/bin/env python3

from braid import *

tempo(132)

# note that with serotonin, this is milliseconds, not MIDI, and sustain is a percentage
v1 = Voice(3, controls=config['serotonin'], attack=5, decay=200, sustain=0, release=0) 
v2 = Voice(4, controls=config['serotonin'], attack=5, decay=200, sustain=0, release=0) 

v1.set([[1, 0, 0, 1], [7, (1, 7), 0, 0], [(0, 7), 0, 1, 0], [(7, 1), 0, 1, 0]])
v1.set([1, 0, 1, 0]*4)
v2.set([0, 5, 0, 5]*4)

play()