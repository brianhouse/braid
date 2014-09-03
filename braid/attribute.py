class Attribute(object):

    def __init__(self, value):
        self.value = value

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

    def set(self, value):
        self.value = value
        return self

    def tween(self, target, duration, signal_f):
        pass



"""

v.velocity = 45                         # yes
v.velocity.set(45)                      # yes
v.velocity += 0.1                       # yes
v.velocity.set(v.velocity + 0.5)        # yes
v.velocity.tween(2.0, 6, linear)        # how?

"""