#!/usr/bin/env python3

from braid import *
from sounds import *
from graphs import *

DURATION = 2.5 * 60

##

bass.pattern = [([1, 0, 0, 0], [2, 0, 0, 0], 0.8)]
bass.tween('velocity', 0.0, bass.velocity, DURATION, bass_velocity_f)

##

def rp(pitch):
    def f(v):
        if v.channel == 2:
            v.pan = 0.0
        else:
            v.pan = 1.0
        v.chord = choice([C8, E8, G8]), MAJ
        v.release = choice([0, 1])
        return pitch
    return f
cicada_groove = [   [0, (rp(1), 0), 0, (1, 0)],
                    [0, 0, 1, 1],
                    [([1, 1], 0), ([0, 0], [1, 1])],
                    ([1, 1, 1, 1], 0)
                    ]
cicada_ambient = [(
                    [([rp(1), 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                     [rp(1), 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 
                        0.5)],
                     0.2
                     )]
cicada.tween('velocity', 0.0, cicada.velocity, DURATION, cicada_velocity_f)
cicada2.tween('velocity', 0.0, cicada2.velocity, DURATION, cicada_velocity_f)
cicada.pattern = cicada_groove
cicada2.pattern = cicada_groove
cicada.tween('pattern', cicada_ambient, cicada_groove, DURATION, cicada_entrain_f)
cicada2.tween('pattern', cicada_ambient, cicada_groove, DURATION, cicada_entrain_f)

##

def cp(pitch):
    def f(v):
        if random() <= 0.8:                
            if pitch == 1:
                v.pan = 0.0
            elif pitch == 4:
                v.pan = 1.0
            return pitch
        return 0
    return f
cricket.pattern = cp(1), [0, cp(4)], 0, 0
cricket.tween('velocity', 0.0, cricket.velocity, DURATION, cricket_velocity_f)

##

met.tween('velocity', 0.0, met.velocity, DURATION, met_velocity_f)
met.pattern = [([0, 0, B3, 0], [0, [0, B3], 0, 0])]

##

def op(pitch):
    def f(v):
        v.pan = random()
        v.attack = (random() * 100) + 50
        return pitch
    return f
owl.pattern = [([[op(6), 1, 0, 0, 0, 0, 0], 0, 0, 0], 0.5)]
owl.tween('velocity', 0.0, owl.velocity, DURATION, owl_velocity_f)

##

branch.pattern = Pattern([      (
                                        ( [[0, 1], 0, 0, 0], [0, 1, 0, [0, 1]] ), 
                                        [[0, 1], 1, 0, 0], 
                                        0.8
                                ) 

                        ])
branch.tween('velocity', 0.0, branch.velocity, DURATION, branch_velocity_f)

##

spirit1.pattern = [0, 0, 1, 0]
spirit2.pattern = [([1, 0, 4, 0], [3, 0, 4], 0.6)]
spirit3.pattern = [([3, 0, 1, 0], [[-7, 1], 0, [3, 1, -7], 0], 0.5)]

spirit1.tween('velocity', 0.0, spirit1.velocity, DURATION, spirit1_velocity_f)
spirit2.tween('velocity', 0.0, spirit2.velocity, DURATION, spirit2_velocity_f)
spirit3.tween('velocity', 0.0, spirit3.velocity, DURATION, spirit3_velocity_f)

spirit2.tween('pan', 0.0, 1.0, DURATION, spirit_angle_f)
spirit3.tween('pan', 1.0, 0.0, DURATION, spirit_angle_f)

##

def sq1(pitch):
    def f(v):
        a = random()
        v.tween('pan', a, 1.0 - a, 12.0)
        return choice([1, 2])
    return f
wind_pattern = sq1(1), 0, sq1(1), 0


def sq2(pitch):
    def f(v):
        a = random()
        v.tween('pan', a, 1.0 - a, 8.0)        
        return choice([3, 4, 5])
    return f
wind2_pattern = [0, sq2(5), 0, 0], [0, sq2(5), 0, 0]


wind.tween('velocity', 0.0, wind.velocity, DURATION, wind_velocity_f)
wind2.tween('velocity', 0.0, wind2.velocity, DURATION, wind_velocity_f)
wind.tween('pattern', [0, 0], wind_pattern, DURATION, wind_pattern_f)
wind2.tween('pattern', [0, 0], wind2_pattern, DURATION, wind_pattern_f)

##


driver.start()