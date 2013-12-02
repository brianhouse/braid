#!/usr/bin/env python3

from braid import *

v1 = Serotonin(1)

v1.adsr = 10, 10, 0.5, 200
v1.pattern = 1, 3, 5, 7

v1.tween('adsr', (10, 10, 0.5, 200), (100, 100, 0.2, 50), 10.0)

driver.start()