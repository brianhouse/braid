from random import randint, choice, random, shuffle, uniform
from collections import deque
from bisect import bisect_left
from .signal import amp_bias, calc_pos


class Scale(list):
    """Allows for specifying scales by degree, up to 1 octave below and octaves_above above (default 2)"""
    """Set constrain=True to octave shift out-of-range degrees into range, preserving pitch class, else ScaleError"""
    """Any number of scale steps is supported, but default for MAJ: """
    """ -1, -2, -3, -4, -5, -6, -7, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14"""

    def __init__(self, *args, constrain=False, octaves_above=2):
        self.constrain = constrain
        self.octaves_above = octaves_above
        super(Scale, self).__init__(*args)

    def __getitem__(self, degree):
        grace = False
        if type(degree) == float:
            degree = int(degree)
            grace = True
        if not ((type(degree) == int or degree == R) and degree != 0):
            raise ScaleError(degree)
        octave_shift = 0
        if degree == R:
            degree = list.__getitem__(self, randint(0, len(self) - 1))
        if self.constrain:
            while degree > self._upper_bound():
                degree = degree - len(self)
            while degree < 0 - len(self):
                degree = degree + len(self)
        else:
            if degree > self._upper_bound() or degree < 0 - len(self):
                raise ScaleError(degree)
        if degree < 0:
            degree = abs(degree)
            octave_shift -= 12
        if degree > len(self):
            octave_shift += ((degree - 1) // len(self)) * 12
        degree = ((degree - 1) % len(self)) + 1
        semitone = super(Scale, self).__getitem__(degree - 1)
        semitone += octave_shift
        if grace:
            return float(semitone)
        return semitone

    def _upper_bound(self):
        return len(self) * self.octaves_above

    def rotate(self, steps):
        l = list(self)
        scale = l[steps:] + l[:steps]
        scale = [degree - scale[0] for degree in scale]
        scale = [(degree + 12) if degree < 0 else degree for degree in scale]
        return Scale(scale)

    def quantize(self, interval):
        """Quantize a semitone interval to the scale, negative and positive intervals are accepted without bounds"""
        """Intervals not in the scale are shifted up in pitch to the nearest interval in the scale"""
        """i.e. for MAJ, 1 returns 2,  3 returns 4, -2 returns -1, -4 returns -3, etc..."""
        if interval in self:
            return interval
        octave_shift = (interval // 12) * 12
        interval = interval - octave_shift
        degree = bisect_left(list(self), interval) + 1
        return self[degree] + octave_shift


class ScaleError(Exception):

    def __init__(self, degree):
        self.degree = degree

    def __str__(self):
        return repr("Illegal scale degree '%s'" % self.degree)


K = 36
S = 38
H = 42
O = 46

CN = 12
DbN = 13
DN = 14
EbN = 15
EN = 16
FN = 17
GbN = 18
GN = 19
AbN = 20
AN = 21
BbN = 22
BN = 23

C0 = 24
Db0 = 25
D0 = 26
Eb0 = 27
E0 = 28
F0 = 29
Gb0 = 30
G0 = 31
Ab0 = 32
A0 = 33
Bb0 = 34
B0 = 35

C1 = 36
Db1 = 37
D1 = 38
Eb1 = 39
E1 = 40
F1 = 41
Gb1 = 42
G1 = 43
Ab1 = 44
A1 = 45
Bb1 = 46
B1 = 47

C2 = 48
Db2 = 49
D2 = 50
Eb2 = 51
E2 = 52
F2 = 53
Gb2 = 54
G2 = 55
Ab2 = 56
A2 = 57
Bb2 = 58
B2 = 59

C = C3 = 60
Db = Db3 = 61
D = D3 = 62
Eb = Eb3 = 63
E = E3 = 64
F = F3 = 65
Gb = Gb3 = 66
G = G3 = 67
Ab = Ab3 = 68
A = A3 = 69
Bb = Bb3 = 70
B = B3 = 71

C4 = 72
Db4 = 73
D4 = 74
Eb4 = 75
E4 = 76
F4 = 77
Gb4 = 78
G4 = 79
Ab4 = 80
A4 = 81
Bb4 = 82
B4 = 83

C5 = 84
Db5 = 85
D5 = 86
Eb5 = 87
E5 = 88
F5 = 89
Gb5 = 90
G5 = 91
Ab5 = 92
A5 = 93
Bb5 = 94
B5 = 95

C6 = 96
Db6 = 97
D6 = 98
Eb6 = 99
E6 = 100
F6 = 101
Gb6 = 102
G6 = 103
Ab6 = 104
A6 = 105
Bb6 = 106
B6 = 107

C7 = 108
Db7 = 109
D7 = 110
Eb7 = 111
E7 = 112
F7 = 113
Gb7 = 114
G7 = 115
Ab7 = 116
A7 = 117
Bb7 = 118
B7 = 119

# western modes / chords

ION = MAJ = Scale([0, 2, 4, 5, 7, 9, 11])

DOR = ION.rotate(1)

PRG = SUSb9 = ION.rotate(2)

LYD = ION.rotate(3)

MYX = DOM = ION.rotate(4)

AOL = NMI = ION.rotate(5)

LOC = ION.rotate(6)

MIN = HMI = Scale([0, 2, 3, 5, 7, 8, 11])  # Harmonic Minor

MMI = Scale([0, 2, 3, 5, 7, 9, 11])  # Melodic Minor

BLU = BMI = Scale([0, 3, 5, 6, 7, 10])  # Blues Minor

BMA = Scale([0, 3, 4, 7, 9, 10])  # Blues major (From midipal/BitT source code)

PEN = Scale([0, 2, 5, 7, 10])

PMA = Scale([0, 2, 4, 7, 9])  # Pentatonic major (From midipal/BitT source code)

PMI = Scale([0, 3, 5, 7, 10])  # Pentatonic minor (From midipal/BitT source code)

# world

FLK = Scale([0, 1, 3, 4, 5, 7, 8, 10])  # Folk (From midipal/BitT source code)

JPN = Scale([0, 1, 5, 7, 8])  # Japanese (From midipal/BitT source code)

GYP = Scale([0, 2, 3, 6, 7, 8, 11])  # Gypsy (From MI Braids source code)

ARB = Scale([0, 1, 4, 5, 7, 8, 11])  # Arabian (From MI Braids source code)

FLM = Scale([0, 1, 4, 5, 7, 8, 10])  # Flamenco (From MI Braids source code)

# other

WHL = Scale([0, 2, 4, 6, 8, 10])  # Whole tone (From midipal/BitT source code)

# chromatic

CHR = Scale([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])

# gamelan

GML = Scale([0, 1, 3, 7, 8])  # Gamelan (From midipal/BitT source code)

SDR = Scale([0, 2, 5, 7, 9])

PLG = Scale([0, 1, 3, 6, 7, 8, 10])

# personal

JAM = Scale([0, 2, 3, 5, 6, 7, 10, 11])

# stepwise drums

DRM = Scale([0, 2, 7, 14, 6, 10, 3, 39, 31, 13])

#

R = 'R'  # random
Z = 'REST'  # rest


def g(note):
    # create grace note from named step
    return float(note)


def v(note, v_scale=None):
    # create a note with scaled velocity from named (or unnamed) step
    # v_scale can be a single float value (the part before the decimal is ignored)
    # or it can be a tuple of (lo, hi) specifying a range for random scaling, e.g. v(C4, (.2, .9))
    # else randomly generate v_scale between 0.17 and 0.999
    if type(v_scale) == float:
        v_scale = v_scale % 1  # ignore any part before the decimal
    elif type(v_scale) == tuple and len(v_scale):
        hi = 0.999 if len(v_scale) < 2 else v_scale[1] % 1  # allow specifying only lo, e.g. v(C, (.5,))
        v_scale = uniform(v_scale[0] % 1, hi)
    else:
        v_scale = uniform(0.17, 0.999)
    return int(note) + v_scale


def s(signal, a=1, r=1, p=0, b=0, v_scale=None):
    # Use signals to dynamically generate note pitches and velocities with base phase derived from the thread
    def f(t):
        pos = calc_pos(t._base_phase, r, p)
        n = signal(pos)
        if v_scale is not None:
            vs = v_scale(pos) if callable(v_scale) else v_scale
            n = v(n, v_scale=vs)
        return amp_bias(n, a, b, pos)

    return f
