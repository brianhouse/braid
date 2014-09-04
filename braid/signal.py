import time, math
from random import random

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


def signal_from_breakpoints(*breakpoints):     ## change name? essentially wavetable function
    """ eg:
        signal_from_breakpoints(    [0, 0],
                                    [2, 1, linear], 
                                    [6, 2, ease_out], 
                                    [7, 0],
                                    [12, 3, ease_in], 
                                    [14, 2, ease_out], 
                                    [15, 0, ease_in_out]
                                    )
    """
    min_x = min(breakpoints, key=lambda bp: bp[0])[0]
    domain = max(breakpoints, key=lambda bp: bp[0])[0] - min_x
    min_y = min(breakpoints, key=lambda bp: bp[1])[1]
    resolution = max(breakpoints, key=lambda bp: bp[1])[1] - min_y
    breakpoints = [[(bp[0] - min_x) / float(domain), (bp[1] - min_y) / float(resolution), None if not len(bp) == 3 else bp[2]] for bp in breakpoints]

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


def signal_from_timeseries(signal):
    signal = normalize(signal)
    def signal_f(pos):
        indexf = pos * (len(signal) - 1)
        pos = indexf % 1.0
        value = (signal[math.floor(indexf)] * (1.0 - pos)) + (signal[math.ceil(indexf)] * pos)
        return value
    return signal_f    


def normalize(signal):
    """For normalizing signals"""
    min_value = min(signal)
    max_value = max(signal)
    return [(v - min_value) / (max_value - min_value) for v in signal]
