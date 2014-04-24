#!/usr/bin/env python3

from braid import *

TEMPO = 132

guitar_left = Serotonin(1, tempo=TEMPO, decay=200, sustain=0.5)
guitar_right = Serotonin(2, tempo=TEMPO, decay=200, sustain=0.5)
meeblip = Meeblip(5, tempo=TEMPO)
volca = Volcabeats(tempo=TEMPO)

volca.set([1, 2, 1, 2]).repeat()

# # frith.set(  [[1, 0, 1, 1], [1, 0, 1, 1], [0, 1, 1, 0]], 
# #             [[1, 0, 1, 1], [1, 0, 1, 1], [0, 1, 1, 0]],
# #             [[1, 0, 1, 1], [1, 0, 1, 0], [0]]
# #             )


# guitar_left.set([1, 0, 1, 0, 1, 0, 1, 0] *2).repeat()
# guitar_right.set([0, 5, 0, 5, 0, 5, 0, 5] *2).repeat()
# meeblip.set([1, 0, 0, 0] *2).repeat()

# guitar_left.mute()
# guitar_right.mute()

# # print(v1.pattern)
# # print(v1.sequence)

driver.start()
