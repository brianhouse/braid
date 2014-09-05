#!/usr/bin/env python3

from braid import *

v1 = Voice(1)
v2 = Voice(2)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 6, 4
pattern_3 = 7, 4, 7, (4, [5, 5]), 7, 4, (4, [7, 7]), 4
pattern_4 = 5, 3, 5, (3, [2, 2]), 5, 3, (3, [2, 2]), 3

v1.set(pattern_1).repeat()

v1.rate.control(0, 1.0, 4.0)

driver.play()


"""

maybe it should be linked from the other direction?

v.rate.control(nanovector(2, 1.0, 4.0))
or something

that's way better.

"""