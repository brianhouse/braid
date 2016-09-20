#!/usr/bin/env python3

import time
from braid import *
from braid.lib import midi 
midi.log_midi = False

# # test tweening
# tone1 = Thread(1)
# tone1.pattern = [1, 2, 2, 2]
# tone1.chord = C2, MAJ
# tone1.rate = 0.5
# tone1.start()
# tone1.rate = tween(1, 8)

# tone2 = Thread(2)
# tone2.pattern = [1, 2, 2, 2]
# tone2.rate = 2.0
# tone2.start()
# tone2.rate = tween(1, 8)


# # test gracenotes
# tone1 = Thread(1)
# tone1.pattern = [1, 1., 1., 1.]
# tone1.grace = 1.0
# tone1.grace = tween(0.0, 8)
# tone1.start()


# # test microrhythms
# tone1 = Drums()
# tone1.pattern = [[1, 0, 5, 0], [1, 0, 5, 0], [2, 0, 5, 0], [6, 0, 5, 0]]
# tone1.pattern = [1, 1, 0, 1]
# tone1.start()

# tone2 = Drums()
# tone2.pattern = [0, 0, 2, 0]
# tone2.micro = ease_test
# tone2.start()


# tone1 = Thread(20)
# tone1.pattern = euc(8, 5)
# print(tone1.pattern)
# tone1.start()

# tone2 = Thread(42)
# tone2.pattern = euc(7, 4, 4)
# print(tone2.pattern)
# # tone2.start()

# tone4 = Thread(43)
# tone4.chord = C2, DOR
# tone4.pattern = euc(5, 3, 2)
# print(tone4.pattern)
# tone4.rate = 0.25
# # tone4.start()

# control_numbers = {'magnus': 43}
# default_values = {'magnus': 43}
# Farts = create("Farts", control_numbers, default_values)
# print(Farts)
# print(dir(Farts))
# f = Farts(1)
# print(f.magnus)
# f.magnus = tween(120, 2)
# f.pattern = [1]
# f.start()

# v = Thread(1, controls={'farts': 34})
# print(v._farts)
# print(v.farts)
# print(v.grace)

sero = Sero(1)
sero.adsr = 1, 1, 0.8, 10
sero.adsr = tween((10, 10, 10, 256), 8)
sero.start()

start()