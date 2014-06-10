#!/usr/bin/env python3

from braid import *

v1 = Voice(1, tempo=120, chord=(C, DOM))
v1.set([1, 3, 5, 7]).repeat()

driver.start()