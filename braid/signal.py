import time, math, __main__
from random import random, triangular, uniform


def calc_pos(pos, rate, phase):
    pos = clamp(pos)
    pos = pos * rate(pos) if callable(rate) else pos * rate
    return (pos + phase(pos)) % 1.0 if callable(phase) else (pos + phase) % 1.0


def amp_bias(value, amp, bias, pos=None):
    p = value if pos is None else pos
    amp = amp(p) if callable(amp) else amp
    bias = bias(p) if callable(bias) else bias
    return value * amp + bias


def pos2rad(pos):
    pos = clamp(pos)
    degrees = pos * 360
    return math.radians(degrees)


def clamp(pos):
    if pos > 1.0:
        return 1.0
    elif pos < 0.0:
        return 0.0
    else:
        return pos


def const(value, mod=False, a=1, r=1, p=0, b=0):
    def f(pos):
        if mod:
            pos = calc_pos(pos, r, p)
            v = value(pos) if callable(value) else value
            return amp_bias(v, a, b, pos)
        else:
            return value

    return f


def noise(l=0, h=1, a=1, r=1, p=0, b=0, m=None):
    def f(pos):
        pos = calc_pos(pos, r, p)
        lo = l(pos) if callable(l) else l
        hi = h(pos) if callable(h) else h
        if m is not None:
            mode = m(pos) if callable(m) else m
            return amp_bias(triangular(lo, hi, mode), a, b, pos)
        else:
            return amp_bias(uniform(lo, hi), a, b, pos)

    return f


def linear(a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        return amp_bias(pos, a, b)

    return f


def inverse_linear(a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(1 - pos, r, p)
        return amp_bias(pos, a, b)

    return f


def triangle(s=.5, a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        sym = s(pos) if callable(s) else s
        if pos < sym:
            value = pos * 1 / sym
        else:
            value = 1 - ((pos - sym) * (1 / (1 - sym)))
        return amp_bias(value, a, b, pos)

    return f


def pulse(w=.5, a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        width = w(pos) if callable(w) else w
        if pos < width:
            return amp_bias(0.0, a, b, pos)
        else:
            return amp_bias(1.0, a, b, pos)

    return f


def ease_in(exp=2, a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        e = exp(pos) if callable(exp) else exp
        return amp_bias(pos ** e, a, b, pos)

    return f


def ease_out(exp=3, a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        e = exp(pos) if callable(exp) else exp
        return amp_bias(((pos - 1) ** e + 1), a, b, pos)

    return f


def ease_in_out(exp=3, a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        value = pos * 2
        e = exp(pos) if callable(exp) else exp
        if value < 1:
            return amp_bias(0.5 * value ** e, a, b, pos)
        value -= 2
        return amp_bias(0.5 * (value ** e + 2), a, b, pos)

    return f


def ease_out_in(exp=3, a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        value = pos * 2 - 1
        e = exp(pos) if callable(exp) else exp
        if value < 2:
            return amp_bias(0.5 * value ** e + 0.5, a, b, pos)
        else:
            return amp_bias(1.0 - (0.5 * value ** e + 0.5), a, b, pos)

    return f


def sine(a=1, r=1, p=0, b=0):
    def f(pos):
        pos = calc_pos(pos, r, p)
        return amp_bias(math.sin(pos2rad(pos)) * 0.5 + 0.5, a, b, pos)

    return f


def normalize(signal):
    min_value = min(signal)
    max_value = max(signal)
    return [(v - min_value) / (max_value - min_value) for v in signal]


def timeseries(timeseries):
    timeseries = normalize(timeseries)

    def f(pos):
        indexf = pos * (len(timeseries) - 1)
        pos = indexf % 1.0
        value = (timeseries[math.floor(indexf)] * (1.0 - pos)) + (timeseries[math.ceil(indexf)] * pos)
        return value

    return f


def breakpoints(*breakpoints):
    """ eg:
        breakpoints(    [0, 0],
                        [2, 1, linear()], 
                        [6, 2, ease_out()], 
                        [7, 0],
                        [12, 3, ease_in()], 
                        [14, 2, ease_out()], 
                        [15, 0, ease_in_out()]
                        )
    """
    min_x = min(breakpoints, key=lambda bp: bp[0])[0]
    domain = max(breakpoints, key=lambda bp: bp[0])[0] - min_x
    min_y = min(breakpoints, key=lambda bp: bp[1])[1]
    resolution = max(breakpoints, key=lambda bp: bp[1])[1] - min_y
    breakpoints = [
        [(bp[0] - min_x) / float(domain), (bp[1] - min_y) / float(resolution), None if not len(bp) == 3 else bp[2]] for
        bp in breakpoints]

    def f(pos):
        index = 0
        while index < len(breakpoints) and breakpoints[index][0] < pos:
            index += 1
        if index == 0:
            return breakpoints[index][1]
        if index == len(breakpoints):
            return breakpoints[-1][1]
        start_point, end_point = breakpoints[index - 1], breakpoints[index]
        if end_point[2] is None:
            return start_point[1]
        pos = (pos - start_point[0]) / (end_point[0] - start_point[0])
        if end_point[2] is not linear:
            pos = end_point[2](pos)
        return start_point[1] + (pos * (end_point[1] - start_point[1]))

    return f


def cross(division, degree):
    bps = [[0, 0]]
    for d in range(division):
        d += 1
        bps.append([d, d / division, ease_in(degree)])
    f = breakpoints(*bps)
    return f


class Plotter():
    instance = None

    def __init__(self):
        import tkinter
        self.master = tkinter.Tk()
        self.width, self.height = 1000, 250
        self.margin = 20
        self.w = tkinter.Canvas(self.master, width=self.width + self.margin * 2, height=self.height + self.margin * 2)
        self.w.pack()
        self.w.create_rectangle(self.margin - 1, self.margin - 1, self.width + self.margin + 1,
                                self.height + self.margin + 1)

    @classmethod
    def plot(cls, bp_f, color="red"):
        if not hasattr(__main__, "__file__") or cls.instance is None:
            cls.instance = Plotter()
        points = [(i + cls.instance.margin,
                   ((1.0 - bp_f(float(i) / cls.instance.width)) * cls.instance.height) + cls.instance.margin) for i in
                  range(int(cls.instance.width))]
        cls.instance.w.create_line(points, fill=color, width=2.0)

    @classmethod
    def show_plots(cls):
        if cls.instance is not None:
            cls.instance.master.update()


def plot(signal, color="red"):
    Plotter.plot(signal, color)


def show_plots():
    Plotter.show_plots()
