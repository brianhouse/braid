from .basic_midi import BasicMidi

class Lilypond(BasicMidi):

    def __init__(self, channel=1):  
        BasicMidi.__init__(self, channel)
        self.notation = []

    def play(self, pitch, velocity):
        BasicMidi.play(self, pitch, velocity)
        self.notation.append([pitch, len(self._steps)]) # is this going to work when patterns get complicated?

    def rest(self):
        value = self.notation[-1][-1]
        value /= 2      # questionable
        if value < 1:
            self.notation[-1][-1] = 1
            self.notation.append(["~", ""])
            self.notation.append([self.previous_pitch, len(self._steps)])
        else:
            self.notation[-1][-1] = int(value)

    def output(self):
        engraves = ["%s%s" % (note_heads[note[0]], note[1]) for note in self.notation]
        print("{")
        print(" ".join(engraves))
        print("}")


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

