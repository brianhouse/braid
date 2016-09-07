#!/usr/bin/env python3

from braid import *
from braid.util import midi 

midi.log_midi = False

# kick = Drums()
# kick.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
# # kick.start()
# kick.rate = tween(0.5, 8)


tone1 = Thread(1)
tone1.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
tone1.pattern = [1, 1., 1., 1.]
tone1.rate = 1.0
tone1.start()


tone2 = Thread(2)
tone2.pattern = [2, 2., 2, 2.]
tone2.rate = 0.46827
tone2.start()
tone2.sync = tween(tone1, 16)
tone2.phase = 0.5

# tone1 = Thread(1)
# tone1.pattern = [1, 1., 1., 1.]
# tone1.grace = 1.0
# tone1.grace = tween(0.0, 8)
# tone1.start()


start()