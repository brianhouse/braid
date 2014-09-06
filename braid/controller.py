from .core import midi_in
from .util import log
import braid.pattern

MAX_DURATION = 40   # in cycles

class Vector(dict):
    def __init__(self):
        self.width = 0.0
        self.duration = 0
        dict.__init__(self)        

vectors = [Vector() for vn in range(0, 9)] # 0-index

def register(vn, voice, attribute, left_value, right_value):
    vector = vectors[vn]
    if not voice in vector:
        vector[voice] = {}
    vector[voice][attribute] = left_value, right_value

def width_f(vn):
    def f(value):
        vectors[vn].width = value
    return f

def fade_f(vn):
    def f(value):
        vectors[vn].duration = int(value * MAX_DURATION)                 
    return f

def trigger_f(vn):
    def f(value):
        if value != 1.0: # on button press
            return
        vector = vectors[vn]
        log.info("Triggering %s at [%f] for %s cycles" % (vn, vector.width, vector.duration))        
        for voice, attributes in vector.items():
            print("voice", voice, "attributes", attributes)
            for attribute, values in attributes.items():
                left_value, right_value = values        
                if type(left_value) == int or type(left_value) == float:
                    target_value = (left_value * (1.0 - vector.width)) + (right_value * vector.width)
                    print("target_value", target_value)
                elif isinstance(attribute, braid.pattern.PatternAttribute):
                    target_value = braid.pattern.CrossPattern(left_value, right_value, vector.width)
                else:
                    target_value = left_value if random() > vector.width else right_value                    
                print("Adding tween ", type(attribute), attribute, voice)
                attribute.tween(target_value, vector.duration)
    return f


# specific to KORG NANOKontrol
midi_in.callback(14, width_f(0))
midi_in.callback(2,  fade_f(0))
midi_in.callback(33, trigger_f(0))

midi_in.callback(15, width_f(1))
midi_in.callback(3,  fade_f(1))
midi_in.callback(34, trigger_f(1))

midi_in.callback(16, width_f(2))
midi_in.callback(4,  fade_f(2))
midi_in.callback(35, trigger_f(2))

midi_in.callback(17, width_f(3))
midi_in.callback(5,  fade_f(3))
midi_in.callback(36, trigger_f(3))

midi_in.callback(18, width_f(4))
midi_in.callback(6,  fade_f(4))
midi_in.callback(37, trigger_f(4))

midi_in.callback(19, width_f(5))
midi_in.callback(8,  fade_f(5))
midi_in.callback(38, trigger_f(5))

midi_in.callback(20, width_f(6))
midi_in.callback(9,  fade_f(6))
midi_in.callback(39, trigger_f(6))

midi_in.callback(21, width_f(7))
midi_in.callback(12,  fade_f(7))
midi_in.callback(40, trigger_f(7))

midi_in.callback(22, width_f(8))
midi_in.callback(13, fade_f(8))
midi_in.callback(41, trigger_f(8))

# note the gaps in the faders