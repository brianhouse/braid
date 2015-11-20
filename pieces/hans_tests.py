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
        p = (v.ref.value * a) + ((1.0 - v.ref.value) * 0.7)
        v.velocity(p)
        return G7
    return f


##
def h1(a):
    def f(v):
        v.chord(None)    
        v.attack(1)
        v.decay(0)
        v.sustain(0)
        v.velocity(a)
        return G7
    return f    


tempo(90)

v2.add('ref')
v2.ref.tween(1.0, 20, endwith=lambda: (print("WIPE"), stab()))
v2.rate.tween(0.8, 5, repeat=4, endwith=lambda: (superlock(), print("STAB")))

v1.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
v1.chord((None))

v1.set([C1, C5, C1])#, repeat=4, endwith=lambda: (v1.set([C1, C5, C1]), start_v2(), start_v3))  ## see, this is an issue
v1.rate(0.48)
v1.rate.tween(1.0, 10)

# v2.mute(True)

pat_2 = [[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2
v2.set(pat_2)


def superlock():
    print("SUPERLOCK")
    v2.lock(v1)
    v3.lock(v1)
    v4.lock(v1)
    v5.lock(v1)
    v6.lock(v1)

def stab():
    v5.attack(5)
    v5.release(255)
    v5.sustain(100)
    v5.chord((D2, DOR))
    v5.set([1, 0, 0, 0, Z, Z])
    v5.rate(.125)

    v6.attack(5)
    v6.sustain(100)
    v6.release(255)
    v6.chord((D2, DOR))
    v6.set([Z, 0, 0, 0, -7, 0])
    v6.rate(.125)
    v6.phase(0.025)

# stab()

# def start_v2():
#     pat_1 = [h(0.7), h(0.7), h(0.7)]
#     pat_2 = [[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2
#     v2.set(pat_1)
#     v2.phase.tween(1.0, 3, signal_f=ease_in_out, repeat=True)
#     v2.pattern.tween(pat_2, 12, signal_f=ease_out_in, endwith=lambda v: (v.phase.tween.cancel(), print('SLICEY')))

# def start_v3():
#     pass
#     v3.attack(1), v3.decay(50), v3.sustain(20), v3.release(0)
#     v3.chord((D3, DOR))    
#     v3.set([1, 1, 1, 1]*2)
#     v3.set([[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7)]]*2)

# start_v3()
# v3t1 = 60.0

# v3.mute(True)
v3.attack(1), v3.decay(50), v3.sustain(20), v3.release(0)
v3.chord((D3, DOR))
v3.set([1, 1, 1, 1]*2)

# v4.mute(True)
v4.attack(1), v4.decay(50), v4.sustain(20), v4.release(0)
v4.chord((D3, DOR))
v4.set([0, 4, 0, 4, 0, 4]*2)

# # v4.attack(1), v4.decay(50), v4.sustain(20), v4.release(0)
# v4.attack(5), v4.decay(200), v4.sustain(100), v4.release(0)
# v4.chord((D3, DOR))
# v4.set([0, 4, 0, 4, 0, 4]*2)
# v4.attack.tween(1, v3t1)
# v4.sustain.tween(20, v3t1)
# v4.decay.tween(50, v3t1)
# v4.rate(0.3)
# v4.rate.tween(1.0, v3t1*2)



# v5.attack(20), v5.decay(50), v5.sustain(50), v5.release(0)       # make an adsr convenience method
# v5.chord((D5, DOR))
# v5.set([[1, -7, 1],[-7, 1, -7]]*4)








# ## fourths with mid pitch-shift, no dist
# v5.attack(255), v5.decay(255), v5.sustain(80), v5.release(255)
# v5.rate(0.5)
# v5.chord((D4, MYX))
# v5.set([1, 0, Z, (5, 4)])

# v6.attack(255), v6.decay(255), v6.sustain(80), v6.release(255)
# v6.rate(0.5)
# v6.chord((D4, MYX))
# v6.phase(0.3)
# v6.set([2, -6])


# v6.phase.tween(1.0, 12.0, repeat=True)
# # v6.velocity.tween(0.75, 3.0, repeat=True)



play()