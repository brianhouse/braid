#!/usr/bin/env python3

from braid import *




bass_velocity_f = get_breakpoint_f( [0, 0],
                                    [6, 0],
                                    [8, 0.25, power],
                                    [21, 0.5, power],
                                    [24, 1.0, power],
                                    [40, 1.0],
                                    [44, 0, power],
                                    [48, 0]
                                    )

plot(bass_velocity_f)
show_plots()


# else:
#     ctx = drawing.Context(2500, 500, relative=True, flip=True, margin=50)

#     def plot(bpf, color=(0, 0, 0)):
#         points = [((float(i) / ctx.width), bpf(float(i) / ctx.width)) for i in xrange(int(ctx.width))]
#         ctx.line(points, thickness=5.0, stroke=color)
        
#     def show_plots():
#         ctx.show()
