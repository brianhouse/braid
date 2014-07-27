class Tween(object):

    def __init__(self, start_value, target_value, duration, signal_f, repeat=False):    ## would be great to kill start_value and repeat
        self.start_value = start_value
        self.target_value = target_value
        self.start_t = driver.t
        self.duration = duration        
        self.signal_f = signal_f
        assert callable(self.signal_f)
        self.finished = False if self.duration > 0.0 else True
        # self.repeat = repeat
        self.finish_f = None
        return self
        
    def finish(self, f):
        self.finish_f = f
        return self

    def restart(self):
        self.start_t = driver.t
        self.finished = False if self.duration > 0.0 else True        

    @property
    def position(self):     # can reference this to see where we are in the tween
        position = (driver.t - self.start_t) / self.duration if self.duration > 0 else 1.0
        if position >= 1.0:
            position = 1.0
            self.finished = True
        return position        

    @property
    def transition_position(self):  # can reference this to see where we are on the transition function
        return self.signal_f(self.position)

    def get_value(self):            
        return self.calc_value(self.transition_position)

    def calc_value(self, position):
        return None

    
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
        if position <= 0.0:
            return self.start_value
        if position >= 1.0:
            return self.target_value # need this to preserve markov tween destinations
        pattern = blend(self.start_value, self.target_value, position)
        return pattern


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
        if cls.instance is None:
            cls.instance = Plotter()
        points = [(i + cls.instance.margin, ((1.0 - bp_f(float(i) / cls.instance.width)) * cls.instance.height) + cls.instance.margin) for i in range(int(cls.instance.width))]
        cls.instance.w.create_line(points, fill=color, width=2.0)

    @classmethod
    def show_plots(cls):
        cls.instance.master.update()

def plot(bp_f, color="red"):
    Plotter.plot(bp_f, color)

def show_plots():
    Plotter.show_plots()


