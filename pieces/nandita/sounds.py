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
bass.velocity = 1.0
bass.pan = 0.5
bass.tempo = TEMPO * 0.25

cicada = Swerve(2)
cicada.synth = 'wave'
cicada.chord = C8, MAJ
cicada.attack = 0
cicada.decay = 0
cicada.glide = 5
cicada.reverb = 1.0, 0., 0., 0.
cicada.velocity = 1.0

cicada2 = Swerve(3)
cicada2.synth = 'wave'
cicada2.chord = C8, MAJ
cicada2.attack = 0
cicada2.decay = 0
cicada2.glide = 5
cicada2.reverb = 1.0, 0., 0., 0.
cicada2.velocity = 1.0

cricket = Swerve(4)
cricket.synth = 'cycle'
cricket.chord = C8, MAJ
cricket.attack = 5
cricket.decay = 100
cricket.glide = 5
cricket.reverb = 0.5, 0.5, 0.5, 0.5, 0.5
cricket.velocity = 0.9
cricket.tempo = TEMPO * .5

met = Swerve(5)
met.synth = 'cycle'
met.attack = 2
met.decay = 5
met.reverb = 0.8, 0.2, 0.5, 0.0, 0.0
met.velocity = 0.9

owl = Swerve(6)    # doubling on cricket is a nice effect
owl.synth = 'cycle'
owl.chord = D4, PRG
owl.attack = 100
owl.decay = 200
owl.glide = 50
owl.reverb = 0.5, 0.5, 0.5, 0.5, 0.5
owl.velocity = 1.0
owl.tempo = TEMPO * 0.35

branch = Swerve(7)
branch.synth = 'noise'
branch.attack = 5
branch.decay = 30
branch.chord = C8, MAJ
branch.reverb = 0.8, 0.2, 0.5, 0.0, 0.0
branch.velocity = 0.5
branch.tempo = TEMPO * 0.5

spirit1 = Swerve(8)
spirit1.synth = 'cycle'
spirit1.attack = 400
spirit1.decay = 400
spirit1.reverb = 0.5, 0.5, 1., 0.5, 0.5
spirit1.velocity = 1.0
spirit1.chord = G3, DOR
spirit1.pan = 0.5
spirit1.tempo = TEMPO * 0.5

spirit2 = Swerve(9)
spirit2.synth = 'rect'
spirit2.attack = 2500
spirit2.decay = 4000
spirit2.reverb = 0.7, 0.3, 1., 0.2, 0.5
spirit2.glide = 0
spirit2.velocity = 0.65
spirit2.chord = G2, DOR
spirit2.tempo = TEMPO / 8.0

spirit3 = Swerve(10)
spirit3.synth = 'saw'
spirit3.attack = 2500
spirit3.decay = 4000#400
spirit3.reverb = 0.7, 0.3, 1., 0.2, 0.5
spirit3.glide = 0
spirit3.velocity = 0.65
spirit3.chord = G2, DOR
spirit3.tempo = TEMPO / 8.0

wind = Swerve(11, True)
wind.synth = 'noise'
wind.attack = 8000
wind.decay = 10000
wind.reverb = 0.5, 0.5, 0.5, 0., 0.
wind.velocity = 0.65
wind.tempo = TEMPO * 0.0625

wind2 = Swerve(12, True)
wind2.synth = 'noise'
wind2.attack = 8000
wind2.decay = 10000
wind2.reverb = 0.5, 0.5, 0.5, 0., 0.
wind2.velocity = 0.65
wind2.tempo = TEMPO * 0.0625


