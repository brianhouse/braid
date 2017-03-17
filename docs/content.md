# BRAID

Braid is a way to make music with code. It comprises a musical notation system, livecoding framework, and sequencer for monophonic MIDI synths. Its emphasis is on polyrhythms, phasing, and entrainment, and it is a single-import module in python.

1. [Goals](#goals)
1. [Reference](#reference)
1. [Documentation](#documentation)
    1. [Basic](#basic)
    1. [Notes and Chords](#notes)
    1. [Patterns 1](#patterns_1)

## Goals

- **Idiosyncratic**  
Braid is not for everyone. It's for me, and is an attempt to embody the methods and aesthetics I've used in my projects&mdash;it's also for anyone else who is interested in thinking similarly. But it is far from general purpose music making. It is also an exercise in developing a langauge. 

- **Limited scope**  
Braid is MIDI-based, and it's monophonic. Those are pretty significant limitations, but it means that this exists and (mostly) works. It also means I can take advantage of all the awesome cheap MIDI monosynths coming out, like the [Meeblip](https://meeblip.com/) and the [Korg Volca](http://i.korg.com/volcaseries) series.

- **Integrates with Python**  
I find specialized development environments frustrating, as they limit what's possible to their own sandbox. Braid is just a python module, and as such can be used within other python projects.  

- **Both livecoding and scripting**  
 Sometimes I want to improvise within a livecoding framework, sometimes I want to make a composition. Braid doesn't make much of a distinction between these ways of operating, as it's all python and uses the interpreter as a livecoding environment. Premade scripts can be easily executed within the interpreter.

- **Works on small devices**  
Braid is has very low processor overhead, suitable for running on devices like the Raspberry Pi.



#### A note on names

This framework is called Braid, and the fundamental objects are called _threads_&mdash;a thread corresponds to a hardware or software monosynth, and refers to the temporal operations of Braid through which threads can come in and out of sync. This is not a thread in the programming sense (in that respect Braid is single-threaded).


## <a name="documentation"></a>Reference

### Global functions
- `log_midi(True|False)`        Choose whether to see MIDI output (default: False)
- `midi_out_interface(int)`     Change MIDI interface for output (zero-indexed)
- `Thread(int channel)`         Create a Thread on the specified MIDI channel
- `Scale([ints])`               Create a Scale with a list of ints corresponding to half-steps from root (0)
- `play()`
- `pause()`
- `stop()`
- `clear()`

### Symbols
- `K`, `S`, `H`, `O`

### Scales
`CHR` Chromatic  
`MAJ` Major  
`DOM` Dominant  
`MIN` Harmonic minor  
`PEN` Pentatonic  
`SUSb9` Suspended flat 9  
`ION` Ionian  
`DOR` Dorian  
`PRG` Phrygian  
`MYX` Myxolydian  
`AOL` Aolian  
`LOC` Locrian  
`MMI` ??  
`BLU` Blues  
`SDR` Gamelan Slendro  
`PLG` Gamelan Pelog  
`JAM` jamz  


## <a name="documentation"></a>Documentation

### <a name="basic"></a>Basic

To begin working with Braid, download the repository and navigate to the root directory. Launch a python3 interpreter and import braid: 

    $ python3
    {Python 3.6.0 (default, Mar  4 2017, 12:32:37) 
    [GCC 4.2.1 Compatible Apple LLVM 8.0.0 (clang-800.0.42.1)] on darwin
    Type "help", "copyright", "credits" or "license" for more information.}
    >>> from braid import *
    {MIDI outputs available: ['to Max 1', 'to Max 2']
    MIDI OUT: to Max 1
    MIDI  IN: from Max 1
    Loaded VolcaKick
    Loaded VolcaBeats
    Braid started
    Playing}

Now, create a thread&mdash;the fundamental object of Braid&mdash;and start it:

    >>> t = Thread(1)               # create a thread&mdash;the argument indicates the MIDI channel
    >>> t.pattern = C, C, C, C      # add a pattern
    >>> t.start()                   # start it

That's it! You should be hearing the steady pulse of progress.

Alternately, you can create a python file with Braid syntax like this:

    #!/usr/bin/env python3

    from braid import *
    t = Thread(1)
    t.pattern = C, C, C, C
    t.start()

    play()

Save it as `hello_world.py` and run `python3 hello_world.py 0`. The (optional) argument is the MIDI out interface to use.  

From now on, we'll assume that we're livecoding within the python3 interpreter, but any code works the same in a standalone file.  

### <a name="top"></a>Top-level controls

You can start and stop individual threads, with `my_thread.start()` and `my_thread.stop()`, which essentially behave like a mute button.  

Braid also has some universal playback controls. When Braid launches, it is automatically in play mode. Use `pause()` to mute everything, and `play()` to get it going again. If you use `stop()`, it will stop all threads, so you'll need to start them up again individually. `clear()` just stops the threads, but Braid itself is still going and if you start a thread it will sound right away.

_Advanced note_  
If you're doing a lot of livecoding, it's easy to create a new thread with the same name as an old one, and this can lead to orphan threads that you hear but can't reference. Use `stop()` or `clear()` to silence these.

Try it now:

    clear()


### <a name="notes"></a>Notes and Chords

Start a thread

    >>> t = Thread(1)   # create a thread on channel 1
    >>> t.start()

MIDI pitch value can be specified by MIDI number or with note-name aliases between C0 and B8. C is an alias for C4, likewise for the rest of the middle octave
    
    >>> t.pattern = C, C, C, C

is the same as  

    >>> t.pattern = 60, 60, 60, 60

0s simply sustain (no MIDI sent)  

    >>> t.pattern = C, 0, C, C

Rests (explicit MIDI note-offs) are specified with a Z  

    >>> t.pattern = C, Z, C, Z

By default, there is no specified chord. But if there is one, notes can be specified by scale degree

    >>> t.chord = C4, MAJ
    >>> t.pattern = 1, 3, 5, 7

Negative numbers designate the octave below  

    >>> t.pattern = -5, -7, 1, 5

A chord consists of a root note and a scale. For example, `C, MAJ` is a major scale built off of C4. That means `1, 2, 3, 4, 5` is the equivalent of `C4, D4, E4, F4, G4`. But behind the scenes, it's specified like this: `Scale([0, 2, 4, 5, 7, 9, 11])`  
  
Built-in scales are:  
`CHR` Chromatic  
`MAJ` Major  
`DOM` Dominant  
`MIN` Harmonic minor  
`PEN` Pentatonic  
`SUSb9` Suspended flat 9  
`ION` Ionian  
`DOR` Dorian  
`PRG` Phrygian  
`MYX` Myxolydian  
`AOL` Aolian  
`LOC` Locrian  
`MMI` ??  
`BLU` Blues  
`SDR` Gamelan Slendro  
`PLG` Gamelan Pelog  
`JAM` jamz  
  
Custom scales can be generated with the following syntax, where numbers are chromatic steps from the root

    >>> whole_tone_scale = Scale([0, 2, 4, 6, 8, 10])

R specifies a random note in the scale

    >>> t.chord = C4, whole_tone_scale
    >>> t.pattern = 1, R, R, -6

Grace notes are specified by using floats

    >>> t.pattern = 1, 1., 1., 1.

Use the g function to create a grace note on note specified with a symbol

    >>> t.chord = None
    >>> t.pattern = C, g(C), g(C), g(C)


### <a name="patterns_1"></a>Patterns 1

(If you're following along in the documentation, now is a good time to use `stop()` to clear things out.)

Start a thread

    >>> t = Thread(1)
    >>> t.chord = C, DOR
    >>> t.pattern = 1, 1, 1, 1
    >>> t.start()

Once started, a thread repeats its pattern. Each repetition is called a *cycle*. Each cycle is subdivided evenly by the steps in the pattern.

    >>> t.pattern = 1, 0, 1, 0              # 4/4
    >>> t.pattern = 1, 0, 1                 # 3/4
    >>> t.pattern = 1, 1, 0, 1, 1, 0, 1     # 7/8

Each step of a pattern can be a note, but it can also be a subdivision

    >>> t.pattern = 1, [1, 1], 1, 1
    >>> t.pattern = 1, [1, 1], 1, [1, 1, 1]

...or a subdivision of subdivisions, ad finitum

    >>> t.pattern = 1, [2, [1., 1.]], [3, [2, 1], 1.], [5, [4., 3.]]

So brackets indicate subdivisions. Parens, however, indicate a choice.

    >>> t.pattern = 1, (2, 3, 4), 1, 1

Brackets and parens can be combined to create intricate markov chains

    >>> clear()
    >>> d = Thread(10)              # channel 10 is MIDI for drums
    >>> tempo(132)      
    >>>
    >>> d.pattern = [([K, H], [K, K]), (K, O)], (H, [H, K]), (S, [S, (O, K), 0, g(S)]), [[H, H], ([H, H], O, [g(S), g(S), g(S), g(S)])]         # K, S, H, O are built-in aliases for 36, 38, 42, 46
    >>> d.start()

Patterns are python lists, so they can be manipulated as such

    >>> d.pattern = [K, [O, H]] * 4
    >>> d.pattern[2] = S
    >>> d.pattern[6] = S
    >>> d.pattern[6] = [(S, [S, K])]
