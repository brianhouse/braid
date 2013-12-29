#!/usr/bin/env python3

from braid import *
nv = nanovector

v1 = Serotonin(1)


def k():
    def f(v):
        v.adsr = 5, 10, 0.1, 8.0
        return C1
    return f

def s():
    def f(v):
        v.adsr = 0, 5, 0.0, 2.0
        return C7
    return f

def h():
    def f(v):
        v.adsr = 5, 5, 0.0, 2.0
        return G8
    return f


TEMPO = 220

v1 = Serotonin(1)
v1.tempo = TEMPO
v1.attack = 50
v1.decay = 100
v1.sustain = 1.0#0.3
v1.release = 100
v1.chord = E3, MAJ

v2 = Serotonin(2)
v2.tempo = TEMPO
v2.attack = 50
v2.decay = 100
v2.sustain = 1.0#0.3
v2.release = 100
v2.chord = E3, MAJ

v3 = Serotonin(3)
v3.tempo = TEMPO
v3.chord = E, MAJ

v4 = Serotonin(4)
v4.tempo = TEMPO
v4.chord = E, MAJ

nv.init(v1, v2, v3, v4)


v1.pattern = [1, 0] * 8
v2.pattern = [0, 1] * 8
v3.pattern = [1, 4] * 8
v4.pattern = [2, 7] * 8


def rotate_velocity(nop=None):
    v3.tween('velocity', None, (random() * 0.6) + 0.4, randint(1, 6), transition_f=power, callback_f=rotate_velocity)
    v4.tween('velocity', None, (random() * 0.6) + 0.4, randint(1, 6), transition_f=power)
rotate_velocity()


# get pulse
nv.vectors[9][v1] = {'sustain': (1.0, 0.3)}
nv.vectors[9][v2] = {'sustain': (1.0, 0.3)}


# pull voices out
nv.vectors[1][v1] = {'bend': (0.0, -12.0), 'velocity': (1.0, 5.0)}
nv.vectors[1][v2] = {'bend': (0.0, 5.0)}

# contract low voices
nv.vectors[2][v1] = {'attack': (50, 5), 'decay': (100, 10), 'sustain': (0.3, 0.1)}
nv.vectors[2][v2] = {'attack': (50, 5), 'decay': (100, 10), 'sustain': (0.3, 0.1), 'velocity': (1.0, 3.0)}

# play for beats
v1_drums = [  [k(), h()],
              [s(), (h(), k()), h(), (h(), s())]
              ]
v2_drums = h(), h(), (h(), [s(), s()]), (k(), [h(), k(), h()])
nv.vectors[3][v1] = {'pattern': ([1, 0]*8, v1_drums), 'bend': (-12.0, -0.0)}
nv.vectors[3][v2] = {'pattern': ([0, 1]*8, v2_drums)}


# start rotating chords
def rotate_shimmer(nop=None):
    v3.pattern = [choice([1, -7, -6]), choice([4, 3])] * 8
    v4.pattern = [2, choice([6, 7])] * 8
    cycles = randint(3, 10)
    v3.shimmer = 0.0
    v3.tween('shimmer', 0.0, 1.0, cycles, callback_f=rotate_shimmer)

def set_shimmer(value):
    if value == 1:
        log.info("SHIMMER ON")
        rotate_shimmer()
    else:
        log.info("SHIMMER OFF")
        v3.remove_tween('shimmer')

control.callback("3_onoff", set_shimmer)



# beats with bass
def ba():
    def f(v):
        # v.attack, v.decay, v.sustain, v.velocity = 10, 600, 1.0, 1.0
        v.attack = 10
        v.decay = 600
        v.sustain = 1.0
        v.velocity = 1.0
        return choice([Gb-OCT-OCT, Ab-OCT-OCT-OCT, A-OCT-OCT-OCT, Z])
    return f

def set_pattern(v=None):
    # if random() > 0.5:
    #     v1_bass = [ba(), Z, Z, Z]
    #     v2_bass = [Z, ba(), 0, 0]  
    # else:
    #     v1_bass = [Z, ba(), 0, 0]
    #     v2_bass = [ba(), Z, Z, Z]        
    if random() > 0.5:
        v1_bass = [ba(), h(), [s(), s()], [s(), s()]]
        v2_bass = [h(), ba(), 0, 0]  
    else:
        v1_bass = [s(), ba(), 0, 0]
        v2_bass = [ba(), s(), (h(), [s(), s()]), [h(), s(), s()]]    
    v1.pattern = v1_bass
    v2.pattern = v2_bass              
    v1.callback(1, set_pattern)

def start_bass(value):
    if value == 1:
        set_pattern()
    else:
        v1.clear_callback(set_pattern)
        v1.pattern = v1_drums
        v2.pattern = v2_drums

control.callback("4_onoff", start_bass)



driver.start()

