#!/usr/bin/env python3

from braid import *
from extensions.volca import Volca

tempo(132)

v1 = Volca()
v2 = Volca()
v1.set([1, 0, 0, 1], [7, (1, 7), 0, 0], [(0, 7), 0, 1, 0])
# v2.set([[8, 0, (8, 5), 0], [8, 0, (8, 5)]] * 2)

play()