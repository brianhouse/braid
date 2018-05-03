#!/usr/bin/env python3

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
from braid import *

d1 = VolcaBeats(10)
d1.chord = K, DRM
d1.start()

d2 = VolcaBeats(10)
d2.chord = K, DRM
d2.start()

d3 = VolcaBeats(10)
d3.chord = K, DRM
d3.start()

d4 = VolcaBeats(10)
d4.chord = K, DRM
d4.start()

d1.pattern = [[3, 0, 0, 3], [0, [3, 0, 0, 0], [0, 0, 0, 0], 0]]
d1.grace = 0.75
d2.pattern = 0, [0, 0, 0, 2.], 0, [2, 0, 0, 0]
d2.grace = 0.25
d2.micro = ease_in
d3.pattern = 7., 9, 7., 2, 7., 0
d3.micro = ease_out_in
d3.grace = 0.75
d4.pattern = [[0, 0, 4, 10], 0]
d4.phase = 1/12
d4.crash_pcm = 95

tempo(160)

play()