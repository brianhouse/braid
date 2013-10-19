import time, random, math
from .pattern import Pattern, lcm
from .core import *

def clamp(pos):
    if pos > 1.0:
        return 1.0
    elif pos < 0.0:
        return 0.0
    else:
        return pos

def linear(pos):
    pos = clamp(pos)
    return pos

def power(pos):
    pos = clamp(pos)
    pos *= (0.5 * math.pi)
    return math.sin(pos)

def ease_in(pos):
    pos = clamp(pos)    
    return pos**3
        
def ease_out(pos):
    pos = clamp(pos)    
    return (pos - 1)**3 + 1
    
def ease_in_out(pos):
    pos = clamp(pos)    
    pos *= 2
    if pos < 1:
         return 0.5 * pos**3
    pos -= 2
    return 0.5 * (pos**3 + 2)
    
def ease_out_in(pos):
    pos = clamp(pos)    
    pos *= 2    
    pos = pos - 1    
    if pos < 2:
        return 0.5 * pos**3 + 0.5
    else:
        return 1.0 - (0.5 * pos**3 + 0.5)

def partial(start_pos, target_pos, func=linear):
    def f(pos):        
        pos = func(pos)
        pos *= (target_pos - start_pos)
        pos += start_pos
        return pos
    return f
        
def reverse(func=linear):
    def f(pos):        
        pos = func(pos)
        pos = 1.0 - pos
        return pos
    return f

def get_breakpoint_f(*breakpoints):
    """ eg:
        get_breakpoint_f(   [0, 0],
                            [2, 1, linear], 
                            [6, 2, ease_out], 
                            [7, 0],
                            [12, 3, ease_in], 
                            [14, 2, ease_out], 
                            [15, 0, ease_in_out]
                            )
    """
    domain = max(breakpoints, key=lambda bp: bp[0])[0]
    m = min(breakpoints, key=lambda bp: bp[1])[1]            
    resolution = max(breakpoints, key=lambda bp: bp[1])[1]
    breakpoints = [[bp[0] / float(domain), (bp[1] - m) / float(resolution), None if not len(bp) == 3 else bp[2]] for bp in breakpoints]

    def breakpoint_f(pos):        
        index = 0
        while index < len(breakpoints) and breakpoints[index][0] < pos:
            index += 1
        if index == 0:
            return breakpoints[index][1]
        if index == len(breakpoints):
            return breakpoints[-1][1]
        start_point, end_point = breakpoints[index - 1], breakpoints[index]
        if end_point[2] is None:
            return start_point[1]
        pos = (pos - start_point[0]) / (end_point[0] - start_point[0])
        if end_point[2] is not linear:            
            pos = end_point[2](pos)
        return start_point[1] + (pos * (end_point[1] - start_point[1]))

    return breakpoint_f


def get_signal_f(signal):
    """Assumes the signal is normalized"""

    def signal_f(pos):
        index = int(pos * (len(signal) - 1))        ## this needs to interpolate
        value = signal[index]
        return value

    return signal_f


class Tween(object):

    def __init__(self, start_value, target_value, duration, transition, callback=None, repeat=False):
        self.start_value = start_value
        self.target_value = target_value
        self.start_t = driver.t
        self.duration = duration        
        self.transition = transition
        assert callable(self.transition)
        self.finished = False if self.duration > 0.0 else True
        self.callback = callback
        self.repeat = repeat
        self.start()      
        
    def start(self):
        pass

    def restart(self):
        self.start_t = driver.t

    @property
    def position(self):     # can reference this to see where we are in the tween
        position = (driver.t - self.start_t) / self.duration if self.duration > 0 else 1.0
        if position >= 1.0:
            position = 1.0
            self.finished = True
        return position        

    @property
    def transition_position(self):  # can reference this to see where we are on the function (or partial linear tweens, wrt kontrol)
        position = self.position
        return self.transition(position)

    def get_value(self):            
        return self.calc_value(self.transition_position)

    def calc_value(self, position):
        return None

    
class ContinuousTween(Tween):

    def start(self):
        self.change = self.target_value - self.start_value        

    def calc_value(self, position):        
        value = (position * self.change) + self.start_value
        return value
        

class DiscreteTween(Tween):

    def calc_value(self, position):    
        if random.random() > position:
            return self.start_value
        else:
            return self.target_value    


class PatternTween(Tween):    

    def calc_value(self, position):
        """ This only runs when a pattern is refreshed, not every step; 
            resolve steps for start and target, blend them, and return the result as a pattern
        """
        start_steps = self.start_value.resolve()
        target_steps = self.target_value.resolve()
        pattern = [None] * lcm(len(start_steps), len(target_steps))
        start_div = len(pattern) / len(start_steps)
        target_div = len(pattern) / len(target_steps)                
        for i, cell in enumerate(pattern):
            if i % start_div == 0 and i % target_div == 0:
                if random.random() > position:
                    pattern[i] = start_steps[int(i / start_div)]
                else:
                    pattern[i] = target_steps[int(i / target_div)]
            elif i % start_div == 0:     
                if random.random() > position:               
                    pattern[i] = start_steps[int(i / start_div)]
            elif i % target_div == 0:
                if random.random() <= position:
                    pattern[i] = target_steps[int(i / target_div)]
        pattern = Pattern(pattern)
        return pattern




