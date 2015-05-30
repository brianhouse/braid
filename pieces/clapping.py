#!/usr/bin/env python3

from braid import *

tempo(120)

v1 = Voice(1, rate=1, chord=(F, DOM))
v2 = Voice(2, rate=1, chord=(C, DOM))
    

v1.set([[1, 1, 1, 0], [1, 1, 0, 1], [0, 1, 1, 0]]).repeat(4).endwith(lambda: (v2.phase.set(v2.phase.value + 1/12), v1.pattern.repeat(4)))
v2.set([[1, 1, 1, 0], [1, 1, 0, 1], [0, 1, 1, 0]]).repeat()


play()