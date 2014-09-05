from random import random
from .tween import PatternTween

class Pattern(list):

    """ Pattern is just a list (of whatever) that can be specified in compacted form
        ... with the addition of the Markov expansion of tuples on calling resolve
    """
    
    def __init__(self, value=[0]):
        list.__init__(self, value)
        self.tween = PatternTween(self)

    def resolve(self):
        """Choose a path through the Markov chain"""
        return self._unroll(self._subresolve(self))

    def _subresolve(self, pattern):
        """Resolve a subbranch of the pattern"""
        steps = []
        for step in pattern:
            if type(step) == tuple:
                step = self._pick(step)
                if type(step) == tuple or type(step) == list:
                    step = self._subresolve(step)
            elif type(step) == list:
                step = self._subresolve(step)
            steps.append(step)        
        return steps

    def _pick(self, step):
        """Choose between options for a given step"""
        assert len(step) == 2 or len(step) == 3
        if len(step) == 2:
            if type(step[1]) == float: # (1, 0.5) is a 50% chance of playing a 1, otherwise 0
                step = step[0], [0, 0], step[1] ## it's a 0, 0 because 0 patterns dont progress, and this could be the root level: is this a bug?
            else:
                step = step[0], step[1], 0.5 # (1, 2) is a 50% chance of playing a 1 vs a 2
        step = step[0] if step[2] > random() else step[1]    # (1, 2, 0.5) is full form          ## expand this to accommodate any number of options
        return step

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


class CrossPattern(Pattern):

    def __init__(self, pattern_1, pattern_2, balance=0.5):
        self.pattern_1 = pattern_1 if isinstance(pattern_1, Pattern) else Pattern(pattern_1)
        self.pattern_2 = pattern_2 if isinstance(pattern_2, Pattern) else Pattern(pattern_2)
        self.balance = balance
        self.tween = PatternTween(self)
        self.resolve()

    def resolve(self):
        """Choose a path through the Markov chain"""
        pattern = blend(self.pattern_1, self.pattern_2, self.balance)
        result = self._unroll(self._subresolve(pattern))
        list.__init__(self, result)
        return result
        

def blend(pattern_1, pattern_2, balance=0.5):
    """Probabalistically blend two Patterns"""
    p1_steps = pattern_1.resolve()
    p2_steps = pattern_2.resolve()        
    pattern = [None] * lcm(len(p1_steps), len(p2_steps))
    p1_div = len(pattern) / len(p1_steps)
    p2_div = len(pattern) / len(p2_steps)                
    for i, cell in enumerate(pattern):
        if i % p1_div == 0 and i % p2_div == 0:
            if random() > balance:
                pattern[i] = p1_steps[int(i / p1_div)]
            else:
                pattern[i] = p2_steps[int(i / p2_div)]
        elif i % p1_div == 0:     
            if random() > balance:               
                pattern[i] = p1_steps[int(i / p1_div)]
        elif i % p2_div == 0:
            if random() <= balance:
                pattern[i] = p2_steps[int(i / p2_div)]
    pattern = Pattern(pattern)
    return pattern


def lcm(a, b):
    gcd, tmp = a, b
    while tmp != 0:
        gcd, tmp = tmp, gcd % tmp
    return a * b // gcd            
                            




