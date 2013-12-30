
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


#

cicada_entrain_f = get_breakpoint_f(    [0, 0],
                                        [16, 1.0, ease_in],
                                        [42, 1.0],
                                        [48, 0, ease_out]
                                        )


cicada_velocity_f = get_breakpoint_f(   [0, 0],
                                        [1, 1.0, power],
                                        [28, 1.0],
                                        [38, 1.0],
                                        [47, 1.0],
                                        [48, 0.0, power]
                                        )

#

cricket_velocity_f = get_breakpoint_f(  [0, 1.0],
                                        [3, 1.0],
                                        [3, 0.0],
                                        [7, 1.0],
                                        [28, 0.0],
                                        [37, 1.0],
                                        [46, 1.0],
                                        [48, 0.0, power]
                                        )

owl_velocity_f = get_breakpoint_f(  [0, 0],
                                    [3, 1, power],
                                    [9, 0, power],
                                    [15, 1, power],
                                    [17, 0, power],
                                    [25, 1, power],
                                    [31, 0, power],
                                    [37, 1, power],
                                    [47, 0, power],
                                    [48, 0]
                                    )


wind_velocity_f = get_breakpoint_f( [0, 0],
                                    [11, 0.5],
                                    [12, 0.5],
                                    [13, 0.0, power],
                                    [27, 1.0],
                                    [28, 1.0],
                                    [29, 0.45, ease_out],
                                    [35, 0.45],
                                    [36, 1.0, ease_in],
                                    [37, 1.0],
                                    [38, 0.0, power],
                                    [48, 0.0]
                                    )

wind_pattern_f = get_breakpoint_f(  [0, 0],
                                    [11, 1.0],
                                    [13, 0.0],
                                    [27, 1.0],
                                    [38, 0.0],
                                    [48, 0.0]
                                    )

#

branch_velocity_f = get_breakpoint_f(   [0, 0],
                                        [22, 0],
                                        [28, 1.0, power],
                                        [39, 0.0],
                                        [48, 0]
                                        )

met_velocity_f = get_breakpoint_f(  [0, 0],
                                    [16, 1.0],
                                    [28, 0],
                                    [36, 1.0],
                                    [43, 1.0],
                                    [44, 0.0, power],
                                    [48, 0.0]
                                    )

# spirits

spirit1_velocity_f = get_breakpoint_f(  [0, 0],
                                        [5, 0],
                                        [6, 1.0, power],
                                        [8, 0.75, power],
                                        [10, 1.0, power],
                                        [12, 0.75, power],
                                        [14, 1.0, power],
                                        [16, 0.25, power],
                                        [19, 1.0, power],
                                        [20, 0.75, power],
                                        [22, 1.0, power],
                                        [24, 0.75, power],
                                        [26, 1.0, power],
                                        [28, 0.75, power],
                                        [30, 0.125, power],
                                        [34, 0.125],
                                        [36, 1.0, power],
                                        [38, 0.75, power],
                                        [40, 1.0, power],
                                        [42, 0.75, power],
                                        [44, 0.0, power],
                                        [48, 0]
                                        )

spirit2_velocity_f = get_breakpoint_f(  [0, 0],
                                        [14, 0],
                                        [16, 1.0, power],
                                        [18, 0.75, power],
                                        [20, 1.0, power],
                                        [22, 0.75, power],
                                        [24, 1.0, power],
                                        [26, 0.75, power],
                                        [28, 1.0, power],
                                        [30, 0.125, power],
                                        [34, 0.125, power],
                                        [36, 0.75, power],
                                        [38, 1.0, power],
                                        [40, 0.75, power],
                                        [44, 0.0, power],
                                        [48, 0]
                                        )

spirit3_velocity_f = get_breakpoint_f(  [0, 0],
                                        [14, 0],
                                        [16, 1.0, power],      # lock
                                        [19, 0.75, power],
                                        [21, 1.0, power],
                                        [23, 0.75, power],
                                        [25, 1.0, power],
                                        [27, 0.75, power],
                                        [29, 1.0, power],
                                        [30, 0.125, power],    #
                                        [34, 0.125, power],    #
                                        [37, 0.75, power],
                                        [39, 1.0, power],
                                        [41, 0.75, power],
                                        [44, 0.0, power],      #
                                        [48, 0]
                                        )

spirit_angle_f = get_breakpoint_f(      [0, 0],
                                        [8, 0],
                                        [48, 1.0, linear]
                                        )

spirit_tempo_f = get_breakpoint_f(      [0, 0],
                                        [14, 0],
                                        [20, 1.0, linear],
                                        [36, 1.0],
                                        [48, 0]
                                        )

# 2880

#

if __name__ == "__main__":
    plot(bass_velocity_f, "red")
    # plot(cicada_entrain_f, "green")
    plot(cicada_velocity_f, "blue")
    plot(cricket_velocity_f, "yellow")
    # plot(wind_velocity_f, "orange")
    # plot(wind_pattern_f, "purple")
    # plot(branch_velocity_f, "brown")
    # plot(met_velocity_f, "green")
    # plot(owl_velocity_f, "purple")
    # plot(spirit2_velocity_f, (1., 0., 0.))
    # plot(spirit3_velocity_f, (0., 1., 0.))
    show_plots()
