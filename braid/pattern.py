import collections
from random import choice, random
from . import num_args
from .signal import ease_in, ease_out

class Q(collections.deque):
    """Q is a wrapper around collections.deque for making rotating note 'queues'
       Set drunk=True to randomize the rotation direction, else always rotate right.
       e.g. Q([1, 2, 3]) returns 1 on the first cycle, then 2 on the next, then 3, then 1, etc...
    """
    def __init__(self, iterable, drunk=False):
        self.drunk = drunk
        super(Q, self).__init__(iterable)

class Pattern(list):

    """ Pattern is just a list (of whatever) that can be specified in compacted form
        ... with the addition of the Markov expansion of tuples and rotating Qs on calling resolve
        ... and some blending functions
        Set drunk = True to treat all Qs as if they are drunk = True, else defer to each Q's drunk property
    """

    def __init__(self, value=[0], drunk=False):
        self.drunk = drunk
        list.__init__(self, value)

    def resolve(self):
        """Choose a path through the Markov chain"""
        return self._unroll(self._subresolve(self))

    def _subresolve(self, pattern):
        """Resolve a subbranch of the pattern"""
        steps = []
        for step in pattern:
            while type(step) == tuple or type(step) == Q:
                if type(step) == tuple:
                    step = choice(step)
                else:
                    coin = choice([0, 1])
                    if coin and (self.drunk or step.drunk):
                        step.rotate(1)
                    else:
                        step.rotate(-1)
                    step = step[-1]

            if type(step) == list:
                step = self._subresolve(step)
            steps.append(step)
        return steps

    def _unroll(self, pattern, divs=None, r=None):
        """Unroll a compacted form to a pattern with lcm steps"""
        if divs is None:
            divs = self._get_divs(pattern)
            r = []
        elif r is None:
            r = []
        for step in pattern:
            if type(step) == list:
                self._unroll(step, (divs // len(pattern)), r)
            else:
                r.append(step)
                for i in range((divs // len(pattern)) - 1):
                    r.append(0)
        return r

    def _get_divs(self, pattern):
        """Find lcm for a subpattern"""
        subs = [(self._get_divs(step) if type(step) == list else 1) * len(pattern) for step in pattern]
        divs = subs[0]
        for step in subs[1:]:
            divs = lcm(divs, step)
        return divs

    def __repr__(self):
        return "P%s" % list.__repr__(self)

    def notes(self):
        """return a list of all values in pattern that are not 0 or REST"""
        return [n for n in self if n != 0 and n != 'REST']

    def replace(self, value, target):
        list.__init__(self, [target if step == value else value for step in self])

    def rotate(self, steps=1):
        # steps > 0 = right rotation, steps < 0 = left rotation
        if steps:
            steps = -(steps % len(self))
            list.__init__(self, self[steps:] + self[:steps])

    def blend(self, pattern_2, balance=0.5):
        l = blend(self, pattern_2, balance)
        list.__init__(self, l)

    def add(self, pattern_2):
        l = add(self, pattern_2)
        list.__init__(self, l)

    def xor(self, pattern_2):
        l = xor(self, pattern_2)
        list.__init__(self, l)

    def invert(self, off_note=0, note_list=None):
        """replace all occurrences of off_note with consecutive values from note_list (default = self.notes())"""
        """and replace all occurrences of NOT off_note with off_note"""
        """e.g. [1, 0, 2, 0, 3] becomes [0, 1, 0, 2, 0]"""
        if note_list is None:
            note_list = self.notes()
        inverted_pattern = []
        i = 0
        for n in self:
            if n == off_note:
                inverted_pattern.append(note_list[i % len(note_list)])
                i += 1
            else:
                inverted_pattern.append(off_note)
        list.__init__(self, inverted_pattern)


def prep(pattern_1, pattern_2):
    if type(pattern_1) is not Pattern:
        pattern_1 = Pattern(pattern_1)
    if type(pattern_2) is not Pattern:
        pattern_2 = Pattern(pattern_2)
    p1_steps = pattern_1.resolve()
    p2_steps = pattern_2.resolve()
    pattern = [None] * lcm(len(p1_steps), len(p2_steps))
    p1_div = len(pattern) / len(p1_steps)
    p2_div = len(pattern) / len(p2_steps)
    return pattern, p1_steps, p2_steps, p1_div, p2_div


def blend(pattern_1, pattern_2, balance=0.5):
    """Probabalistically blend two Patterns"""
    pattern, p1_steps, p2_steps, p1_div, p2_div = prep(pattern_1, pattern_2)
    for i, cell in enumerate(pattern):
        if i % p1_div == 0 and i % p2_div == 0:
            if random() > balance:
                pattern[i] = p1_steps[int(i / p1_div)]
            else:
                pattern[i] = p2_steps[int(i / p2_div)]
        elif i % p1_div == 0:
            if random() > ease_out()(balance):     # avoid empty middle from linear blend
                pattern[i] = p1_steps[int(i / p1_div)]
        elif i % p2_div == 0:
            if random() <= ease_in()(balance):
                pattern[i] = p2_steps[int(i / p2_div)]
    pattern = Pattern(pattern)
    return pattern


def add(pattern_1, pattern_2):
    """Produce the AND of two patterns"""
    pattern, p1_steps, p2_steps, p1_div, p2_div = prep(pattern_1, pattern_2)
    for i, cell in enumerate(pattern):
        step_1 = p1_steps[int(i / p1_div)]
        step_2 = p2_steps[int(i / p2_div)]
        if i % p1_div == 0 and step_1 != 0 and step_1 != None:
            pattern[i] = step_1
        elif i % p2_div == 0 and step_2 != 0 and step_2 != None:
            pattern[i] = p2_steps[int(i / p2_div)]
    pattern = Pattern(pattern)
    return pattern


def xor(pattern_1, pattern_2):
    """Produce the XOR of two patterns"""
    pattern, p1_steps, p2_steps, p1_div, p2_div = prep(pattern_1, pattern_2)
    for i, cell in enumerate(pattern):
        step_1 = p1_steps[int(i / p1_div)]
        step_2 = p2_steps[int(i / p2_div)]
        if i % p1_div == 0 and step_1 != 0 and step_1 != None and i % p2_div == 0 and step_2 != 0  and step_2 != None:
            pass
        elif i % p1_div == 0 and step_1 != 0 and step_1 != None:
            pattern[i] = p1_steps[int(i / p1_div)]
        elif i % p2_div == 0 and step_2 != 0 and step_2 != None:
            pattern[i] = p2_steps[int(i / p2_div)]
    pattern = Pattern(pattern)
    return pattern


def lcm(a, b):
    gcd, tmp = a, b
    while tmp != 0:
        gcd, tmp = tmp, gcd % tmp
    return a * b // gcd


def euc(steps, pulses, rotation=0, invert=False, note=1, off_note=0, note_list=None, off_note_list=None):
    steps = int(steps)
    pulses = int(pulses)
    if pulses > steps:
        print("Make pulses > steps")
        return None
    pattern = []
    counts = []
    remainders = []
    divisor = steps - pulses
    remainders.append(pulses)
    level = 0
    while True:
        counts.append(divisor // remainders[level])
        remainders.append(divisor % remainders[level])
        divisor = remainders[level]
        level = level + 1
        if remainders[level] <= 1:
            break
    counts.append(divisor)

    def build(level):
        if level == -1:
            pattern.append(off_note)
        elif level == -2:
            pattern.append(note)
        else:
            for i in range(0, counts[level]):
                build(level - 1)
            if remainders[level] != 0:
                build(level - 2)
                
    build(level)
    i = pattern.index(note)
    pattern = pattern[i:] + pattern[0:i]

    if rotation:
        pattern = Pattern(pattern)
        pattern.rotate(rotation)
        pattern = list(pattern)
    if note_list is None:
        note_list = [note]
    if off_note_list is None:
        off_note_list = [off_note]
    pulse = off_note if invert else note
    final_pattern = []
    i = j = 0
    for n in pattern:
        if n == pulse:
            final_pattern.append(note_list[i % len(note_list)])
            i += 1
        else:
            final_pattern.append(off_note_list[j % len(off_note_list)])
            j += 1

    return final_pattern

