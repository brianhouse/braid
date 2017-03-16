#!/usr/bin/env python3

from braid import *

# create a thread on channel 1
t = Thread(1)


# MIDI pitch value can be specified by MIDI number or with note-name aliases between C0 and B8
# C is an alias for C4, likewise for the rest of the middle octave

t.pattern = C, C, C, C
# is the same as
t.pattern = 60, 60, 60, 60

# 0s simply sustain (no MIDI sent)
t.pattern = C, 0, C, C

# rests (explicit MIDI note-offs) are specified with a Z
t.pattern = C, Z, C, Z

# by default, there is no specified chord. But if there is one, notes can be specified by scale degree
t.chord = C4, MAJ
t.pattern = 1, 3, 5, 7

# negative numbers designate the octave below
t.pattern = -5, -7, 1, 5

# a chord consists of a root note and a scale
# built-in scales are: 
# Ionian (ION), Dorian (DOR), Phrygian (PRG), Myxolydian (MYX), Aolian (AOL), Locrian (LOC), harmonic minor (MIN), ?? (MMI), blues (BLU), pentatonic (PEN), chromatic (CHR), gamelan slendra (SDR), gamelan ?? (PLG), jam (JAM)

# custom scales can be generated with the following syntax, where numbers are chromatic steps from the root
whole_tone_scale = Scale([0, 2, 4, 6, 8, 10])

# R specifies a random note in the scale
t.chord = C4, whole_tone_scale
t.pattern = 1, R, R, -6

# grace notes are specified by using floats
t.pattern = 1, 1., 1., 1.

# the level of the grace note is specified with a percentage (default 0.75)
t.grace = .45
t.pattern = 1, 1., 1, 1.

# use the g function to create a grace note on note specified with a symbol
t.chord = None
t.pattern = C, g(C), g(C), g(C)


t.start()

start()
