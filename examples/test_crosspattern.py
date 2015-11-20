#!/usr/bin/env python3

from braid import *

v1 = Voice(1)

p1 = 1, 3, 5, 7
p2 = 1, 2, 3
v1.set(CrossPattern([1, 3, 5, 7], [1, 2, 3], 0.5))

play()