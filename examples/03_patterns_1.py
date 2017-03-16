#!/usr/bin/env python3

from braid import *

t = Thread(1)
t.chord = C, DOR
t.pattern = 1, 1, 1, 1
t.start()

# once started, a thread repeats its pattern
# each repetition is called a cycle
# each cycle is subdivided evenly by the steps in the pattern

# 4/4
t.pattern = 1, 0, 1, 0

# 3/4
t.pattern = 1, 0, 1

# 7/8
t.pattern = 1, 1, 0, 1, 1, 0, 1

# each step of a pattern can be a note
# ...but it can also be a subdivision

t.pattern = 1, [1, 1], 1, 1
t.pattern = 1, [1, 1], 1, [1, 1, 1]

# ...or a subdivision of subdivisions, ad finitum
t.pattern = 1, [2, [1., 1.]], [3, [2, 1], 1.], [5, [4., 3.]]

# so brackets indicate subdivisions
# parens, however, indicate a choice
t.pattern = 1, (2, 3, 4), 1, 1

# these can be combined to create intricate markov chains
# K, S, H, O are aliases for 36, 38, 42, 46
t = Thread(10)  # drums
tempo(132)      

t.pattern = [([K, H], [K, K]), (K, O)], (H, [H, K]), (S, [S, (O, K), 0, g(S)]), [[H, H], ([H, H], O, [g(S), g(S), g(S), g(S)])]

# patterns are python lists, so they can be manipulated as such
t.pattern = [K, [O, H]] * 4
t.pattern[2] = S
t.pattern[6] = S
t.pattern[6] = [(S, [S, K])]

start()