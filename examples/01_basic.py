#!/usr/bin/env python3

from braid import *        # import braid

log_midi(True)             # choose whether to see MIDI output (False by default)

t = Thread(1)              # create a thread -- the argument indicates the MIDI channel
t.pattern = C, C, C, C     # add a pattern
t.start()                  # start the thread

start()                    # start the process



"""
In your terminal, change to the top-level braid directory.

Make sure this file is executable:
$ chmod +x ./examples/1_basic.py

Run it:
./examples/01_basic.py 0    # second parameter is index of MIDI device

"""

"""
On terminology:

This framework is called Braid, and the fundamental objects are called Threads -- a Thread corresponds to a hardware or software monosynth. It is not a thread in the programming sense -- Braid is single-threaded.

"""