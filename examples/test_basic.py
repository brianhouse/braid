#!/usr/bin/env python3

from braid import *

tempo(100)

v1 = Voice(1, rate=1, chord=(C, DOM))
v1.set([1, 3, 5, 7], repeat=4, endwith=lambda v: v.set([1]))
v1.chord.tween((D, DOR), 5.0, linear, repeat=True)



# A = dot, dash               [1, Z, 1, 1, 1, Z, Z, Z]
# D = dash, dot, dot          [1, 1, 1, Z, 1, Z, 1, Z, Z, Z]
# G = dash, dash, dot         [1, 1, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z]
# H = dot, dot, dot, dot      [1, Z, 1, Z, 1, Z, 1, Z, Z, Z]
# O = dash, dash, dash        [1, 1, 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z]
# R = dot, dash, dot          [1, Z, 1, 1, 1, Z, 1, Z, Z, Z]
# T = dash,                   [1, 1, 1, Z, Z, Z]
# U = dot, dot, dash          [1, Z, 1, Z, 1, 1, 1, Z, Z, Z]
# W = dot, dash, dash         [1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z]  




# WHAT =    1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, Z, Z, Z, Z, Z, Z
# HATH =    1, Z, 1, Z, 1, Z, 1, Z, Z, Z, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, Z, Z, Z, Z, Z, Z    # added two
# GOD =     1, 1, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, 1, Z, 1, Z, Z, Z, Z, Z, Z, Z
# WROUGHT = 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, 1, 1, 1, Z, Z, Z, Z, Z, Z, Z, Z, Z ## added two

# PHRASE = 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, Z, Z, Z, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, Z, Z, Z, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, 1, Z, 1, Z, Z, Z, Z, Z, Z, Z, 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, 1, 1, Z, Z, Z, 1, Z, 1, Z, 1, 1, 1, Z, Z, Z, 1, 1, 1, Z, 1, 1, 1, Z, 1, Z, Z, Z, 1, Z, 1, Z, 1, Z, 1, Z, Z, Z, 1, 1, 1, Z, Z, Z, Z, Z, Z, Z, Z, Z

# v1.set(PHRASE)

play()