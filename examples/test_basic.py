#!/usr/bin/env python3

from braid import *

tempo(100)

v1 = Voice(1, rate=1, chord=(C, DOM))
def done():
    print("done!")
v1.set([1, 3, 5, 7]).endwith(done)

driver.play()