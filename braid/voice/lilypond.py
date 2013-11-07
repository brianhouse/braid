import subprocess
from .basic_midi import BasicMidi
from ..util import log

class Lilypond(BasicMidi):

    def __init__(self, channel=1, template=None, beats=4):      # in theory, should apply key signature dynamically
        BasicMidi.__init__(self, channel)
        self.staff = [PulseDivision()]
        self.template = template
        self.beats = beats        

    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity        
        BasicMidi.play(self, pitch, velocity)
        remainder = self.staff[-1].append(pitch, (1.0 / len(self._steps)) * self.beats)
        if remainder is not None:
            self.staff.append(PulseDivision())
            self.staff[-1].append(pitch, remainder)

    def hold(self):
        remainder = self.staff[-1].append(0, (1.0 / len(self._steps)) * self.beats)
        if remainder is not None:
            self.staff[-1].tie = True            
            self.staff.append(PulseDivision())
            self.staff[-1].append(self.previous_pitch, remainder)

    def rest(self):
        self.play(0, 0)


    def output(self):
        ## currently, this does not handle triplets
        ## currently, this does not handle rests        
        # print(self.staff)
        output = []
        for d, division in enumerate(self.staff):
            if d % self.beats == 0:
                if d != 0:
                    output.append("\n\t")            
            else:
                output.append(" ")
            engraves = []
            for note in division.notes:
                compound = []
                remainder = note[1] / self.beats # total duration value
                while True:
                    # 'element' is the duration part of the note
                    element = 1

                    # find the largest valid note value less than or equal to the element
                    while 1 / element > remainder:  
                        element *= 2

                    # if we already have something, and our new element is half of it, we could use a dot
                    if len(compound) and type(compound[-1]) == int and compound[-1] == element // 2:
                        compound[-1] = "%s." % compound[-1]

                    # otherwise it's going to be a tied value
                    else:
                        compound.append(element)

                    # loop if necessary
                    remainder = remainder - (1 / element)
                    if remainder == 0.0:
                        break                 

                # write out each duration element and tie them
                for e, element in enumerate(compound):
                    engraves.append("%s%s" % (note_heads[note[0]], element))
                    if e != len(compound) - 1:
                        engraves.append("~")

            print(division.tie)
            if division.tie:
                engraves.append("~")
            output.append(" ".join(engraves))
        output = "".join(output)
        self.make_file(output)

    def make_file(self, output):
        if self.template is None: 
            print(output)
            return
        f = open("%s.template.ly" % self.template)
        score_template = f.read()
        f.close()
        score = score_template.replace("SCOREDATA", output)
        f = open("%s.ly" % self.template, "w")
        f.write(score)
        f.close()
        subprocess.call("lilypond %s.ly" % self.template, shell=True)
        subprocess.call("open %s.pdf" % self.template, shell=True)


class PulseDivision(object):

    def __init__(self):
        self.notes = []
        self.percent_filled = 0.0
        self.tie = False

    def append(self, pitch, value):
        if self.percent_filled + value <= 1.0:
            if pitch == 0:
                if not len(self.notes):
                    pass
                    ## this is a hold, but no note to hold. make a rest here?
                else:
                    self.notes[-1][-1] += value
            else:
                self.notes.append([pitch, value])
            self.percent_filled += value
            return None
        else:            
            used_percent = 1.0 - self.percent_filled
            if used_percent > 0:
                self.notes.append([pitch, used_percent])
                value -= used_percent
                self.tie = True
            return value

    def __repr__(self):
        return str(tuple(self.notes))


## probably should not be constants, will have to address key sig
note_heads = {
    "~": "~",
    24: "c,,",
    25: "des,,",
    26: "d,,",
    27: "ees,,",
    28: "e,,",
    29: "f,,",
    30: "fis,,",
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
    42: "fis,",
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
    54: "fis",
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
    66: "fis'",
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
    78: "fis''",
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
    90: "fis'''",
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
    102: "fis''''",
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
    114: "fis'''''",
    115: "g'''''",
    116: "aes'''''",
    117: "a'''''",
    118: "bes'''''",
    119: "b'''''",
}
