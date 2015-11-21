#!/usr/bin/env python3

from braid import *

v1 = Voice(3, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v2 = Voice(4, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v3 = Voice(5, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v4 = Voice(6, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v5 = Voice(7, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v6 = Voice(8, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 

def set_controls():
    midi_in.callback(33, superlock)
    #
    midi_in.callback(34, shifter)
    midi_in.callback(35, dshifter)
    # midi_in.callback(36, tapper)
    # midi_in.callback(37, melody_tween)
    # midi_in.callback(38, melody2)
    # midi_in.callback(39, melody3)
    # midi_in.callback(40, melody4)
    # midi_in.callback(41, unravel)


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
        # p = (v.ref.value * a) + ((1.0 - v.ref.value) * 0.7)
        p = random() if random() > v.ref.value else a
        v.velocity(p)
        return G7
    return f


tempo(90)

def superlock():
    print("SUPERLOCK")
    v1.rate.tween.cancel()
    v1.rate(1)
    v2.rate.tween.cancel()
    v2.rate(1)
    v2.ref.tween(1.0, 60.0)
    v1.lock(v2)
    v1.lock(v3)
    v1.lock(v4)
    v1.lock(v5)
    v1.lock(v6)

def test():
    print("TEST")
    v2.add('ref', 1.0)
    v1.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
    v1.chord((None))
    v1.set([C1, C5, C1])#, repeat=4, endwith=lambda: (v1.set([C1, C5, C1]), start_v2(), start_v3))  ## see, this is an issue
    pat_2 = [[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2
    v2.set(pat_2)

def intro():
    print("INTRO")
    v1.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
    v1.chord((None))
    v1.set([C1, C5, C1])
    v1.rate(0.48)
    v1.rate.tween(1.0, 20, ease_in)#, endwith=lambda: superlock())    
    
def stab():
    print("STAB")
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
    v6.set([Z, 0, 0, 0, -6, 0])
    v6.rate(.125)
    v6.phase(0.025)

def tapper():
    print("TAPPER")
    
    v2.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
    v2.add('ref')    
    pat_2 = [[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2
    v2.set(pat_2)
    v2.rate.tween(0.3, 5, repeat=True)#, repeat=4, endwith=lambda: superlock())
    # v2.ref.tween(1.0, 16, endwith=lambda: stab())


def endstabbers():
    print("ENDSTAB")
    v5.attack(20)
    v5.decay(255)
    v5.sustain(40)
    v5.release(0)
    v5.chord((G1, DOR))
    v5.set([1, 1, 1]*2)

    v6.attack(20)
    v6.decay(255)
    v6.sustain(40)
    v6.release(0)
    v6.chord((G1, DOR))
    v6.set([1, 1, 1]*2)


    # v5.rate(.125)

    # v6.attack(5)
    # v6.sustain(100)
    # v6.release(255)
    # v6.chord((D2, MAJ))
    # v6.set([Z, 0, 0, 0, -7, 0])
    # v6.rate(.125)
    # v6.phase(0.025)


def d(n, a):
    def f(v):
        p = (v3.ref.value * a) + ((1.0 - v3.ref.value) * 1.0)
        v.velocity(p)
        return n
    return f

def c(n, a):
    def f(v):
        p = (v3.ref.value * a) + ((1.0 - v3.ref.value) * 0.0)
        v.velocity(p)
        return n
    return f    

v3.add('ref', 0.0)

def arpjams():
    v3.attack(5), v3.decay(50), v3.sustain(100), v3.release(100)
    v3.chord((D3, DOR))
    # v3.set([1, 1, 1, 1]*2)    
    # v3.set([1, 5, -4, 1, 5, -4, 1, 5, -4, 1, 5, -4]*2)
    # v3.set([2, -5, 4, 2, -5, -5, 4, 2, -5, 2, 4, -5]*2)
    # v3.set([1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0]*2)
    # v3.set([1, 0, 0, 
    #         1, 1, 0, 
    #         0, 1, 1, 
    #         0, 0, 1]*2)
    # v3.set([d(1, 1.0), 0, 0, 
    #         d(1, 1.0), d(1, 0.0), 0, 
    #         0, d(1, 0.0), d(1, 0.0), 
    #         0, 0, d(1, 0.0)]*2)
    
    # mod = [d(1, 1.0), 0, 0, 
    #         d(1, 1.0), d(1, 0.0), 0, 
    #         1, d(1, 0.0), d(1, 0.0), 
    #         1, 0, d(1, 0.0)]*2

    # v3.set([1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0]*2)
    # v4.set([0, 4, 4, 0, 0, 4, 4, 0, 0, 4, 4, 0]*2)            

    v3.set([d(1, 1.0), 0, 0, 1, 0, 0, 1, 0, d(1, 0.0), d(1, 1.0), 0, d(1, 0.0)]*2)

    v4.attack(5), v4.decay(50), v4.sustain(100), v4.release(100)
    v4.chord((D3, DOR))    
    # v4.set([2, -5, 4, 2, -5, -5, 4, 2, -5, 2, 4, -5]*2)
    # v4.set([0, 0, 4, 0, 0, 0, 4, 0, 0, 0, 4, 0]*2)
    v4.set([0, d(4, 0.0), d(4, 1.0), 0, 0, d(4, 0.0), d(4, 1.0), 0, 0, d(4, 0.0), d(4, 1.0), 0]*2)


    ## cross fading of patterns is needed 

def shifter():
    print("SHIFTER")
    v3.sustain.tween(20, 30.0)
    v4.sustain.tween(20, 30.0)#, endwith=lambda: dshifter())

def dshifter():
    print("DSHIFTER")    
    v3.ref.tween(1.0, 60.0)
    v3.attack.tween(1, 60.0)
    v4.attack.tween(1, 60.0, endwith=lambda: superlock())




def jammers():
    v3.attack(1), v3.decay(50), v3.sustain(20), v3.release(0)
    v3.chord((D3, DOR))
    v3.set([1, 1, 1, 1]*2)

    v4.attack(1), v4.decay(50), v4.sustain(20), v4.release(0)
    v4.chord((D3, DOR))
    v4.set([0, 4, 0, 4, 0, 4]*2)


# jammers()



intro()
tapper()
arpjams()
endstabbers()


# test()



set_controls()
play()



"""

get a tone on ebow, pull it off.
start. let that be.
play with putting on low ebow and pulling up mids -- delicate lower for the fork
tweens.

low comes in after shifter, but sustained
after the lock, it's starts to tween to faster
then there is a hard fork switch

pull to distortion
midloeq comes up

ebow plays

fork goes high and backs off a bit





remember to use lo eq on mids
remember to have the fork _off_ when freezing


"""






### alternate nice thing

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
