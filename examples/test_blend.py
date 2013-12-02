#!/usr/bin/env python3

from braid import *

v1 = Voice(1)

v1.pattern = 1, 3, 5, 7
v1.pattern = 1, 2, 3
v1.pattern = CrossPattern([1, 3, 5, 7], [1, 2, 3], 0.5)

# v1.tween('pattern', [1, 3, 5, 7], [1, 2, 3], 10)

driver.start()