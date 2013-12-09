#!/usr/bin/env python3

from braid import *
nv = nanovector

TEMPO = 123

v1 = Serotonin(1)
v2 = Serotonin(2)
v3 = Serotonin(3)
v4 = Serotonin(4)
v1.velocity = 5.0
v2.velocity = 5.0
v3.velocity = 5.0
v4.velocity = 5.0
v1.tempo = TEMPO
v2.tempo = TEMPO
v3.tempo = TEMPO
v4.tempo = TEMPO


def k():
    def f(v):
        v.velocity = 20.0
        v.adsr = 5, 10, 0.1, 20
        return randint(C1, D1)
    return f

def s():
    def f(v):
        v.velocity = 5.0
        v.adsr = 0, 5, 0.0, 20
        return C7
    return f

def h():
    def f(v):
        v.velocity = 5.0
        v.adsr = 5, 5, 0.0, 20
        return G8
    return f


# v1_drums = [  [k(), h()],
#               [s(), (h(), k()), h(), (h(), s())]
#               ]
# v2_drums = h(), h(), (h(), [s(), s()]), (k(), [h(), k(), h()])


# v1_drums = k(), [Z, h()], k(), [Z, h()], k(), [Z, h()], k(), [Z, h()]
# v2_drums = Z, [h(), Z], s(), [h(), Z], Z, [h(), Z], (s(), [s(), s()], 0.6), [h(), Z]


# v1.pattern = v1_drums
# v2.pattern = v2_drums

### scramble clicks

# a = s(), s(), s(), s()
# b = s(), s(), [s(), s()]
# c = 0, s(), s(), 0
# d = [s(), s()], 0, [0, s()], [s(), 0]
# e = [0, s()], [s(), s(), s()] 


# v3_drums = (a, b), (c, d), (e, b), (c, d)
# v4_drums = (c, d), (a, b), (e, b), (a, b)

# v3.pattern = v3_drums
# v4.pattern = v4_drums


### rolls


def k(v):
    v.velocity = 20.0
    v.adsr = 5, 10, 0.1, 20
    return randint(C1, D1)

def s(v):
    v.velocity = 5.0
    v.adsr = 0, 5, 0.0, 20
    return C7

def h(v):
    v.velocity = 5.0
    v.adsr = 5, 5, 0.0, 20
    return G8


v1.chord = C1, DOM
v1_drums = 1, 5, 3, 2

v2.chord = C3, DOM
v2.adsr = 5, 5, 0.7, 20
v2_drums = 6, Z, Z, [6, 6], Z
v2_drums = [6, 2, 6, 2, 6, 2, 6, 2], Z, Z, [6, 2, 6, 2, 6, 2, 6, 2], Z

v1.chord = C3, DOM
v1.adsr = 5, 5, 0.7, 20
v1_drums = Z, [5, 3, 5, 3, 5, 3, 5, 3], Z, Z, [5, 3, 5, 3, 5, 3, 5, 3]

v3.chord = C2, DOM
v3.adsr = 5, 5, 0.7, 20
v3_drums = 1, 0, 0, Z

v4.tempo = 82
v4.chord = C4, MAJ
v4.velocity = 2.0
v4.adsr = 5, 5, 0.7, 20
v4_drums = [8, 0, 0, Z] * 4
v4_drums_2 = [6, 0, 0, Z] * 4
v4_drums_3 = [5, 0, 2, Z] * 4
# v4.mute()

v4.sequence = v4_drums, v4_drums_2, v4_drums_3, v4_drums_3

# v1.tween('chord', (C3, DOM), (D3, AOL), 60.0)
# v2.tween('chord', (C3, DOM), (E3, LOC), 60.0)

v1.chord = (D3, AOL)
v2.chord = (E3, LOC)




# #### daito

# def k(v):
#     v.velocity = 10.0
#     v.adsr = 2, 20, 0.3, 0
#     return C1

# def r(n):
#     def f(v):
#         v.velocity = 5.0
#         v.adsr = 0, 5, 0.0, 0        
#         return C7 + (n-1)
#     return f

# def s(n):
#     def f(v):
#         v.velocity = 5.0
#         v.adsr = 0, 50, 0.0, 0        
#         return C4 + (n-1)
#     return f

# def h(v):
#     v.velocity = 5.0
#     v.adsr = 5, 5, 0.0, 20
#     return G8



# v1_drums = [k, 0, 0, Z], [k, 0, 0, Z], [k, 0, 0, k], Z
                                

# v2_drums =  [   [0, (h, 0), 0, (h, 0)],
#                 [0, 0, h, h],
#                 [([h, h], 0), ([0, 0], [h, h])],
#                 ([h, h, h, h], 0)
#                 ]

                        
# v3_drums = [ [([r(1), 0], [0, 0, r(5)])],
#              [( [[r(1), 0, 0, r(5)], 0], [[0, r(1), 0, 0], [r(1), r(1)]])]
#             ]

# v4_drums = [      (
#                                         ( [[0, s(1)], 0, 0, 0], [0, s(1), 0, [0, s(1)]] ), 
#                                         [[0, s(1)], s(1), 0, 0], 
#                                         0.8
#                                 ) 

#                         ]

# v1.pattern = CrossPattern(v1_drums, v2_drums)
# v2.pattern = CrossPattern(v1_drums, v2_drums)
# v3.pattern = CrossPattern(v3_drums, v4_drums)
# v4.pattern = CrossPattern(v3_drums, v4_drums)

# so the cross is awesome, but the full beat is also awesome. but the full beat is unbalanced.
# would be great for the bass note to bounce back and forth, even though that kind of violates the paradigm

# v1.tween('pattern', v1_drums, v2_drums, 60.0)
# v2.tween('pattern', v2_drums, v1_drums, 60.0)
# v3.tween('pattern', v3_drums, v3_drums, 60.0)
# v4.tween('pattern', v4_drums, v4_drums, 60.0)

# ####

v1.pattern = v1_drums
v2.pattern = v2_drums
v3.pattern = v3_drums
# v4.pattern = v4_drums


driver.start()

