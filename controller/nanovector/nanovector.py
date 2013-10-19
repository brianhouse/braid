from braid import *
from braid.core import controller

MAX_DURATION = 40   # in cycles

vectors = [None] * 9

def width_f(v):
    def f(value):
        vectors[v]['target_width'] = value
    return f

def fade_f(v):
    def f(value):
        vectors[v]['duration'] = int(value * MAX_DURATION)                 
    return f

def trigger_f(v):
    def f(value):
        vector = vectors[v]
        log.info("Triggering %s at [%s] for %s cycles" % (v+1, vector['target_width'], vector['duration']))        
        for voice, params in vector.items():
            if voice in ('duration', 'target_width', 'current_width') or voice is None:
                continue
            print(params)
            for param, values in params.items():
                start_value, target_value = values        
                current_width = voice.tweens[param].transition_position if param in voice.tweens else vector['current_width']   # if tween is still in progress, we should only tween from that
                voice.tween(param, start_value, target_value, vector['duration'], partial(current_width, vector['target_width']))
        vector['current_width'] = vector['target_width']
    return f


def init(v1=None, v2=None, v3=None, v4=None):
    for i in range(9):
        vectors[i] = {'target_width': 0, 'current_width': 0, 'duration': 0, v1: {}, v2: {}, v3: {}, v4: {}}
        controller.callback("%s_width" % (i+1), width_f(i))
        controller.callback("%s_fade" % (i+1), fade_f(i))
        controller.callback("%s_trigger" % (i+1), trigger_f(i))
