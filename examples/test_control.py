#!/usr/bin/env python3

from braid import *

v1 = Voice(1)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 6, 4

v1.set(pattern_1)

v1.rate.control(0, 1.0, 4.0)
v1.pattern.control(1, pattern_1, pattern_2)

play()

