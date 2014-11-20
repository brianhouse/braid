#!/usr/bin/env python3

from braid import *

tempo(170)
core.log_midi = False

guit1 = Voice(1)
guit2 = Voice(2)
anode = Voice(3)
# guit1 = Voice(3, controls=config['serotonin'], attack=250, decay=200, sustain=200, release=200)  # attack=80, decay=5, sustain=200, release=200
# guit2 = Voice(4, controls=config['serotonin'], attack=250, decay=200, sustain=200, release=200)
# anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    
guit1.chord.set(None)
guit2.chord.set(None)
anode.chord.set(None)

# D/A on top
# AF, FD, GE, AF
# CA, BG, CA, BG, BbF


## new: 
# AE, with DA->DG->DC on top
# back to BbF
#
# DG - CG on bottom to end?

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

g1 = []*4
g2 = []*4



def bass_pat(*ns):
    return [[ns[0], 0], ([0, ns[1]], [ns[1], 0], .65)], [0, 0, ns[2], 0]
    # return [ns[0]]*4, [ns[0]]*4
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

#      2        4        6        8        10       12       14       16       18       20
seq1 = a1, a1,  a1, a1,  b1, b1,  c1, c1,  a1, a1,  d1, d1,  e1, e1,  d1, e1,  f1, f1,  b1, c1
seq2 = a2, a2,  a2, a2,  b2, b2,  c2, c2,  a2, a2,  d2, d2,  e2, e2,  d2, e2,  f2, f2,  b2, c2
seq3 = a3,      b3,      c3,      d3,      e3,      f3,      g3,      h3,      i3,      j3


index = 20
def process_1():
    global index, p
    if index > len(seq1):
        print("DONEDONEDONE")
        guit1.set(*seq1).repeat(False).endswith(process_2)
        guit2.set(*seq2).repeat(False)
        s3 = list(sum(seq3, ()))
        anode.set(*s3).repeat(False)
    else:
        print("INDEX %s" % index)
        print("bindex %s" % (index//2))
        guit1.set(*seq1[:index]).repeat(False).endwith(process_1)
        guit2.set(*seq2[:index]).repeat(False)        
        s3 = seq3[:index // 2]
        s3 = list(sum(s3, ()))
        print("s3", index // 2, s3)
        anode.set(*s3).repeat(False)
        index += 2

# guit2.phase.set(1/16)
# guit2.phase.tween(1/16, 20.0, ease_in_out).repeat()

guit2.phase.set(1/32)

# anode.mute.set(True)

process_1()
play()



"""


D/A on top
AF, AF, FD, GE | AF, AF, FD, GE | AF, CA, BG, CA-BG | BbF, FD, GE 


could have an extended section of BG-BbF, and then AE?


"""