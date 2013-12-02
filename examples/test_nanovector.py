#!/usr/bin/env python3

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
from braid import *

v1 = Voice(1)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 4, 6

nanovector.init(v1)
nanovector.vectors[1][v1] = {'pattern': (pattern_1, pattern_2)}


v1.pattern = pattern_1


pattern_3 = 5, 3, 5, 3, 5, 3, 5, 3
nanovector.vectors[2][v1] = {'pattern': (pattern_2, pattern_3)}

driver.start()