#!/usr/bin/env python3

from braid import *


v1 = Voice(1)
v2 = Voice(2)


pattern_1 = 1, 3, 5, 7
pattern_4 = 5, 3, 5, (3, [2, 2]), 5, 3, (3, [2, 2]), 3



v1.pattern = pattern_1


pattern_2 = 2, 6, 4
pattern_3 = 7, 4, 7, (4, [5, 5]), 7, 4, (4, [7, 7]), 4

v2.pattern = pattern_2



nanovector.init(v1)
nanovector.vectors[2][v2] = {'velocity': (0.0, 1.0)}
nanovector.vectors[3][v1] = {'pattern': (pattern_1, pattern_4)}
nanovector.vectors[3][v2] = {'pattern': (pattern_2, pattern_3)}

v2.velocity = 0.0

driver.start()