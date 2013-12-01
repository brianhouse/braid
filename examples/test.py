#!/usr/bin/env python3

import sys, os
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
from braid import *

v1 = Voice(5)
v1.tempo = 120
v1.chord = C, DOM
v1.pattern = 1, 3, 5, 7

driver.start()