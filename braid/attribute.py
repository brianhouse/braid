class Attribute(object):

    def __init__(self, value):
        self.set(value)

    @property
    def value(self):
        return self._value

    def set(self, value):
        self._value = value

    def tween(self, target, duration, signal_f):
        pass



"""

v.velocity = 45
v.velocity.tween(2.0, 6, linear)

how does that work?

v.velocity(45)
v.velocity.set(45)

@property
def velocity(self):
    return self.property_velocity.value()

@velocity.setter
def velocity(self, value):
    self.property_velocity.set(value)

## almost, but not quite because we want the tween.
## and we also want the ability to do patterns

so basically, we cant use the velocity value directly, have to do
arb = v.velocity.value 

"""