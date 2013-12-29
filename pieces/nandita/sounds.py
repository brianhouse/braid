#!/usr/bin/env python3

import time, random
from braid import *

TEMPO = 120

bass = Swerve(1)
bass.attack = 1500
bass.decay = 2000
bass.synth = 'cycle'
bass.chord = C2, MAJ
bass.reverb = 0.8, 0.7, 0.5, 0.5, 0.5
bass.velocity = 0.5
bass.pan = 0.5
bass.tempo = TEMPO * 0.25

cicada = Swerve(2)
cicada.synth = 'wave'
cicada.chord = C8, MAJ
cicada.attack = 0
cicada.decay = 1
cicada.glide = 5
cicada.reverb = 0.7, 0.3, 0.2, .9, 0.1
cicada.velocity = 1.0
cicada.angle = 90

cicada2 = Swerve(3)
cicada2.synth = 'wave'
cicada2.chord = C8, MAJ
cicada2.attack = 0
cicada2.decay = 1
cicada2.glide = 5
cicada2.reverb = 0.7, 0.3, 0.2, .9, 0.1
cicada2.velocity = 1.0
cicada2.angle = 270

cricket = Swerve(4)
cricket.synth = 'cycle'
cricket.chord = C8, MAJ
cricket.attack = 5
cricket.decay = 100
cricket.glide = 5
cricket.reverb = 0.5, 0.5, 0.5, 0.5, 0.5
cricket.velocity = 0.4
cricket.continous = False
cricket.tempo = TEMPO * .5

wind = Swerve(5)
wind.synth = 'noise'
wind.attack = 8000
wind.decay = 10000
wind.reverb = 0.5, 0.5, 0.5, 0., 0.
wind.radius = 0.5
wind.velocity = 0.8
wind.tempo = TEMPO * 0.0625

wind2 = Swerve(6)
wind2.synth = 'noise'
wind2.attack = 4000
wind2.decay = 10000
wind2.reverb = 0.5, 0.5, 0.5, 0., 0.
wind2.velocity = 0.8
wind2.radius = 0.5
wind2.tempo = TEMPO * 0.0625

met = Swerve(7)
met.synth = 'cycle'
met.attack = 5
met.decay = 5
met.reverb = 0.8, 0.2, 0.5, 0.0, 0.0
met.velocity = 0.5

owl = Swerve(4)    # doubling on cricket is a nice effect
owl.synth = 'cycle'
owl.chord = D4, PRG
owl.attack = 100
owl.decay = 200
owl.glide = 50
owl.reverb = 0.5, 0.5, 0.5, 0.5, 0.5
owl.velocity = 0.6
owl.continuous = False
owl.tempo = TEMPO * 0.35

branch = Swerve(8)
branch.synth = 'noise'
branch.attack = 5
branch.decay = 30
branch.chord = C8, MAJ
branch.reverb = 0.8, 0.2, 0.5, 0.0, 0.0
branch.velocity = 0.04
branch.tempo = TEMPO * 0.5

spirit1 = Swerve(9)
spirit1.synth = 'cycle'
spirit1.attack = 400
spirit1.decay = 400
spirit1.reverb = 0.5, 0.5, 1., 0.5, 0.5
spirit1.velocity = 0.2
spirit1.chord = G3, DOR
spirit1.pan = 0.5
spirit1.tempo = TEMPO * 0.5

spirit2 = Swerve(10)
spirit2.synth = 'rect'
spirit2.attack = 500
spirit2.decay = 2500#400
spirit2.reverb = 0.7, 0.3, 1., 0.2, 0.5
spirit2.glide = 0
spirit2.velocity = 0.125
spirit2.radius = 0.5
spirit2.chord = G2, DOR
spirit2.tempo = TEMPO / 8.0

spirit3 = Swerve(11)
spirit3.synth = 'saw'
spirit3.attack = 1000
spirit3.decay = 4000#400
spirit3.reverb = 0.7, 0.3, 1., 0.2, 0.5
spirit3.glide = 0
spirit3.velocity = 0.125
spirit3.radius = 0.5
spirit3.chord = G2, DOR
spirit3.tempo = TEMPO / 8.0




