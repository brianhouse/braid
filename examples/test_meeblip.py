#!/usr/bin/env python3

# from braid import *

# def k():
#     def f(v):
#         v.pwm = True
#         v.decay = 127
#         v.filter_decay = 64
#         v.cutoff = 0
#         v.filter_env = 64
#         v.a_noise = False        
#         v.b_enable = False
#         v.b_octave = False
#         return C1
#     return f

# def s():
#     def f(v):
#         v.pwm = False
#         v.decay = 50
#         v.filter_decay = 10
#         v.cutoff = 127
#         v.filter_env = 127
#         v.a_noise = True
#         v.b_enable = False
#         v.b_octave = True        
#         return C8
#     return f

# def h():
#     def f(v):
#         v.decay = 50
#         v.filter_decay = 10
#         v.cutoff = 32
#         v.a_noise = True
#         v.resonance = 10
#         return C8
#     return f

# v1 = Meeblip(5)
# v1.tempo = 120
# v1.chord = C, DOM
# v1.pattern = [
#             k(),
#             [s(), (k(), 0), 0, 0], 
#             k(),
#             [s(), 0, 0, 0]
#             ]

# v1.pattern = k(), s(), k(), s(), k(), s(), k(), s()


# driver.start()