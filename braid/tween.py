import collections, math
from random import random
from .signal import linear
from .pattern import Pattern, blend
from .core import driver
from .notation import Scale


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
        if self.cycles == 0.0:
            return 1.0
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

        
class DiscreteTween(Tween):

    def calc_value(self, position):
        if random() > position:        
            return self.start_value
        else:
            return self.target_value


class TupleTween(Tween):

    def calc_value(self, position):
        values = []
        for i in range(len(self.target_value)):
            values.append((position * (self.target_value[i] - self.start_value[i])) + self.start_value[i])
        print(values)
        return tuple(values)


class PatternTween(Tween):    

    def calc_value(self, position):
        return blend(self.start_value, self.target_value, position)


class RateTween(ScalarTween):

    def start(self, thread, start_value):
        self.thread = driver    # rate tweens are based on the driver reference
        self.syncer = thread    # this is the actual reference to the current thread
        self.start_value = start_value
        self.start_cycle = float(math.ceil(driver._cycles))  

    def get_phase(self):
        driver_cycles_remaining = self.cycles - (driver._cycles - self.start_cycle)
        if driver_cycles_remaining <= 0:
            return None
        time_remaining = driver_cycles_remaining / driver.rate
        acceleration = ((driver.rate * self.target_value) - self.syncer.rate) / time_remaining
        syncer_cycles_remaining = (self.syncer.rate * time_remaining) + (0.5 * (acceleration * (time_remaining * time_remaining)))            
        cycles_at_completion = syncer_cycles_remaining + self.syncer._cycles
        phase_at_completion = cycles_at_completion % 1.0
        phase_correction = phase_at_completion
        phase_correction *= -1        
        if phase_correction < 0.0:
            phase_correction = 1.0 + phase_correction
        return phase_correction


def tween(value, cycles, signal_f=linear):
    if type(value) == int or type(value) == float:
        return ScalarTween(value, cycles, signal_f)
    if type(value) == tuple and len(value) == 2 and type(value[1]) == Scale: # special case for chords
        return DiscreteTween(value, cycles, signal_f)
    if type(value) == tuple:
        return TupleTween(value, cycles, signal_f)
    if type(value) == list: # careful, lists are always patterns
        value = Pattern(value)
    if type(value) == Pattern:
        return PatternTween(value, cycles, signal_f)
