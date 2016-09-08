#!/usr/bin/env python3

import time
from braid import *
from braid.util import midi 

midi.log_midi = False

# test tweening
tone1 = Thread(1)
tone1.pattern = [1, 2, 2, 2]
tone1.chord = C2, MAJ
tone1.rate = 1.0
tone1.start()

tone2 = Thread(2)
tone2.pattern = [1, 2, 2, 2]
tone2.rate = 0.46827
tone2.start()
tone2.sync = tween(tone1, 8)



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


start()