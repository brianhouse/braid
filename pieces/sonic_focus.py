#!/usr/bin/env python3

from braid import *
from braid.core import midi_in
from extensions.volca import Volca

tempo(132)

anode = Voice(1, controls=config['anode_controls'], **config['anode_defaults'])    
volca1 = Volca()
volca2 = Volca()
guit1 = Voice(3, controls=config['serotonin'], attack=10, decay=10, sustain=0, release=20)
guit2 = Voice(4, controls=config['serotonin'], attack=10, decay=10, sustain=0, release=20)
guit1.decay.set(200)
guit2.decay.set(200)
anode.attack.set(0)


guit1.set([1, 1, 1, 1]*2)
guit2.set([1, 1, 1, 1]*2)
guit1.rate.set(0.125)
guit2.rate.set(0.125)
anode.set([1, 0, Z, (2, 0, 0.25)])

""" checklist:
ports!
all the way up, preamps, overdrive
reverb is resonable
distortion is down on the reverb channel (and all channels)
go easy on drive
make sure guit distortions always match precisely
aux master at 9:00, stereo return at 12:00
return channel all unity, up a bit level

be physical.

"""

def set_controls():
    midi_in.callback(33, beat_intro_2)      # could just start
    midi_in.callback(34, beat_intro_3)
    midi_in.callback(35, unison_separate)
    midi_in.callback(36, beat_lockup)
    midi_in.callback(37, melody_tween)
    midi_in.callback(38, melody2)
    midi_in.callback(39, melody3)       # this is melody tween
    midi_in.callback(40, melody4)
    midi_in.callback(41, unravel)

## control the bass. save it.    

def beat_intro_1():
    print("BEAT INTRO 1")
    volca1.set([8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8])
    volca1.rate.set(0.25)
    volca1.rate.tween(3.0, 5.0).repeat()

def beat_intro_2():
    print("BEAT INTRO 2")
    volca2.set([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5])
    volca2.rate.set(0.25)
    volca2.rate.tween(2.0, 10.0).repeat()

def beat_intro_3():
    print("BEAT INTRO 3")
    volca1.pattern.tween([1, 8, 8, 8, 8, 8, 8, 2, 8, 8, 8, 8, 8, 8, 8, 8], 30.0)
    volca2.pattern.tween([1, 5, 5, 5, 5, 5, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5], 30.0)

## guitar fuck with

def unison_separate():
    print("UNISON SEPARATE")
    guit2.phase.tween(1/16, 160.0)        # keep aux down!
    guit1.rate.tween(1.0, 90.0)
    guit2.rate.tween(1.0, 90.0)

def beat_lockup():  # need to be fully separated before you call this
    print("BEAT LOCKUP")
    # volca1.rate.tween.repeat(1).endwith(lockem)
    lockem()

def lockem():
    print("LOCKEM")
    guit1.rate.tween.cancel()
    guit2.rate.tween.cancel()
    guit1.phase.set(1.0)
    volca1.rate.tween.cancel()
    volca2.rate.tween.cancel()
    volca1.rate.set(1.0)
    volca2.rate.set(1.0)
    volca1.lock(guit1)
    volca2.lock(guit1)
    anode.lock(guit1)
    guit2.lock(guit1)    
    guit2.phase.set(1/16)
    volca1.set([[1, 8, 8, 8], [(8, 0), (8, 0), 8, 2], [8, 8, (8, 0), 8], ([8, (8, 0), 8, 8], [8, 8, 8])])
    volca2.set([[1, 5, 5, 5], [5, 5, (5, 0), 7],      [5, (5, 0), 5, (5, 7, 0.9)], [5, 5, 5, 5]])    # it's strange how these same to remain phased


## beat rock out    
## distortion for first time here
## anode comes up
## tune feedback to anode

def melody_tween():
    print("MELODY TWEEN")
    guit2.phase.set(1/16)
    guit1.pattern.tween([6, 2, 6, 2]*2, 30.0)
    guit2.pattern.tween([5, 4, 5, 4]*2, 60.0)

# def melody1():
#     print("MELODY 1")
#     guit2.phase.set(1/16)
#     guit1.set([2, 6, 2, 6]*2)
#     guit2.set([4, 5, 4, 5]*2)

def melody2():
    print("MELODY 2")
    guit1.rate.set(1.0)
    guit2.rate.set(1.0)
    guit2.phase.set(1/16)
    guit1.pattern.tween([6, 1, 6, 1]*2, 20.0)
    guit2.pattern.tween([5, 4, 5, 4]*2, 20.0)

def melody3():
    print("MELODY 3")    
    guit2.phase.set(1/16)
    guit1.pattern.tween([6, 1, 6, 1]*2, 20.0)
    guit2.pattern.tween([5, 4, 5, 3]*2, 20.0)

def melody4():
    print("MELODY 4")    
    guit2.phase.set(1/16)
    guit1.pattern.tween([5, -7, 5, -7]*2, 10.0)
    guit2.pattern.tween([4, 2, 4, 2]*2, 10.0).endwith(loop_back)

def loop_back():
    print("LOOP BACK PREP")
    driver.callback(30.0, melody_tween) # dont like this way of doing it

## cycle through whole thing 2 or 3 times -- use second string the second time

## then shift the ebow (first!)
## fade down beats (rate down?)
## full distortion, full reverb high, use return channel to compensate bass
## have an unravel tween
## eventually pull down everything, low end filter


## PROBLEM: sounds out of phase. may be the pattern. the high notes sound like on the one

def unravel():
    print("UNRAVEL")
    volca1.rate.tween(0, 60.0, ease_in)
    volca2.rate.tween(0, 40.0, ease_in).endwith(unspool)

def unspool():
    print("UNSPOOL")
    guit1.rate.tween(1.5, 10.0).repeat()
    guit2.rate.tween(1.5, 8.0).repeat()#5).endwith(slowit)

def slowit():
    print("SLOIT")
    guit1.rate.tween(0.2, 15.0).repeat()
    guit2.rate.tween(0.2, 12.0).repeat()

## end with ebow rattle

set_controls()
beat_intro_1()
play()


"""

ok. so try having tweens instead of hard shifts with the chords.

/

slower chord transitions
the beats need to corral themselves in. 
if I can have a scattering mixed beat in time with that progression, we're hot


all my forms are just big builds.

end with some guitar strums

start with beat play

might have to implement lock

"""


## so the thing is tweening intermediate values -- how would you tween the input to the tween, for example?