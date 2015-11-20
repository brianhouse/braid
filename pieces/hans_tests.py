#!/usr/bin/env python3

from braid import *

v1 = Voice(3, controls=config['serotonin']) 
v2 = Voice(4, controls=config['serotonin']) 
v3 = Voice(5, controls=config['serotonin']) 
v4 = Voice(6, controls=config['serotonin']) 
v5 = Voice(7, controls=config['serotonin']) 
v6 = Voice(8, controls=config['serotonin']) 


def k(v):
    v.chord(None)
    v.attack(1)
    v.decay(10)
    v.sustain(0)
    return C4

def s(v):
    v.chord(None)
    v.attack(1)
    v.decay(1)
    v.sustain(0)
    return G7

def h(a):
    def f(v):
        v.chord(None)    
        v.attack(1)
        v.decay(0)
        v.sustain(0)
        v.velocity(a)
        return G7
    return f

    
tempo(90)

v1.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
v1.chord((None))
v1.set([C1, C5, C1])


v2.set([[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2)

v3.attack(1), v3.decay(50), v3.sustain(20), v3.release(0)
v3.chord((D3, DOR))
v3.set([1, 1, 1, 1]*2)


v4.attack(1), v4.decay(50), v4.sustain(20), v4.release(0)
v4.chord((D3, DOR))
v4.set([0, 4, 0, 4, 0, 4]*2)

v5.attack(20), v5.decay(50), v5.sustain(50), v5.release(0)       # make an adsr convenience method
v5.chord((D5, DOR))
v5.set([[1, -7, 1],[-7, 1, -7]]*4)


play()