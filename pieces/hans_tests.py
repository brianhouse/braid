#!/usr/bin/env python3

from braid import *

v1 = Voice(3, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v2 = Voice(4, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v3 = Voice(5, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v4 = Voice(6, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v5 = Voice(7, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 
v6 = Voice(8, controls=config['serotonin'], attack=1, decay=10, sustain=0, release=0) 

def set_controls():
    midi_in.callback(33, shifter)
    midi_in.callback(34, endstabbers)


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


def test():
    print("TEST")
    v2.add('ref', 1.0)
    v1.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
    v1.chord((None))
    v1.set([C1, C5, C1])#, repeat=4, endwith=lambda: (v1.set([C1, C5, C1]), start_v2(), start_v3))  ## see, this is an issue
    pat_2 = [[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2
    v2.set(pat_2)
    arpjams()
    v3.sustain(20)
    v4.sustain(20)
    v3.ref(1.0)
    v3.attack(1)
    v4.attack(1)
    v2.ref(1.0)
    endstabbers()
    flyer()

def intro():
    print("INTRO")
    v1.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
    v1.chord((None))
    v1.set([C1, C5, C1])
    v1.rate(0.48)
    v1.rate.tween(1.0, 20, ease_in)

def tapper():
    print("TAPPER")    
    v2.attack(1), v1.decay(1), v1.sustain(0), v1.release(0)
    v2.add('ref')    
    pat_2 = [[h(0.8), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)],[h(1.0), h(0.7), h(0.7), h(0.7), h(0.7), h(0.7)]]*2
    v2.set(pat_2)
    v2.rate.tween(0.3, 5, repeat=True)

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
    v3.set([d(1, 1.0), 0, 0, 1, 0, 0, 1, 0, d(1, 0.0), d(1, 1.0), 0, d(1, 0.0)]*2)
    v4.attack(5), v4.decay(50), v4.sustain(100), v4.release(100)
    v4.chord((D3, DOR))    
    v4.set([0, d(4, 0.0), d(4, 1.0), 0, 0, d(4, 0.0), d(4, 1.0), 0, 0, d(4, 0.0), d(4, 1.0), 0]*2)

def shifter():
    print("SHIFTER")
    v3.sustain.tween(20, 20.0, endwith=lambda: (prestab(), dshifter()))
    v4.sustain.tween(20, 20.0)

def prestab():
    print("PRESTAB")    
    v5.attack(255)
    v5.decay(255)
    v5.sustain(60)
    v5.release(0)
    v5.chord((G1, DOR))
    v5.set([(1, 0), 0])  

def dshifter():
    print("DSHIFTER")    
    v3.ref.tween(1.0, 10.0)
    v3.attack.tween(1, 15.0)
    v4.attack.tween(1, 15.0)
    superlock()

def superlock():
    print("SUPERLOCK")
    v1.rate.tween.cancel()
    v1.rate(1)
    v2.ref.tween(1.0, 60.0)
    v2.rate.tween.cancel()
    v2.rate(1)
    v1.lock(v2)
    v1.lock(v3)
    v1.lock(v4)
    v1.lock(v5)
    v1.lock(v6)    

def endstabbers():
    print("ENDSTAB")
    v5.attack(20)
    v5.decay(255)
    v5.sustain(40)
    v5.release(0)
    v5.chord((G1, DOR))
    v5.set([1, 1, 1]*2)
    driver.on_t(45.0, flyer)


def flyer():
    v6.attack(5)
    v6.decay(5)
    v6.sustain(40)
    v6.release(100)
    v6.chord((C6, DOR))
    v6.rate(0.75)
    # v6.set([4, 0])
    se = [          [1, 1, 1]*12, 
                    [4, 4, 4]*10,
                    [-6, -6, -6]*11,
                    [2, 2, 2]*9,
                    [-6, -6, -6]*8,
                    [-5, -5, -5]*13,
                    [Z, Z]*10,
                    ]

                # se[0], se[1], se[2], se[6], 

    madseq = [  se[0], se[1], se[6], 
                se[0], se[1], se[2], se[3], se[4], se[6],
                se[2], se[3], se[4], se[5], se[6]
                ]

    v6.set([4, 2, (1, -7)]*12)    
    v6.add('asi')
    def assign():
        print('asi', v6.asi())
        if int(v6.asi()) == len(madseq):
            jamspinch()
            return
        v6.set(madseq[int(v6.asi())], repeat=1, endwith=lambda: assign())
        v6.asi((v6.asi()+1))        
    assign()


def jamspinch():
    prestab()
    length = 16
    v3.attack.tween(1, length)
    v3.sustain.tween(0, length)
    v3.decay.tween(1, length)
    v3.release.tween(1, length)
    v4.attack.tween(1, length)
    v4.sustain.tween(0, length)
    v4.decay.tween(1, length)
    v4.release.tween(1, length)

    def u(n):
        def f(v):
            v.velocity(1)
            return n
        return f
    v3.pattern.tween([u(1), u(1), u(1), u(1), u(1), u(1), u(1), u(1)]*2, length, endwith=lambda: v3.chord.tween((C4, DOR), 4, endwith=lambda: v3.chord.tween((C6, DOR), 4, endwith=lambda: v3.pattern.tween([0, 0], 12))))    
    v4.pattern.tween([u(4), u(4), u(4), u(4), u(4), u(4), ]*2, length, endwith=lambda: v4.chord.tween((C4, DOR), 4, endwith=lambda: v4.chord.tween((C6, DOR), 4, endwith=lambda: v4.pattern.tween([0, 0], 12))))    



# test()
intro()
tapper()
arpjams()

set_controls()
play()



"""
tapper down, mids down
distortion off
remember to use lo eq on mids, start low
remember to have the fork _off_ when freezing
get a tone on ebiw
fork on mid
//

- start. 8hits.
- up the mids, play ebow, 3 times and hold for tapper

> button 1
- moving ebow, distortion

- once we're locked, up the midloeq, and then:

> fork goes high / backed off
> button2

then just let it jam


percussion is U+2
mids is U-1
flyer is 9:00
bass is U-1.5


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
