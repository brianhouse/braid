from .basic_midi import BasicMidi
from ..util import log

class Lilypond(BasicMidi):

    def __init__(self, channel=1):  
        BasicMidi.__init__(self, channel)
        self.staff = [Measure()]

    def play(self, pitch, velocity):
        BasicMidi.play(self, pitch, velocity)
        remainder = self.staff[-1].append(pitch, float(len(self._steps))) # is this going to work when patterns get poly complicated?
        if remainder is not None:
            self.staff.append(Measure())
            self.staff[-1].append(pitch, remainder)
        # print(self.staff)

    def hold(self):
        remainder = self.staff[-1].append(0, len(self._steps))
        if remainder is not None:
            self.staff.append(Measure())
            self.staff[-1].append(self.previous_pitch, remainder)
        # print(self.staff)

    def rest(self):
        self.play(0, 0)
        print("resting")

    def output(self):
        log.info("///////////////// LILYPOND ///////////////////")            
        output = []
        output.append("{")
        last_pitch = None        
        print(self.staff)
        for measure in self.staff:
            engraves = []

            ## so the translation between meter and note division is going to be the fun part with this, eventually
            ## for now, just doing this manually
            for note in measure.notes:
                if note[1] % 1.0 == 0.0:
                    timing = int(note[1])
                elif 1 / note[1] == 0.75:
                    timing = str(int(note[1]) * 2) + "."
                elif 1 / note[1] == 0.375:
                    timing = str(int(note[1]) * 2) + "."
                elif 1 / note[1] == 0.625:
                    engraves.append("%s%s" % (note_heads[note[0]], 2))
                    engraves.append("~")
                    engraves.append("%s%s" % (note_heads[note[0]], 8))    
                    last_pitch = note[0]
                    continue
                elif 1 / note[1] == 0.875:
                    engraves.append("%s%s." % (note_heads[note[0]], 2))
                    engraves.append("~")
                    engraves.append("%s%s" % (note_heads[note[0]], 8))    
                    last_pitch = note[0]
                    continue
                else:
                    timing = note[1]
                if note[0] == last_pitch:
                    engraves.append("~")
                engraves.append("%s%s" % (note_heads[note[0]], timing))
                last_pitch = note[0]
            output.append(" ".join(engraves))
        output.append("}")
        output.append("\n")
        output = "\n\t".join(output)
        print(output)


class Measure(object):

    def __init__(self):
        self.notes = []
        self.percent_filled = 0.0

    def append(self, pitch, value):
        # print(value)
        if self.percent_filled + (1 / value) <= 1.0:
            if pitch == 0:
                if not len(self.notes):
                    pass
                    ## make a rest here!
                else:
                    self.notes[-1][-1] = 1 / ((1 / self.notes[-1][-1]) + (1 / value))
            else:
                self.notes.append([pitch, value])
            self.percent_filled += 1 / value
            return None
        else:
            r_percent = 1.0 - self.percent_filled
            if r_percent > 0:
                r_value = 1.0 / r_percent
                self.notes.append([pitch, r_value])
                n_value = 1 / ((1 / value) - (1 / r_value))
                return n_value
            else:
                return value

    def __repr__(self):
        return str(tuple(self.notes))


note_heads = {
    "~": "~",
    24: "c,,",
    25: "des,,",
    26: "d,,",
    27: "ees,,",
    28: "e,,",
    29: "f,,",
    30: "ges,,",
    31: "g,,",
    32: "aes,,",
    33: "a,,",
    34: "bes,,",
    35: "b,,",

    36: "c,",
    37: "des,",
    38: "d,",
    39: "ees,",
    40: "e,",
    41: "f,",
    42: "ges,",
    43: "g,",
    44: "aes,",
    45: "a,",
    46: "bes,",
    47: "b,",

    48: "c",
    49: "des",
    50: "d",
    51: "ees",
    52: "e",
    53: "f",
    54: "ges",
    55: "g",
    56: "aes",
    57: "a",
    58: "bes",
    59: "b",

    60: "c'",
    61: "des'",
    62: "d'",
    63: "ees'",
    64: "e'",
    65: "f'",
    66: "ges'",
    67: "g'",
    68: "aes'",
    69: "a'",
    70: "bes'",
    71: "b'",

    72: "c''",
    73: "des''",
    74: "d''",
    75: "ees''",
    76: "e''",
    77: "f''",
    78: "ges''",
    79: "g''",
    80: "aes''",
    81: "a''",
    82: "bes''",
    83: "b''",

    84: "c'''",
    85: "des'''",
    86: "d'''",
    87: "ees'''",
    88: "e'''",
    89: "f'''",
    90: "ges'''",
    91: "g'''",
    92: "aes'''",
    93: "a'''",
    94: "bes'''",
    95: "b'''",

    96: "c''''",
    97: "des''''",
    98: "d''''",
    99: "ees''''",
    100: "e''''",
    101: "f''''",
    102: "ges''''",
    103: "g''''",
    104: "aes''''",
    105: "a''''",
    106: "bes''''",
    107: "b''''",

    108: "c'''''",
    109: "des'''''",
    110: "d'''''",
    111: "ees'''''",
    112: "e'''''",
    113: "f'''''",
    114: "ges'''''",
    115: "g'''''",
    116: "aes'''''",
    117: "a'''''",
    118: "bes'''''",
    119: "b'''''",
}

