#!/usr/bin/env python3

import time
from braid import *
from braid.util import midi 

midi.log_midi = False

# # test tweening
# tone1 = Thread(1)
# tone1.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
# tone1.pattern = [1, 2, 3, 4]
# tone1.chord = C2, MAJ
# # tone1.pattern = [1, 2, 3, 4]
# tone1.rate = 1.0
# tone1.start()

# tone2 = Thread(2)
# tone2.pattern = [2, 2., 2, 2.]
# tone2.pattern = [1, 2, 3, 4]
# tone2.rate = 0.46827
# tone2.start()
# tone2.sync = tween(tone1, 8)
# # tone2.phase = 0.5



# # test gracenotes
# tone1 = Thread(1)
# tone1.pattern = [1, 1., 1., 1.]
# tone1.grace = 1.0
# tone1.grace = tween(0.0, 8)
# tone1.start()

kick = Thread(1)
kick.pattern = [1, 2, 3, 4]
kick.chord = C2, MAJ
kick.start()

snare = Thread(1)
snare.pattern = [1, 2, 3, 4]
snare._cycles = 3.2
snare.start()

snare.sync = tween(kick, 4)

start()