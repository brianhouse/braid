#!/usr/bin/env python3

from braid import *

tempo(120)

v1 = Voice(1, rate=1, chord=(C, DOM))
v1.set([1, 3, 5, 7], repeat=4, endwith=lambda v: v.set([1]))
v1.chord.tween((D, DOR), 2, linear, repeat=2)

play()
