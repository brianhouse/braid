class Attribute(object):

    def __init__(self, voice, value):
        self.voice = voice
        self.value = value
        self._tween = None

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

    def set(self, value):
        self.value = value
        return self

    @property
    def tween(self):
        return self._tween

    @tween.setter
    def tween(self, target_value, duration, signal_f=linear):
        if type(self.value) == int or type(self.value) == float:
            self._tween = ContinuousTween(self, target_value, duration, signal_f)
        else:
            self._tween = DiscreteTween(self, target_value, duration, signal_f)
        return self._tween

