import collections, math
from random import random, uniform, choice
from .signal import linear, sine, pulse, inverse_linear, triangle
from .pattern import Q, Pattern, blend, euc, add, xor
from .core import driver


class Tween(object):

    def __init__(self, target_value, cycles, signal_f=linear(), on_end=None, osc=False, phase_offset=0, random=False, saw=False, start_value=None):
        self.target_value = target_value
        self.cycles = cycles
        self.signal_f = signal_f
        self.end_f = on_end
        self.osc = osc
        self.saw = saw
        self.phase_offset = phase_offset
        self.start_value = start_value
        if start_value is not None:
            self._min_value = min(self.start_value, self.target_value)
            self._max_value = max(self.start_value, self.target_value)
        self.random = random
        self.rand_lock = False
        self._random_value = 0
        self._lock_values = collections.deque([0])
        self._lag = 1.
        self._step_len = 1/4
        self._steps = [0., .25, .5, .75]
        self._step = 0
        self.finished = False


    def start(self, thread, start_value):
        self.thread = thread
        self._step = 0
        if self.start_value is None:
            self.start_value = start_value
            self._min_value = min(self.start_value, self.target_value)
            self._max_value = max(self.start_value, self.target_value)
        self.start_cycle = float(math.ceil(self.thread._cycles)) # tweens always start on next cycle

    @property
    def value(self):
        if self.finished:
            return self.target_value
        if self.random:
            if self._steps[self._step] <= self.position < self._steps[self._step] + self._step_len:
                if self.rand_lock:
                    self._lock_values.rotate(-1)
                    self._random_value = self._lock_values[-1]
                else:
                    lag_diff = (uniform(self._min_value, self._max_value) - self._random_value) * self._lag
                    self._random_value += lag_diff
                self._step = (self._step + 1) % len(self._steps)
            return self._random_value
        else:
            return self.calc_value(self.signal_position)

    @property
    def signal_position(self): # can reference this to see where we are on the signal function
        return self.signal_f((self.position + self.phase_offset) % 1.0)

    @property
    def position(self): # can reference this to see where we are in the tween
        if self.cycles == 0.0:
            return 1.0
        position = (self.thread._cycles - self.start_cycle) / self.cycles
        if position <= 0.0:
            position = 0.0
        if position >= 1.0:
            position = 1.0
            if self.end_f is not None:
                try:
                    self.end_f()
                except Exception as e:
                    print("[Error tween.on_end: %s]" % e)
            if self.osc or self.saw:
                if self.osc:
                    sv = self.target_value
                    self.target_value = self.start_value
                    self.start_value = sv
                self.start_cycle = self.thread._cycles - ((self.thread._cycles - self.start_cycle) - self.cycles)
                position = abs(1 - position)
            else:
                self.finished = True
                print('finished is true')
        return position

    @property
    def step_len(self):
        return self._step_len

    @step_len.setter
    def step_len(self, length):
        steps = []
        i = 0
        while 0 <= i < 1.0:
            steps.append(i)
            i += length
        self._steps = steps
        self._step_len = length



class ScalarTween(Tween):

    def calc_value(self, position):
        value = (position * (self.target_value - self.start_value)) + self.start_value
        return value


class ChordTween(Tween):

    def calc_value(self, position):
        if random() > position:
            return self.start_value
        else:
            return self.target_value


class PatternTween(Tween):

    def calc_value(self, position):
        return blend(self.start_value, self.target_value, position)


class RateTween(ScalarTween):

    def start(self, thread, start_value):
        self.thread = driver    # rate tweens are based on the driver reference
        self.syncer = thread    # this is the actual reference to the current thread
        self.start_value = start_value
        self.start_cycle = driver._cycles # float(math.ceil(driver._cycles)) # it's a float, so if you ceil this, it's always the _next_ edge, even if it should be "0"

    def get_phase(self):
        driver_cycles_remaining = self.cycles - (driver._cycles - self.start_cycle)
        if driver_cycles_remaining <= 0:
            return None
        time_remaining = driver_cycles_remaining / driver.rate
        acceleration = ((self.target_value * driver.rate) - (self.syncer.rate * driver.rate)) / time_remaining
        syncer_cycles_remaining = (self.syncer.rate * driver.rate * time_remaining) + (0.5 * (acceleration * (time_remaining * time_remaining)))
        cycles_at_completion = syncer_cycles_remaining + self.syncer._cycles
        phase_at_completion = cycles_at_completion % 1.0
        phase_correction = phase_at_completion
        phase_correction *= -1
        if phase_correction < 0.0:
            phase_correction = 1.0 + phase_correction
        return phase_correction


def tween(
        value,
        cycles,
        signal_f=linear(),
        on_end=None,
        osc=False,
        phase_offset=0,
        random=False,
        saw=False,
        start=None,
):
    if type(value) == int or type(value) == float:
        return ScalarTween(value, cycles, signal_f, on_end, osc, phase_offset, random, saw, start)
    if type(value) == tuple:
        return ChordTween(value, cycles, signal_f, on_end, osc, phase_offset, False, saw, start)
    if type(value) == list: # careful, lists are always patterns
        value = Pattern(value)
    if type(value) == Pattern:
        return PatternTween(value, cycles, signal_f, on_end, osc, phase_offset, False, saw, start)

def osc(start, value, cycles, signal_f=linear(), phase_offset=0, on_end=None):
    return tween(
        value,
        cycles,
        signal_f=signal_f,
        on_end=on_end,
        osc=True,
        phase_offset=phase_offset,
        start=start,
    )

def saw(start, value, cycles, up=True, signal_f=linear(), phase_offset=0, on_end=None):
    if not up and signal_f == linear():
        signal_f = inverse_linear()
    return tween(
        value,
        cycles,
        signal_f=signal_f,
        on_end=on_end,
        phase_offset=phase_offset,
        saw=True,
        start=start,
    )

def sin(start, value, cycles, phase_offset=0, loop=True, on_end=None):
    return tween(
        value,
        cycles,
        signal_f=sine(),
        on_end=on_end,
        phase_offset=phase_offset,
        saw=loop,
        start=start,
    )

def tri(start, value, cycles, symmetry=0.5, phase_offset=0, loop=True, on_end=None):
    return tween(
        value,
        cycles,
        signal_f=triangle(symmetry),
        on_end=on_end,
        phase_offset=phase_offset,
        saw=loop,
        start=start,
    )

def pw(start, value, cycles, width=0.5, phase_offset=0, loop=True, on_end=None):
    return tween(
        value,
        cycles,
        signal_f=pulse(width),
        on_end=on_end,
        phase_offset=phase_offset,
        saw=loop,
        start=start,
    )

def sh(lo, hi, cycles, step_len, lag=1., loop=True, lock=False, lock_len=None, on_end=None):
    t = tween(
        hi,
        cycles,
        start=lo,
        on_end=on_end,
        random=True,
        saw=loop,
    )
    t.step_len = step_len
    t._lag = lag  # scale the distance between the random values
    if lock:  # pre-generate a list of random values to choose from instead of generating new ones continuously
        lock_len = lock_len if lock_len else len(t._steps)
        t.rand_lock = True
        lock_vals = collections.deque([lo + (uniform(t._min_value, t._max_value) - lo) * lag])
        for x in range(1, lock_len):
            lock_vals.append(lock_vals[x - 1] + (uniform(t._min_value, t._max_value) - lock_vals[x - 1]) * lag)
        t._lock_values = lock_vals
    return t
