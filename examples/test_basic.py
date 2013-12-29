#!/usr/bin/env python3

from braid import *

v1 = Voice(1)
v1.tempo = 120
v1.chord = C, DOM
v1.pattern = 1, 3, 5, 7

driver.start()