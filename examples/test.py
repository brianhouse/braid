#!/usr/bin/env python3

from braid import *

kick = Drums()
kick.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
# kick.start()
kick.rate = tween(0.5, 8)


tone1 = Thread(1)
tone1.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
tone1.pattern = [1, 1., 1, 1.]
tone1.rate = 1.0
tone1.start()


tone2 = Thread(2)
tone2.pattern = [0, 2, 0, 0, 2, 0, 2, 0]
tone2.pattern = [2, 2., 2, 2.]
tone2.rate = 0.25
tone2.start()
tone2.sync = tween(tone1, 8, ease_out)

driver.start()