from .tween import ContinuousTween, DiscreteTween

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
        self.value = value
        return self

    # def control(self, controller, left_value, right_value):
        