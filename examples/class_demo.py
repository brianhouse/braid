#!/usr/bin/env python3

from braid import *

v1 = Voice(1)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 4, 6
pattern_3 = 5, 3, 5, (3, [2, 2]), 5, 3, (5, [2, 2]), 3

v1.pattern = pattern_3

nanovector.init(v1)
nanovector.vectors[1][v1] = {'pattern': (pattern_1, pattern_2)}
nanovector.vectors[2][v1] = {'pattern': (pattern_2, pattern_3)}

driver.start()

