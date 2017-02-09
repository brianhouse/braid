#!/usr/bin/env python3

from braid import *         # import braid

log_midi(True)              # choose whether to see MIDI output (False by default)

v1 = Thread(10)             # create a synth --  the number indicates the midi channel
v1.pattern = C, C, C, C     # add a pattern
v1.start()                  # start the synth

start()                     # start the process



"""
In your terminal, change to the top-level braid directory.

Make sure this file is executable:
$ chmod +x ./examples/1_basic.py

Run it:
./examples/1_basic.py

"""