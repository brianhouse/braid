#!/usr/bin/env python3

from braid import *

tempo(165)

guit1 = Voice(3, controls=config['serotonin'], attack=250, decay=200, sustain=200, release=200)  # attack=80, decay=5, sustain=200, release=200
guit2 = Voice(4, controls=config['serotonin'], attack=250, decay=200, sustain=200, release=200)
anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    

anode.chord.set((F3, DOR))
anode.set([1])


# guit1.set([1, 1, 1, 1]*2)
# guit2.set([1, 1, 1, 1]*2)

# rolls_1 = Z, [5, 3, 5, 3, 5, 3, 5, 3], Z, Z, [5, 3, 5, 3, 5, 3, 5, 3]
# rolls_2 = [6, 2, 6, 2, 6, 2, 6, 2], Z, Z, [6, 2, 6, 2, 6, 2, 6, 2], Z
# guit1.chord.set((C5, DOM))
# guit1.set(rolls_1)
# guit2.chord.set((C5, DOM))
# guit2.set(rolls_2)


guit1.chord.set(None)
guit2.chord.set(None)

# D/A on top
# AF, FD, GE, AF
# CA, BG, CA, BG, EBb (EA top voice)

a1 = [A3, D5]*4
a2 = [A5, F4]*4

b1 = [F3, D5]*4
b2 = [A5, D4]*4

c1 = [G3, D5]*4
c2 = [A5, E4]*4

#

d1 = [C4, D5]*4
d2 = [A5, A4]*4

e1 = [B3, D5]*4
e2 = [A5, G4]*4

f1 = [Bb3, D5]*4
f2 = [A5, F4]*4


# b1 = [C4, D5, C4, D5, C4, D5, C4, D5]
# b2 = [A5, A4, A5, A4, A5, A4, A5, A4]
# guit1.set(a1, b1, c1, a1, b1, c1, a1, d1, e1, d1, e1, f1, b1, c1)
# guit2.set(a2, b2, c2, a2, b2, c2, a2, d2, e2, d2, e2, f2, b2, c2)

seq1 = a1, a1, b1, b1, c1, c1, a1, a1, a1, a1, b1, b1, c1, c1, a1, a1, d1, d1, e1, e1, d1, e1, f1, f1, b1, c1
seq2 = a2, a2, b2, b2, c2, c2, a2, a2, a2, a2, b2, b2, c2, c2, a2, a2, d2, d2, e2, e2, d2, e2, f2, f2, b2, c2

seq1 = a1, a1, a1, a1, b1, b1, c1, c1, a1, a1, d1, d1, e1, e1, d1, e1, f1, f1, b1, c1
seq2 = a2, a2, a2, a2, b2, b2, c2, c2, a2, a2, d2, d2, e2, e2, d2, e2, f2, f2, b2, c2


g1 = 1
def set_again_1():
    global g1
    if g1 >= len(seq1):
        print("DONEDONEDONE")
        guit1.set(*seq1).repeat(3).endwith(slowout)
        guit2.phase.tween.cancel()
        guit1.lock(guit2)
    else:
        guit1.set(*seq1[:g1]).repeat(False).endwith(set_again_1)
        g1 += 2

g2 = 1
def set_again_2():
    global g2
    if g2 >= len(seq2):
        guit2.set(*seq2).repeat()
        guit2.phase.tween.cancel()
        guit1.lock(guit2)
    else:
        guit2.set(*seq2[:g2]).repeat(False).endwith(set_again_2)
        g2 += 2

set_again_1()
set_again_2()

DURATION = 3*60

guit1.rate.set(0.125)
guit1.rate.tween(1.0, DURATION, ease_in).endwith(lambda: (guit2.phase.tween.cancel(), guit1.lock(guit2)))
guit1.attack.tween(80, DURATION)
guit1.decay.tween(5, DURATION)

guit2.rate.set(0.125)
guit2.rate.tween(1.0, DURATION, ease_in).endwith(lambda: (guit2.phase.tween.cancel(), guit1.lock(guit2)))
guit2.attack.tween(80, DURATION)
guit2.decay.tween(5, DURATION)
guit2.phase.tween(.25, 10.0).repeat()


def slowout():
    print("SLOWOUT")
    guit1.rate.tween(0.125, 90.0).endwith(readyout)
    guit1.attack.tween(250, 90.0)
    guit1.decay.tween(200, 90.0)
    guit2.rate.tween(0.125, 90.0)
    guit2.attack.tween(250, 90.0)
    guit2.decay.tween(200, 90.0)

def readyout():
    print("READYOUT")
    driver.callback(10.0, stop)

play()