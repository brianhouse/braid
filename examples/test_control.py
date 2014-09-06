#!/usr/bin/env python3

from braid import *

v1 = Voice(1)
# v2 = Voice(2)

pattern_1 = 1, 3, 5, 7
pattern_2 = 2, 6, 4
# pattern_3 = 7, 4, 7, (4, [5, 5]), 7, 4, (4, [7, 7]), 4
# pattern_4 = 5, 3, 5, (3, [2, 2]), 5, 3, (3, [2, 2]), 3

# v1.set(pattern_1).repeat(4).endwith(lambda v: ( v.set(pattern_1).repeat(), 
#                                                 print('tween'),
#                                                 v.pattern.tween(pattern_2, 10.0).endwith(lambda: print('done'))
#                                                 ))


# ok, the real question is whether tweened should persist, or pick up the sequence where they left off
# this makes things a little tricky
# I think they need to persist

v1.set(pattern_1)
v1.rate.control(0, 1.0, 4.0)
v1.pattern.control(1, pattern_1, pattern_2)


# doafter
# in a way, I wonder if repeat is useful. chains of repeat(4), endwith are maybe better done with sequences
# eh, whatever
# doafter keeps repeating if it's repeating, helpful for starting tweens
# should repeat be on by default?

play()

