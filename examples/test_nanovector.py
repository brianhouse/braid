#!/usr/bin/env python3

from braid import *


v1 = Voice(1)


# 1 pattern
# between two of same length
# between two of different length
# add the double time
# with sub breaks

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 4, 6

nanovector.init(v1)
nanovector.vectors[1][v1] = {'pattern': (pattern_1, pattern_2)}




pattern_3 = 5, 3, 5, 3, 5, 3, 5, 3
nanovector.vectors[2][v1] = {'pattern': (pattern_2, pattern_3)}


pattern_4 = 5, 3, 5, (3, [2, 2]), 5, 3, (3, [2, 2]), 3
nanovector.vectors[3][v1] = {'pattern': (pattern_1, pattern_4)}


v1.pattern = pattern_4
driver.start()