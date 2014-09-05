#!/usr/bin/env python3

from braid import *

tempo(100)

v1 = Voice(1, rate=1, chord=(C, DOM))

v1.set([1, 3, 5, 7]).endwith(lambda: v1.set([2, 4, 6, 8]).endwith(lambda: print("done")))

driver.play()