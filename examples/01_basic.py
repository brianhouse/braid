#!/usr/bin/env python3      # standard hashbang to make the file executable

from braid import *         # import braid

log_midi(True)              # choose whether to see MIDI output (False by default)

t = Thread(1)               # create a thread -- the argument indicates the MIDI channel
t.pattern = C, C, C, C      # add a pattern
t.start()                   # start the thread (non-blocking)

start()                     # start the process (blocking in executable mode / non-blocking in livecode mode)



"""
In your terminal, change to the top-level braid directory.

Make sure this file is executable:
$ chmod +x ./examples/1_basic.py

Run it:
./examples/01_basic.py 0    # second parameter is index of the MIDI interface

"""

"""
Livecoding:

Everything works the same in the terminal for livecoding.

"""


"""
On terminology:

This framework is called Braid, and the fundamental objects are called Threads -- a Thread corresponds to a hardware or software monosynth.
This is not a thread in the programming sense (Braid is single-threaded).
Threads have properties and can be assigned patterns.

"""