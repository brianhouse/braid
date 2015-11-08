#!/usr/bin/env python3

from braid import *

v1 = Voice(1)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 6, 4
# pattern_3 = 7, 4, 7, (4, [5, 5]), 7, 4, (4, [7, 7]), 4
# pattern_4 = 5, 3, 5, (3, [2, 2]), 5, 3, (3, [2, 2]), 3

# play pattern 1 4 times, then tween to pattern 2 over 10 seconds, then just repeat pattern 2
v1.set(pattern_1, repeat=4, endwith=lambda v: ( print('first endwith'),
                                                v.set(pattern_1, repeat=True),                                                 
                                                v.pattern.tween(pattern_2, 10.0, endwith=lambda: print('done'))
                                                ))


# v1.rate.control(0, 1.0, 4.0)
# v1.pattern.control(1, pattern_1, pattern_2)

play()

