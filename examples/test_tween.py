#!/usr/bin/env python3

from braid import *

v1 = Voice(1, rate=0.25, chord=(C, DOM))
v1.set([1, 2]).repeat()
v1.rate.tween(4.0, 5.0).repeat(1).endwith(lambda v: v.set([0]))

driver.play()