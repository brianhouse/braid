
from braid import *


bass_velocity_f = get_breakpoint_f( [0, 0],
                                    [.25, 1.0, linear],
                                    [4, 1.0],
                                    [5, 0, linear]
                                    )


#

cicada_entrain_f = get_breakpoint_f(    [0, 0],
                                        [2, 1.0, ease_in],
                                        [4, 1.0],
                                        [5, 0, ease_out]
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
                                    [13, 0.0],
                                    [27, 1.0, ease_in],
                                    [37, 1.0],
                                    [39, 0.0, ease_out],
                                    [48, 0.0]
                                    )

wind_pattern_f = get_breakpoint_f(  [0, 0],
                                    [13, 0.0],
                                    [27, 1.0, ease_in],
                                    [37, 1.0],
                                    [39, 0.0, ease_out],
                                    [48, 0.0]
                                    )

#

branch_velocity_f = get_breakpoint_f(   [0, 0],
                                        [10, 0],
                                        [28, 1.0, power],
                                        [39, 0.0],
                                        [48, 0]
                                        )

met_velocity_f = get_breakpoint_f(  [0, 0],
                                    [2, 1.0, linear],
                                    [3, 1.0],
                                    [5, 0, linear]
                                    )

# spirits

spirit1_velocity_f = get_breakpoint_f(  [0, 0],
                                        [1, 1.0, ease_in],
                                        # [2, 0.8, ease_out],
                                        [3, 1.0, linear],
                                        [5, 0, ease_out]
                                        )

spirit2_velocity_f = get_breakpoint_f(  [0, 0],
                                        [1, 0],
                                        [1.5, 1.0, linear],
                                        # [2.5, 0.8, ease_in],
                                        [3.5, 1.0, ease_out],
                                        [4, 0, linear],
                                        [5, 0]
                                        )

spirit3_velocity_f = get_breakpoint_f(  [0, 0],
                                        [1, 0],
                                        [2, 1.0, ease_in],
                                        # [3, 0.8, ease_out],
                                        [4, 1.0, linear],
                                        [5, 0, ease_out]
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
    # plot(bass_velocity_f, "red")
    # plot(cicada_entrain_f, "green")
    # plot(cicada_velocity_f, "blue")
    # plot(cricket_velocity_f, "yellow")
    plot(wind_velocity_f, "orange")
    plot(wind_pattern_f, "purple")
    # plot(branch_velocity_f, "brown")
    # plot(met_velocity_f, "green")
    # plot(owl_velocity_f, "purple")
    # plot(spirit1_velocity_f, "red")
    # plot(spirit2_velocity_f, "green")
    # plot(spirit3_velocity_f, "blue")
    # plot(spirit_angle_f, "red")
    show_plots()
