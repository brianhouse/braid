from random import random
from braid import *

MAX_DURATION = 40   # in cycles

vectors = [None] * 10        # first index is ignored -- 1-index

def width_f(v):
    def f(value):
        vectors[v]['width'] = value
    return f

def fade_f(v):
    def f(value):
        vectors[v]['duration'] = int(value * MAX_DURATION)                 
    return f

def trigger_f(v):
    def f(value):
        vector = vectors[v]
        log.info("Triggering %s at [%s] for %s cycles" % (v, vector['width'], vector['duration']))        
        for voice, params in vector.items():
            if voice in ('duration', 'width') or voice is None:
                continue
            width = vector['width']
            for param, values in params.items():
                left_value, right_value = values        
                if type(left_value) == int or type(left_value) == float:
                    target_value = (left_value * (1.0 - width)) + (right_value * width)
                elif param == 'pattern':
                    target_value = CrossPattern(left_value, right_value, width)
                elif type(left_value) == list or type(left_value) == tuple:
                    target_value = []
                    for i in range(len(left_value)):
                        target_value.append((width * (right_value[i] - left_value[i])) + left_value[i])
                else:
                    target_value = left_value if random() > width else right_value
                voice.tween(param, None, target_value, vector['duration'])
    return f


def init(*voices):
    for i in range(1, 10):
        vectors[i] = {voice: {} for voice in voices}
        vectors[i].update({'width': 0, 'duration': 0})
        control.callback("%s_width" % i, width_f(i))
        control.callback("%s_fade" % i, fade_f(i))
        control.callback("%s_trigger" % i, trigger_f(i))

