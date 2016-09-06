import collections, math
from random import random
from .signal import linear
from .pattern import Pattern

class Tween(object):

    def __init__(self, target_value, cycles, signal_f=linear):
        self.target_value = target_value
        if isinstance(self, PatternTween) and not isinstance(self.target_value, Pattern):
            self.target_value = Pattern(self.target_value)        
        self.cycles = cycles
        self.signal_f = signal_f
        self.finished = False

    def start(self, thread, start_value):
        self.thread = thread
        self.start_value = start_value
        self.start_cycle = float(math.ceil(self.thread._cycles)) # threads always start on next cycle

    @property
    def value(self):            
        if self.finished:
            return self.target_value
        return self.calc_value(self.signal_position)

    @property
    def signal_position(self): # can reference this to see where we are on the signal function
        return self.signal_f(self.position)        

    @property
    def position(self): # can reference this to see where we are in the tween
        position = (self.thread._cycles - self.start_cycle) / self.cycles
        if position <= 0.0:
            position = 0.0
        if position >= 1.0:
            position = 1.0
            self.finished = True
        return position        

    
class ContinuousTween(Tween):

    def calc_value(self, position):        
        value = (position * (self.target_value - self.start_value)) + self.start_value
        return value

        
class TupleTween(Tween):

    def calc_value(self, position):
        values = []
        for i in range(len(self.target_value)):
            values.append((position * (self.target_value[i] - self.start_value[i])) + self.start_value[i])
        return values


class PatternTween(Tween):    

    def calc_value(self, position):
        """ This only runs when a pattern is refreshed, not every step; 
            resolve steps for start and target, blend them, and return the result as a pattern
        """
        from .pattern import blend # avoid circular        
        if position <= 0.0:
            return self.start_value
        if position >= 1.0:
            return self.target_value # need this to preserve markov tween destinations
        pattern = blend(self.start_value, self.target_value, position)
        return pattern


def tween(value, cycles):
    if type(value) == float:
        return ContinuousTween(value, cycles)
    if type(value) == tuple:
        return TupleTween(value, cycles)
    if type(value) == Pattern:
        return PatternTween(value, cycles)
