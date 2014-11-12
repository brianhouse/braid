#!/usr/bin/env python3

from braid import *

# tempo(165)
tempo(170)

# guit1 = Voice(3, controls=config['serotonin'], attack=250, decay=200, sustain=200, release=200)  # attack=80, decay=5, sustain=200, release=200
# guit2 = Voice(4, controls=config['serotonin'], attack=250, decay=200, sustain=200, release=200)
# anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    

guit1 = Voice(1)
guit2 = Voice(2)
guit3 = Voice(3)

# anode.chord.set((F3, DOR))
# anode.set([1])


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
# CA, BG, CA, BG, BbF


## new: 
# AE, with DA->DG->DC on top
# back to BbF

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


#



def bass_pat(*ns):
    return [[ns[0], 0], ([0, ns[1]], [ns[1], 0], .65)], [0, 0, ns[2], 0]

# [A4,A4,A4], [C4,C4,G3], [G3,F3,F3], [C4,C4,B3], [A3,A3,G3], [F3,A3,A3], [G3,G3,G3], [F3,G3,G3], [Bb3,F3,Bb3], [F3,G3,G3]
a3 = bass_pat(A4,A4,A4)
b3 = bass_pat(C4,C4,G3)
c3 = bass_pat(G3,F3,F3)
d3 = bass_pat(C4,C4,B3)
e3 = bass_pat(A3,A3,G3)
f3 = bass_pat(F3,A3,A3)
g3 = bass_pat(G3,G3,G3)
h3 = bass_pat(F3,G3,G3)
i3 = bass_pat(Bb3,F3,Bb3)
j3 = bass_pat(F3,G3,G3)



# b1 = [C4, D5, C4, D5, C4, D5, C4, D5]
# b2 = [A5, A4, A5, A4, A5, A4, A5, A4]
# guit1.set(a1, b1, c1, a1, b1, c1, a1, d1, e1, d1, e1, f1, b1, c1)
# guit2.set(a2, b2, c2, a2, b2, c2, a2, d2, e2, d2, e2, f2, b2, c2)

# seq1 = a1, a1, a1, a1, b1, b1, c1, c1,  a1, a1, a1, a1, b1, b1, c1, c1,  a1, a1, d1, d1, e1, e1, d1, e1, f1, f1, b1, c1
# seq2 = a2, a2, a2, a2, b2, b2, c2, c2,  a2, a2, a2, a2, b2, b2, c2, c2,  a2, a2, d2, d2, e2, e2, d2, e2, f2, f2, b2, c2

seq1 = a1, a1, a1, a1, b1, b1, c1, c1,  a1, a1, d1, d1, e1, e1, d1, e1, f1, f1, b1, c1
seq2 = a2, a2, a2, a2, b2, b2, c2, c2,  a2, a2, d2, d2, e2, e2, d2, e2, f2, f2, b2, c2
seq3 = a3[0], a3[1], b3[0], b3[1], c3[0], c3[1], d3[0], d3[1], e3[0], e3[1], f3[0], f3[1], g3[0], g3[1], h3[0], h3[1], i3[0], i3[1], j3[0], j3[1]

# problem is that the bass sequences is two patterns long, so it doesnt nest in the same way, have to double unpack or flatten.


# seq1 = a1, a1, a1, a1, b1, b1, c1, c1, a1, a1, d1, d1, e1, e1, d1, e1, f1, f1, b1, c1
# seq2 = a2, a2, a2, a2, b2, b2, c2, c2, a2, a2, d2, d2, e2, e2, d2, e2, f2, f2, b2, c2


# guit1.set(*seq1)
# guit2.set(*seq2)

guit3.chord.set(None)

# s = [1,1,1,    1,1,1,    1,1,-6,   3,3,-7,   4,4,4,    3,3,-7,   -7,-6,-6,  3,3,2]
# s = [A3,A3,A3, A3,A3,A3, A3,A3,F3, C4,C4,G3, D4,D4,D4, C4,C4,G3, G3,F3,F3, C4,C4,B3, A3,A3,G3, F3,A3,A3, G3,G3,G3, F3,G3, G3,Bb3,F3, Bb3,F3,G3, G3]
# s = [A4,A4,A4, C4,C4,G3, G3,F3,F3, C4,C4,B3, A3,A3,G3, F3,A3,A3, G3,G3,G3, F3,G3,G3, Bb3,F3,Bb3, F3,G3,G3]
# s = [A4,A4,A4], [C4,C4,G3], [G3,F3,F3], [C4,C4,B3], [A3,A3,G3], [F3,A3,A3], [G3,G3,G3], [F3,G3,G3], [Bb3,F3,Bb3], [F3,G3,G3]
# s = [A3,A3,C4, A3,A3,A3, G3,G3,G3, F3,G3, G3,Bb3,F3, Bb3,F3,G3, G3]



index = 2
def process():
    global index, p
    if index > len(seq1):
        print("DONEDONEDONE")
    else:
        print("INDEX %s" % index)
        guit1.set(*seq1[:index]).repeat(False).endwith(process)
        guit2.set(*seq2[:index]).repeat(False)        
        s3 = seq3[:index // 2]
        print("s3", index // 2, s3)
        guit3.set(*s3)
        index += 2

# guit3.mute.set(True)

# guit3.set(a3)


# guit2.phase.set(1/16)
# guit2.phase.tween(1/16, 20.0, ease_in_out).repeat()

guit2.phase.set(1/32)

process()
play()



"""


D/A on top
AF, AF, FD, GE | AF, AF, FD, GE | AF, CA, BG, CA-BG | BbF, FD, GE 


could have an extended section of BG-BbF, and then AE?





"""