#!/usr/bin/env python3

from braid import *

plot(ease_in, "blue")
plot(ease_out, "red")
plot(ease_in_out, "purple")
plot(ease_out_in, "orange")

bass_velocity_f = signal_from_breakpoints(  [0, 0],
                                            [6, 0],
                                            [8, 0.25, linear],
                                            [21, 0.5, linear],
                                            [24, 1.0, linear],
                                            [40, 1.0],
                                            [44, 0, linear],
                                            [48, 0]
                                            )

plot(bass_velocity_f, "black")

show_plots()

play()