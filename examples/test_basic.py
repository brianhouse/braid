#!/usr/bin/env python3

from braid import *

tempo(100)

v1 = Voice(1, rate=1, chord=(C, DOM))
v1.set([1, 3, 5, 7]).repeat(4).endwith(lambda v: v.set([1]))

driver.play()