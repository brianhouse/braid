import collections
from random import choice, random
from .lib import num_args


class Pattern(list):

    """ Pattern is just a list (of whatever) that can be specified in compacted form
        ... with the addition of the Markov expansion of tuples on calling resolve
        ... and some blending functions
    """
    
    def __init__(self, value=[0]):
        list.__init__(self, value)

    def resolve(self):
        """Choose a path through the Markov chain"""
        return self._unroll(self._subresolve(self))

    def _subresolve(self, pattern):
        """Resolve a subbranch of the pattern"""
        steps = []
        for step in pattern:
            while type(step) == tuple:
                step = choice(step)
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

    def rotate(self, steps=1):
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
            if random() > ease_out(balance):     # avoid empty middle from linear blend
                pattern[i] = p1_steps[int(i / p1_div)]
        elif i % p2_div == 0:
            if random() <= ease_in(balance):
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
