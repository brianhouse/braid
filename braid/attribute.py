from .tween import ContinuousTween, DiscreteTween
from . import controller

class Attribute(object):

    def __init__(self, voice, value):
        self.voice = voice
        self.value = value
        self.tween = ContinuousTween(self) if type(self.value) == int or type(self.value) == float else DiscreteTween(self)

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

    def set(self, value):
        if isinstance(value, Attribute):
            value = value.value
        self.value = value
        return self

    def control(self, vector_number, left_value, right_value):
        controller.register(vector_number, self.voice, self, left_value, right_value)
