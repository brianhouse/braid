#!/usr/bin/env python3

from braid import *

anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    
# volca = Voice(10)
# guit1 = Voice(3)
# guit2 = Voice(4)





anode.set([1, 5])
# volca.set([1, 1, 1, 1])
# guit1.set([4, 5, 4, 5])
# guit2.set([0, 6, 0, 9, 0, 6, 0, 9])

# v1.set(pattern_1)
# v1.rate.control(0, 1.0, 4.0)
# v1.pattern.control(1, pattern_1, pattern_2)


play()

