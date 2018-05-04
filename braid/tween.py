import collections, math
from random import random
from .signal import linear
from .pattern import Pattern, blend, euc, add, xor
from .core import driver


class Tween(object):

    def __init__(self, target_value, cycles, signal_f=linear, on_end=None, osc=False, start_value=None):
        self.target_value = target_value
        self.cycles = cycles
        self.signal_f = signal_f
        self.end_f = on_end
        self.osc = osc
        self.start_value = start_value
        self.finished = False

    def start(self, thread, start_value):
        self.thread = thread
        self.start_value = start_value if self.start_value is None else self.start_value    # needed for osc
        self.start_cycle = float(math.ceil(self.thread._cycles)) # tweens always start on next cycle

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
            if self.end_f is not None:
                try:
                    self.end_f()
                except Exception as e:
                    print("[Error tween.on_end: %s]" % e)
            if self.osc:
                sv = self.target_value
                self.target_value = self.start_value
                self.start_value = sv
                self.start_cycle = self.thread._cycles - ((self.thread._cycles - self.start_cycle) - self.cycles)
                position = abs(1 - position)
            else:
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
        acceleration = ((self.target_value * driver.rate) - (self.syncer.rate * driver.rate)) / time_remaining
        syncer_cycles_remaining = (self.syncer.rate * driver.rate * time_remaining) + (0.5 * (acceleration * (time_remaining * time_remaining)))
        cycles_at_completion = syncer_cycles_remaining + self.syncer._cycles
        phase_at_completion = cycles_at_completion % 1.0
        phase_correction = phase_at_completion
        phase_correction *= -1        
        if phase_correction < 0.0:
            phase_correction = 1.0 + phase_correction
        return phase_correction


def tween(value, cycles, signal_f=linear, on_end=None, osc=False, start=None):
    if type(value) == int or type(value) == float:
        return ScalarTween(value, cycles, signal_f, on_end, osc, start)
    if type(value) == tuple:
        return ChordTween(value, cycles, signal_f, one_end, osc, start)
    if type(value) == list: # careful, lists are always patterns
        value = Pattern(value)
    if type(value) == Pattern:
        return PatternTween(value, cycles, signal_f, on_end, osc, start)

def osc(start, value, cycles, signal_f=linear, on_end=None, osc=True):
    return tween(value, cycles, signal_f, on_end, osc, start)