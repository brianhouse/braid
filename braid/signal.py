import time, math, __main__
from random import random

def clamp(pos):
    if pos > 1.0:
        return 1.0
    elif pos < 0.0:
        return 0.0
    else:
        return pos

def linear():
    def f(pos):
        pos = clamp(pos)
        return pos
    return f

def ease_in(exp=2):
    def f(pos):
        pos = clamp(pos)    
        return pos**exp
    return f
        
def ease_out(exp=3):
    def f(pos):
        pos = clamp(pos)    
        return (pos - 1)**exp + 1
    return f

def ease_in_out(exp=3):
    def f (pos):
        pos = clamp(pos)    
        pos *= 2
        if pos < 1:
             return 0.5 * pos**exp
        pos -= 2
        return 0.5 * (pos**exp + 2)
    return f
    
def ease_out_in(exp=3):
    def f(pos):
        pos = clamp(pos)    
        pos *= 2    
        pos = pos - 1    
        if pos < 2:
            return 0.5 * pos**exp + 0.5
        else:
            return 1.0 - (0.5 * pos**exp + 0.5)
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
    breakpoints = [[(bp[0] - min_x) / float(domain), (bp[1] - min_y) / float(resolution), None if not len(bp) == 3 else bp[2]] for bp in breakpoints]

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
        bps.append([d, d/division, ease_in(degree)])
    f = breakpoints(*bps)
    return f
    

class Plotter():

    instance = None

    def __init__(self):
        import tkinter
        self.master = tkinter.Tk()
        self.width, self.height = 1000, 250
        self.margin = 20
        self.w = tkinter.Canvas(self.master, width=self.width + self.margin*2, height=self.height + self.margin*2)
        self.w.pack()
        self.w.create_rectangle(self.margin - 1, self.margin - 1, self.width + self.margin + 1, self.height + self.margin + 1)

    @classmethod
    def plot(cls, bp_f, color="red"):
        if not hasattr(__main__, "__file__") or cls.instance is None:
            cls.instance = Plotter()
        points = [(i + cls.instance.margin, ((1.0 - bp_f(float(i) / cls.instance.width)) * cls.instance.height) + cls.instance.margin) for i in range(int(cls.instance.width))]
        cls.instance.w.create_line(points, fill=color, width=2.0)

    @classmethod
    def show_plots(cls):
        cls.instance.master.update()

def plot(signal, color="red"):
    Plotter.plot(signal, color)

def show_plots():
    Plotter.show_plots()
