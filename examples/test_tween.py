#!/usr/bin/env python3

from braid import *

tempo(90)

v3 = Voice(5, controls=config['serotonin'], attack=1, decay=1, sustain=0, release=0) 
v4 = Voice(6, controls=config['serotonin'], attack=1, decay=1, sustain=0, release=0) 

v3.set([1, 1, 1, 1]*2)
v4.set([4, 4, 4]*2)


v3.pattern.tween([1, 1, 1, 1, 1, 1, 1, 1]*2, 4)
v4.pattern.tween([4, 4, 4, 4, 4, 4]*2, 4)

play()
