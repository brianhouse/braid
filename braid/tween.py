import collections
import braid.pattern
from random import random
from .signal import linear
from .core import driver
from .util import num_args

class Tween(object):

    def __init__(self, attribute):
        self.attribute = attribute
        self.running = False

    def __call__(self, target_value, duration, signal_f=linear, repeat=None, endwith=None):
        print("Making Tween on %s..." % self.attribute)
        self.start_value = self.attribute.value
        self.target_value = target_value
        if isinstance(self, PatternTween) and not isinstance(self.target_value, braid.pattern.Pattern):
            self.target_value = braid.pattern.Pattern(self.target_value)
        self.start_t = driver.t
        self.duration = duration
        self.signal_f = signal_f
        assert callable(self.signal_f)
        self.finished = False if self.duration > 0.0 else True
        self._repeat = False
        if repeat is not None:
            self.repeat(repeat)
        self._endwith_f = None
        if endwith is not None:
            self.endwith(endwith)
        self.running = True
        print("--> done")
        return self

    def update(self):
        if not self.running:
            return
        self.attribute.value = self.get_value()
        if self.finished:
            print("tween finished")
            self.running = False
            if type(self._repeat) is int:
                self._repeat -= 1
            if self._repeat:
                repeat = self._repeat # careful, self values go away
                endwith_f = self._endwith_f
                self.attribute.tween(self.start_value, self.duration, self.signal_f).repeat(repeat) # flipped
                if endwith_f is not None:
                    self.attribute.tween.endwith(endwith_f)
            else:
                print("TWEEN ENDING %s" % self._endwith_f)
                if isinstance(self, PatternTween): # pattern targets need to persist after tween
                    self.attribute.voice.set(self.target_value)
                if self._endwith_f is not None:
                    if num_args(self._endwith_f) > 1:
                        self._endwith_f(self.attribute.voice, self)
                    elif num_args(self._endwith_f) > 0:
                        self._endwith_f(self.attribute.voice)
                    else:
                        self._endwith_f()                                                   

    def repeat(self, n=True):
        self._repeat = n        
        return self

    def endwith(self, f):
        assert isinstance(f, collections.Callable)
        self._endwith_f = f
        return self

    @property
    def position(self): # can reference this to see where we are in the tween
        if self.duration <= 0:
            position = 1.0
        elif type(self.duration) is int: # if ints, then we are using cycles and must convert
            position = (driver.t - self.start_t) / (self.duration * (self.attribute.voice.rate.value / driver.rate))
        else:
            position = (driver.t - self.start_t) / self.duration
        if position >= 1.0:
            position = 1.0
            self.finished = True
        return position        

    @property
    def signal_position(self): # can reference this to see where we are on the signal function
        return self.signal_f(self.position)

    def get_value(self):            
        return self.calc_value(self.signal_position)

    def calc_value(self, position):
        return None

    def cancel(self):
        self.running = False

    
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


class DiscreteTween(Tween):

    def calc_value(self, position):    
        if random() > position:
            return self.start_value
        else:
            return self.target_value    


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
