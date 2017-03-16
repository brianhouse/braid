#!/usr/bin/env python3

from braid import *


tempo(132)   

t = Thread(10)  # drums
t.start()

# there are additional functions for working with rhythms
# for example, euclidean rhythms can be generated with the euc function

steps = 7
pulses = 3
note = K
t.pattern = euc(steps, pulses, note)   # [K, 0, K, 0, K, 0, 0]

# adding a pattern to an existing pattern fills any 0s with the new pattern
t.pattern.add(euc(7, 5, H))     # [K, H, K, H, K, 0, H]

# xor'ing a pattern to an existing pattern adds it, but turns any collisions into 0s
t.pattern.xor([1, 1, 0, 0, 0, 0, 0])    # [0, 0, K, H, K, 0, H]

# these can be done even if the patterns are different lengths, to create crossrhythms
t.pattern = [K, K] * 2
t.pattern.add([H, H, H, H, H])


# patterns can also be blended
t.pattern = blend([K, K, K, K], [S, S, S, S])   # this is probabilistic and will be different every time!

# same as
t.pattern = K, K, K, K
t.pattern.blend([S, S, S, S])