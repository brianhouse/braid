#!/usr/bin/env python3

from braid import *

# all threads come with some properties built-in
# we've seen `chord` and `grace` already.

# We also have: `phase`

t1 = Thread(10)
t1.chord = 76, CHR  # root note is "Hi Wood Block", and we count chromatically up from there

t2 = Thread(10)
t2.chord = 77, CHR  # using different chords so the pattern can be all 1s for both

t1.pattern = [1, 1, 1, 0], [1, 1, 0, 1], [0, 1, 1, 0]
t2.pattern = t1.pattern

t1.start()
t2.start(t1)    # when starting a thread in livecode mode, send another thread as an argument to make sure they're in sync

t2.phase = 1/12


# and, of course, velocity:

t1.velocity = 0.5

# grace is then a percentage of velocity


start()