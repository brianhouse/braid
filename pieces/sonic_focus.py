#!/usr/bin/env python3

from braid import *
from extensions.volca import Volca

tempo(132)

anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    
volca1 = Volca()
volca2 = Volca()
guit1 = Voice(3, controls=config['serotonin'], attack=10, decay=10, sustain=127, release=20)
guit2 = Voice(4, controls=config['serotonin'], attack=10, decay=10, sustain=127, release=20)

guit1.decay.set(255)
guit2.decay.set(255)
guit1.release.set(255)
guit2.release.set(255)


anode.set([1, 1, Z, 0])
volca1.set([1, 0, 0, 1], [7, (1, 7), 0, 0], [(0, 7), 0, 1, 0])

volca2.set([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5])
volca2.rate.set(0.25)
volca2.rate.tween(2.0, 10.0).repeat()

guit1.set([4, 5, 4, 5] * 2)
# guit1.set([1, 1, 1, 1] * 2)

guit2.set([0, 6, 0, 9, 0, 6, 0, 9] * 2)
# guit2.set([5, 5, 5, 5] * 2)


play()

