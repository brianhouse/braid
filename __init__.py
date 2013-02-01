from notation import *
from pattern import *
from tween import *
from voice import *
from core import *

try:
    from housepy import drawing, log, config
except ImportError:
    pass
else:
    ctx = drawing.Context(2500, 500, relative=True, flip=True, margin=50)

    def plot(bpf, color=(0, 0, 0)):
        points = [((float(i) / ctx.width), bpf(float(i) / ctx.width)) for i in xrange(int(ctx.width))]
        ctx.line(points, thickness=5.0, stroke=color)
        
    def show_plots():
        ctx.show()
