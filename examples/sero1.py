#!/usr/bin/env python3

from braid import *

print(driver.rate)

v1 = Sero(3)
v1.chord = None
v1.pattern = euc(5, 3, G7)
v1.adsr = 1, 1, 0, 0
v1.rate = 1.0
# v1.rate = tween(2.0, 32)
v1.start()

v2 = Sero(4)
v2.chord = None
v2.pattern = euc(7, 4, G7)
v2.adsr = 1, 1, 0, 0
v2.rate = 1.0
# v2.rate = tween(0.25, 32)
v2.start()

bass = Sero(7)
bass.chord = C2, MAJ
bass.pattern = [1, 1]
bass.adsr = 1, 20, 0, 0
bass.rate = 1.0
bass.start()


start()

"""
plan -- work on serotonin kick hits. if you can get that, it works. it's pitched clicks that are physically maleable, and that's not bad.

"""