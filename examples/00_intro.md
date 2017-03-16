
# GOALS

- Idiosyncratic: Braid is not for everyone. It's for me, and is an attempt to embody the methods and aesthetics I've used in my projects--it's also for anyone else who is interested in thinking similarly. But not everything is possible.
- Limited scope: it's MIDI, and it's monophonic. Those are pretty significant limitations, but it means that this exists and (mostly) works.
- Easy to move between livecode / interactive mode and scripts: sometimes I want to improvise within a livecoding framework, sometimes I want to make a composition. Braid doesn't make much of a distinction between these ways of operating.
- Easy integration with other Python code: I find specialized development environments frustrating, as they limit what's possible to their own sandbox. Braid is just a Python module, and as such can be used within other Python projects.
- Low processor overhead, suitable for running on devices like the Raspberry Pi


## On terminology

This framework is called Braid, and the fundamental objects are called Threads -- a Thread corresponds to a hardware or software monosynth.
This is not a thread in the programming sense (Braid is single-threaded).
Threads have properties and can be assigned patterns.
