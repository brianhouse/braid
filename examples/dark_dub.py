#!/usr/bin/env python3

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
from braid import *

t = Thread(1)
t.chord = E, DOR
t.pattern = [1, 3, 5, 7] * 3
t.velocity = 0
t.start()

d = Thread(2)
d.chord = E, DOR
d.pattern = [7, 5, 3, 1, 2, 4] * 2
d.velocity = 0
d.start()

l = Thread(3)
l.chord = E1, DOR
l.pattern = [([(8, 1), 0, 0, 7], [0, 2, 0, 0])]
l.velocity = 1.0
l.phase = 1/12
l.start()

r = Thread(10)
r.pattern = 0, (0, [K, K, 0, 0]), 0, S, 0, (0, 0, O)
r.velocity = 0.75

def fade_arps():
    t.velocity = tween(0.75, 4)
    d.velocity = tween(0.75, 4)

trigger(fade_arps, 4)
trigger(r.start, 16)

play()