import collections, math
from random import random
from .signal import linear
from .pattern import Pattern, blend

class Tween(object):

    def __init__(self, target_value, cycles, signal_f=linear):
        self.target_value = target_value
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

    
class ScalarTween(Tween):

    def calc_value(self, position):        
        value = (position * (self.target_value - self.start_value)) + self.start_value
        return value

        
class ChordTween(Tween):

    def calc_value(self, position):
        if random() > position:        
            return self.start_value
        else:
            return self.target_value


class PatternTween(Tween):    

    def calc_value(self, position):
        return blend(self.start_value, self.target_value, position)


def tween(value, cycles):
    if type(value) == float:
        return ScalarTween(value, cycles)
    if type(value) == tuple:
        return ChordTween(value, cycles)
    if type(value) == list:
        value = Pattern(value)
    if type(value) == Pattern:
        return PatternTween(value, cycles)
