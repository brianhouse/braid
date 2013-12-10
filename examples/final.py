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

nv.init(v1)

### cloudclick

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

a = s(), s(), s(), s()
b = s(), s(), [s(), s()]
c = 0, s(), s(), 0
d = [s(), s()], 0, [0, s()], [s(), 0]
e = [0, s()], [s(), s(), s()] 


v1_cloudclick = (a, b), (c, d), (e, b), (c, d)
v2_cloudclick = (c, d), (a, b), (e, b), (a, b)



### daito

def k(v):
    v.velocity = 10.0
    v.adsr = 2, 20, 0.3, 0
    return C1

def r(n):
    def f(v):
        v.velocity = 5.0
        v.adsr = 0, 5, 0.0, 0        
        return C7 + (n-1)
    return f

def s(n):
    def f(v):
        v.velocity = 5.0
        v.adsr = 0, 50, 0.0, 0        
        return C4 + (n-1)
    return f

def h(v):
    v.velocity = 5.0
    v.adsr = 5, 5, 0.0, 20
    return G8


v1_daito = [k, 0, 0, Z], [k, 0, 0, Z], [k, 0, 0, k], Z
                                

v2_daito =  [   [0, (h, 0), 0, (h, 0)],
                [0, 0, h, h],
                [([h, h], 0), ([0, 0], [h, h])],
                ([h, h, h, h], 0)
                ]

                        
v3_daito = [ [([r(1), 0], [0, 0, r(5)])],
             [( [[r(1), 0, 0, r(5)], 0], [[0, r(1), 0, 0], [r(1), r(1)]])]
            ]

v4_daito = [      (
                                        ( [[0, s(1)], 0, 0, 0], [0, s(1), 0, [0, s(1)]] ), 
                                        [[0, s(1)], s(1), 0, 0], 
                                        0.8
                                ) 

                        ]

v1_daito_cross = CrossPattern(v1_daito, v2_daito)
v2_daito_cross = CrossPattern(v1_daito, v2_daito)
v3_daito_cross = CrossPattern(v3_daito, v4_daito)
v4_daito_cross = CrossPattern(v3_daito, v4_daito)

nv.vectors[1][v1] = {'pattern': (v1_cloudclick, v1_daito_cross)}
nv.vectors[1][v2] = {'pattern': (v2_cloudclick, v2_daito_cross)}
nv.vectors[1][v3] = {'pattern': ([0, 0], v3_daito_cross)}
nv.vectors[1][v4] = {'pattern': ([0, 0], v4_daito_cross)}


def straighten_daito(value):
    if value:
        v1.sequence = v1_daito, v2_daito
        v2.sequence = v2_daito, v1_daito
        v3.sequence = v3_daito, v4_daito
        v4.sequence = v4_daito, v3_daito
    else:
        v1.clear_sequence()
        v1.pattern = v1_daito_cross
        v2.clear_sequence()
        v2.pattern = v2_daito_cross
        v3.clear_sequence()
        v3.pattern = v3_daito_cross
        v4.clear_sequence()
        v4.pattern = v4_daito_cross
control.callback("1_onoff", straighten_daito)


###



### rolls!


def r(n):
    def f(v):
        v.velocity = 5.0
        v.adsr = 5, 5, 0.7, 20
        return n
    return f

v1.chord = C3, DOM
v1_rolls = Z, [r(5), 3, 5, 3, 5, 3, 5, 3], Z, Z, [5, 3, 5, 3, 5, 3, 5, 3]

v2.chord = C3, DOM
v2_rolls = [r(6), 2, 6, 2, 6, 2, 6, 2], Z, Z, [6, 2, 6, 2, 6, 2, 6, 2], Z

v3.chord = C2, DOM
v3_rolls = r(1), 0, 0, Z

nv.vectors[2][v1] = {'pattern': (v1_daito_cross, v1_rolls)}
nv.vectors[2][v2] = {'pattern': (v2_daito_cross, v2_rolls)}
nv.vectors[2][v3] = {'pattern': (v3_daito_cross, v3_rolls)}
nv.vectors[2][v4] = {'pattern': (v4_daito_cross, [0, 0])}

nv.vectors[3][v1] = {'chord': ((C3, DOM), (D3, AOL))}
nv.vectors[3][v2] = {'chord': ((C3, DOM), (E3, LOC))}

v4_rolls = [r(8), 0, 0, Z] * 4
v4_rolls_2 = [r(6), 0, 0, Z] * 4
v4_rolls_3 = [r(5), 0, 2, Z] * 4


def roll_melody(on):        
    if on:
        def melody_go(v):
            v.tempo = 82
            v.chord = C4, MAJ
            v.velocity = 2.0
            v.sequence = v4_rolls, v4_rolls_2, v4_rolls_3, v4_rolls_3
        v4.queue.append(melody_go)
    else:
        def melody_stop(v):
            v.tempo = 123
            v.clear_sequence()
            v.pattern = 0, 0
        v4.queue.append(melody_stop)
control.callback("3_onoff", roll_melody)

###


### pulses


v1_pulse = [5, 3, 5, 3, 5, 3, 5, 3] * 4
v2_pulse = [6, 2, 6, 2, 6, 2, 6, 2] * 4
v3_pulse = [1, 1, 1, 1, 1, 1, 1, 1] * 4
v4_pulse = [2, 2, 2, 2, 2, 2, 2, 2] * 4

nv.vectors[4][v1] = {'pattern': (v1_rolls, v1_pulse)}
nv.vectors[4][v2] = {'pattern': (v2_rolls, v2_pulse)}
nv.vectors[4][v3] = {'pattern': (v3_rolls, v3_pulse)}
nv.vectors[4][v4] = {'pattern': (v4_rolls, v4_pulse)}


nv.vectors[5][v1] = {'tempo': (30, 200)}
nv.vectors[5][v2] = {'tempo': (30, 200)}
nv.vectors[5][v3] = {'tempo': (30, 200)}
nv.vectors[5][v4] = {'tempo': (30, 200)}



###

v1.pattern = v1_cloudclick
v2.pattern = v2_cloudclick
v3.pattern = 0, 0
v4.pattern = 0, 0


driver.start()

