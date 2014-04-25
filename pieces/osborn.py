#!/usr/bin/env python3

from braid import *

TEMPO = 132

guitar_left = Serotonin(1, tempo=TEMPO, decay=200, sustain=0.5)
guitar_right = Serotonin(2, tempo=TEMPO, decay=200, sustain=0.5)
meeblip = Meeblip(5, tempo=TEMPO)
volca = Volcabeats(tempo=TEMPO)
nv = nanovector

volca.set([1, 2, 1, 2]).repeat()

# frith.set(  [[1, 0, 1, 1], [1, 0, 1, 1], [0, 1, 1, 0]], 
#             [[1, 0, 1, 1], [1, 0, 1, 1], [0, 1, 1, 0]],
#             [[1, 0, 1, 1], [1, 0, 1, 0], [0]]
#             )

blank_pat = [0, 0, 0, 0, 0, 0, 0, 0] *2
full_pat_left = [1, 0, 1, 0, 1, 0, 1, 0] *2
full_pat_right = [0, 5, 0, 5, 0, 5, 0, 5] *2
guitar_left.set(full_pat_left).repeat()
guitar_right.set(full_pat_right).repeat()

meeblip.chord = F3, MAJ
# meeblip.set([ [1, 0, 0, Z] *2, [[1, 0, Z, 1], [0, 0, 0, 0]] ]).repeat()

meeblip.set([[1, 0, 1, 0], [Z, Z, 1, 0], [0, 0, (-1, 0, 0.3), 0], [0, 0, 0, 0]]).repeat()

# [1, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0]
# [0, 0, 5, 5], [0, 0, 0, 0], [0, 0, 5, 0], [0, 5, 0, 0]
# [0, 0, 0, 0], [7, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]
# [0, 0, 0, 8], [8, 0, 0, 8], [0, 8, 0, 0], [8, 0, 0, 0]

pat_0 = [1, 0, 0, 0], [0, 0, 0, 0], [0, 8, 0, 0], [0, 0, 0, 0]

pat_1 = [1, 0, 5, 5], [7, 0, 0, 8], [0, 8, 1, 0], [8, 5, 0, 0]

pat_2 = [[1, 1, 5, 5], ([7, 0, 0, [8, 0, 8]], [7, 1, 7])  ], [([[0, 8, 1, 0], [8, 5, 0, 0]], [[7, 0, 1, 0], [0, 1, [7, 7], 0]])]

volca.set(pat_2).repeat()

nv.init(guitar_left, guitar_right, meeblip, volca)
nv.vectors[1][guitar_left] =    {'tempo': (30, TEMPO)}
nv.vectors[1][guitar_right] =   {'tempo': (30, TEMPO)}
nv.vectors[1][meeblip] =        {'tempo': (30, TEMPO)}
nv.vectors[1][volca] =          {'tempo': (30, TEMPO)}

nv.vectors[2][guitar_left] =    {'pattern': (blank_pat, full_pat_left)}
nv.vectors[2][guitar_right] =   {'pattern': (blank_pat, full_pat_right)}

nv.vectors[3][guitar_left] =    {'sustain': (0.0, 0.5)}
nv.vectors[3][guitar_right] =   {'sustain': (0.0, 0.5)}


# guitar_left.mute()
# guitar_right.mute()
# volca.mute()

driver.start()
