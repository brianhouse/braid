#!/usr/bin/env python3      # standard hashbang to make the file executable

from braid import *         # import braid

log_midi(True)              # choose whether to see MIDI output (False by default)
midi_out_interface(1)                # change MIDI interface if necessary (or pass it in on the command line, see below)

t = Thread(1)               # create a thread -- the argument indicates the MIDI channel
t.pattern = C, C, C, C      # add a pattern
t.start()                   # start the thread (non-blocking)

start()                     # start the process (blocking in executable mode / non-blocking in livecode mode)



"""

For executable mode:

In your terminal, change to the top-level braid directory.

Make sure this file is executable:
$ chmod +x ./examples/1_basic.py

Run it:
./examples/01_basic.py 0    # second parameter is index of the MIDI interface

"""

"""

For livecoding mode:

$ python3
>>> from braid import *

"""
