#!/usr/bin/env python3

from braid import *
from braid.core import midi_in
from extensions.volca import Volca


tempo(132)

anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    
guit1 = Voice(3, controls=config['serotonin'], attack=10, decay=10, sustain=200, release=20)
guit2 = Voice(4, controls=config['serotonin'], attack=10, decay=10, sustain=200, release=20)
volca1 = Volca()
volca2 = Volca()
volca3 = Volca()

anode.add("progger", 0)
seq = [1, 4, -6, -7]
def prog():
    n = seq[anode.progger.value % len(seq)]
    anode.progger.value += 1
    return n

anode.set([prog, 0, Z, (2, 0, 0.25)])


# volca1.set([[1, 8, 8, 8], [(8, 0), (8, 0), 8, 2], [8, 8, (8, 0), 8], ([8, (8, 0), 8, 8], [8, 8, 8])])
# volca2.set([[1, 5, 5, 5], [5, 5, (5, 0), 7],      [5, (5, 0), 5, (5, 7, 0.9)], [5, 5, 5, 5]])    # it's strange how these same to remain phased

# volca1.set([[1, 8, 8, 8], [(8, 0), (8, 0), 8, 2], [1, 8, (8, 0), 8], ([8, (8, 0), 8, 8], [8, 8, 8])])
# volca2.set([[1, 5, 5, 5], [1, 5, (5, 0), 7],      [5, (5, 0), 5, (5, 7, 0.9)], [1, 5, 5, 5]])    # it's strange how these same to remain phased

fill_1 = [[1, 2, [2, [8, 8]], [2, [1, 1], 6], [[8, 8, 8, 8], 2, [7, 7, 7]], [1, 0, 0, 0]]]
fill_2 = [[1, 6, 6, [2, 2, 2, 2]], [[6, 6, 6, 6, 6, 6], 7, 0, 7], [1, 1, 2, 1]]
fill_3 = [[1, 1, 1, 0], [2, 0, 0, 5], [1, 1, [1, 5], 1], [7, 7, [7, [5, 1]]]]
floorbeat = [[1, 6], [1, (6, 5)], [1, 6], [1, 6]]

# volca3.set( [[1, 6], [1, (6, 5)], [1, 6], [1, 6]], [[1, 6], [1, 6], [1, (5, 6)], [1, 6]], [(fill_1, (fill_2, fill_3), 0.33)])
# volca3.set([(fill_1, (fill_2, fill_3), 0.33)])
# volca3.set( [[1, 6], [1, (6, 5)], [1, 6], [1, 6]], [(fill_1, (fill_2, fill_3), 0.33)])

# tween in floorbeat

# volca3.set([0])
# volca3.pattern.tween(floorbeat, 30.0)

volca3.add("cohesion", 1.0)
# volca3.cohesion.tween(0.0, 60.0)
    
volca3.set([(floorbeat, [(fill_1, (fill_2, fill_3), 0.33)], lambda: volca3.cohesion.value)])


guit1.set([1, 1, 0, 1]*2)
guit2.set([0, 4, 4, 0]*2)
# guit2.set([0, 5, 0, 5, 0, 5, 0, 5]*2)


volca3.velocity.set(0.0)
volca3.velocity.tween(1.0, 60.0)

play()


# try something bigger for anode -- then later collapse to big hits
# evolve the beat - tween it in. and then maybe have a sequence where it totally fucks itself every so often. (here's the problem when it's split across parts)
# stuttering rhythm for guitar on top

## could the percent of one pattern chosen over another be hooked up to a tween?

# just volume fade up the floorbeat


## the rate of a pattern determined by a dynamic signal
## right now, it could be determined by a signal tween that lasts the duration of the piece
## so that _is_ something different. an indefinite tween.
## or rather, just allowing all Attributes to hold functions. ####
## so everytime .value is called, it should call the function