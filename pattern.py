""" Pattern is just a list (of whatever) that can be specified in compacted form
    ... with the addition of the Markov expansion of tuples on calling resolve
"""

import random

class Pattern(list):
    
    def __init__(self, value=[0]):
        list.__init__(self, value)
        self.resolve()

    def resolve(self):
        """ Choose a path through the Markov chain """
        return self._unroll(self._subresolve(self))

    def _subresolve(self, pattern):
        """ Resolve a subbranch of the pattern """
        steps = []
        for step in pattern:
            if type(step) == tuple:
                step = self._pick(step)
                if type(step) == tuple or type(step) == list:   ## so Im limiting it to one layer of nesting?
                    step = self._subresolve(step)
            elif type(step) == list:
                step = self._subresolve(step)
            steps.append(step)        
        return steps

    def _pick(self, step):
        """ Choose between options for a given step """
        assert len(step) == 2 or len(step) == 3
        if len(step) == 2:
            if type(step[1]) == float: # (1, 0.5) is a 50% chance of playing a 1, otherwise 0
                step = step[0], [0, 0], step[1] ## it's a 0, 0 because 0 patterns dont progress, and this could be the root level: is this a bug?
            else:
                step = step[0], step[1], 0.5 # (1, 2) is a 50% chance of playing a 1 vs a 2
        step = step[0] if step[2] > random.random() else step[1]    # (1, 2, 0.5) is full form          ## expand this to accommodate any number of options
        return step

    def _unroll(self, pattern, divs=None, r=None):    
        """ Unroll a compacted form to a pattern with lcm steps """
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
        """ Find lcm for a subpattern """
        subs = [(self._get_divs(step) if type(step) == list else 1) * len(pattern) for step in pattern]
        divs = subs[0]
        for step in subs[1:]:
            divs = lcm(divs, step)
        return divs


def lcm(a, b):
    gcd, tmp = a, b
    while tmp != 0:
        gcd, tmp = tmp, gcd % tmp
    return a * b // gcd            
                            




