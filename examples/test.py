#!/usr/bin/env python3

from braid import *

kick = Drums()
kick.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
# kick.start()
kick.rate = tween(0.5, 8)


tone = Thread(1)
tone.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
tone.start()
tone.chord = tween((D, MIN), 4)


driver.start()
