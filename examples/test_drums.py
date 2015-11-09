#!/usr/bin/env python3

from braid import *

# enumerate sounds
tempo(100)
v1 = Drums()
v1.set([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 0])


# # beat example
# tempo(132)
# v1 = Drums()
# v2 = Drums()
# v1.set([[1, 0, 0, 1], [7, (1, 7), 0, 0], [(0, 7), 0, 1, 0], [(7, 1), 0, 1, 0]])
# v2.set([[8, 0, (8, 5), 0], [8, 0, (8, 5), 0]] * 2)

play()