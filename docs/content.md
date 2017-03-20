# BRAID

Braid is a single-import module for Python 3 that comprises a musical notation system, livecoding framework, and sequencer for monophonic MIDI synths. Its emphasis is on interpolation, polyrhythms, phasing, and entrainment.

1. [Goals](#goals)
1. [Reference](#reference)
1. [Documentation](#documentation)
    1. [Hello World](#hello)
    1. [Notes and `Thread.chord`](#notes)
    1. [`Thread.pattern`, part 1](#pattern_1)
    1. [`Thread.pattern`, part 2](#pattern_2)
    1. [`Thread.velocity` and `Thread.grace`](#velocity)
    1. [`Thread.phase`](#phase)
    1. [`Thread.rate`](#rate)    
    1. [Tweening](#tweens)
    1. [Signals](#signals)
    1. [Tweening rate and sync](#sync)
    1. functions in pattern / lambdas
    1. sequencing: triggers
    1. hardware: creating synthes for midi devices

## Goals

- **Idiosyncratic**  
Braid is designed to embody the methods and aesthetics I've used in my projects. It does not intend to be for general purpose music making. It is an exercise in developing a domain-specific language for a very specific set of concerns, namely my interest evolving rhythmic relationships and data sonification.

- **Limited scope**  
Braid is MIDI-based, it's monophonic, and it's only a sequencer, not a synthesizer. Those are pretty significant limitations, but it means that this exists and (mostly) works. It also means I can take advantage of all the awesome cheap MIDI monosynths coming out, like the [Meeblip](https://meeblip.com/) and the [Korg Volca](http://i.korg.com/volcaseries) series.

- **Integrates with Python**  
I find specialized development environments frustrating, as they limit what's possible to their own sandbox. Braid is just a python module, and as such can be used within other python projects.  

- **Both livecoding and scripting**  
 Sometimes I want to improvise within a livecoding framework, sometimes I want to make a composition. Braid doesn't make much of a distinction between these ways of operating, as it's all python and uses the interpreter as a livecoding environment. Premade scripts can be easily executed within the interpreter.

- **Works on small devices**  
Braid is has very low processor overhead, suitable for running on devices like the Raspberry Pi.



#### A note on names

This framework is called Braid, and the fundamental objects are called _threads_&mdash;a thread corresponds to a hardware or software monosynth, and refers to the temporal operations of Braid through which threads can come in and out of sync. This is not a thread in the programming sense (in that respect Braid is single-threaded).


## <a name="reference"></a>Reference

### Glossary
- Thread
- cycle

### Global functions
- `log_midi(True|False)`        Choose whether to see MIDI output (default: False)
- `midi_out_interface(int)`     Change MIDI interface for output (zero-indexed)
- `Thread(int channel)`         Create a Thread on the specified MIDI channel
- `Scale([ints])`               Create a Scale with a list of ints corresponding to half-steps from root (0)
- `play()`
- `pause()`
- `stop()`
- `clear()`
- `tempo()`
- `g()`

### Symbols
- `K`, `S`, `H`, `O`

### <a name="scales"></a>Scales
`CHR` Chromatic, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
`MAJ` Major, 0, 2, 4, 5, 7, 9, 11
`DOM` Dominant, 0, 2, 4, 5, 7, 9, 10
`MIN` Harmonic minor, 0, 2, 3, 5, 7, 8, 11
`MMI` Major-Minor, 0, 2, 4, 5, 6, 9, 11  
`PEN` Pentatonic, 0, 2, 5, 7, 10
`SUSb9` Suspended flat 9, 0, 1, 3, 5, 7, 8, 10
`ION` Ionian, 0, 2, 4, 5, 7, 9, 11
`DOR` Dorian, 0, 2, 3, 5, 7, 9, 10 
`PRG` Phrygian, 0, 1, 3, 5, 7, 8, 10
`MYX` Myxolydian, 0, 2, 4, 5, 7, 9, 10
`AOL` Aolian, 0, 2, 3, 5, 7, 8, 10
`LOC` Locrian, 0, 1, 3, 5, 6, 8, 10
`BLU` Blues, 0, 3, 5, 6, 7, 10
`SDR` Gamelan Slendro, 0, 2, 5, 7, 9
`PLG` Gamelan Pelog, 0, 1, 3, 6, 7, 8, 10
`JAM` jamz, 0, 2, 3, 5, 6, 7, 10, 11


## <a name="documentation"></a>Documentation

### <a name="hello"></a>Hello World

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

From now on, we'll assume that we're livecoding within the python3 interpreter, but the code works the same in a standalone file.  


### <a name="top"></a>Top-level controls

You can start and stop individual threads, with `some_thread.start()` and `some_thread.stop()`, which essentially behave like a mute button.  

Braid also has some universal playback controls. When Braid launches, it is automatically in play mode. Use `pause()` to mute everything, and `play()` to get it going again. If you use `stop()`, it will stop all threads, so you'll need to start them up again individually. `clear()` just stops the threads, but Braid itself is still going and if you start a thread it will sound right away.

_Advanced note_  
If you're doing a lot of livecoding, it's easy to create a new thread with the same name as an old one, and this can lead to orphan threads that you hear but can't reference. Use `stop()` or `clear()` to silence these.

Try it now:

    clear()


### <a name="notes"></a>Notes and `chord`

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

A chord consists of a root note and a scale. For example, `C, MAJ` is a major scale built off of C4. That means `1, 2, 3, 4, 5` is the equivalent of `C4, D4, E4, F4, G4`. But behind the scenes, it's specified like this: `Scale([0, 2, 4, 5, 7, 9, 11])`. Here's the [list](#scales) of built-in scales.
  
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


### <a name="pattern_1"></a>`pattern`, part 1

Start a thread with a pattern

    >>> clear()
    >>> t = Thread(1)
    >>> t.start()
    >>> t.chord = C, DOR
    >>> t.pattern = 1, 1, 1, 1

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
    >>> tempo(132)                  # set the universal tempo
    >>> d = Thread(10)              # channel 10 is MIDI for drums
    >>>
    >>> d.pattern = [([K, H], [K, K]), (K, O)], (H, [H, K]), (S, [S, (O, K), 0, g(S)]), [[H, H], ([H, H], O, [g(S), g(S), g(S), g(S)])]         # K, S, H, O are built-in aliases for 36, 38, 42, 46
    >>> d.start()

Patterns are python lists, so they can be manipulated as such

    >>> d.pattern = [K, [O, H]] * 4
    >>> d.pattern[2] = S
    >>> d.pattern[6] = S
    >>> d.pattern[6] = [(S, [S, K])]


### <a name="pattern_2"></a>`pattern`, part 2

There are additional functions for working with rhythms. For example, euclidean rhythms can be generated with the euc function

    >>> clear()
    >>> tempo(132)   
    >>> d = Thread(10)
    >>> d.start()
###
    >>> steps = 7
    >>> pulses = 3
    >>> note = K
    >>> d.pattern = euc(steps, pulses, note)    # [K, 0, K, 0, K, 0, 0]

Adding a pattern to an existing pattern fills any 0s with the new pattern

    >>> d.pattern.add(euc(7, 5, H))             # [K, H, K, H, K, 0, H]

XOR'ing a pattern to an existing pattern adds it, but turns any collisions into 0s

    >>> d.pattern.xor([1, 1, 0, 0, 0, 0, 0])    # [0, 0, K, H, K, 0, H]

These can be done even if the patterns are different lengths, to create crossrhythms

    >>> d.pattern = [K, K] * 2
    >>> d.pattern.add([H, H, H, H, H])

Patterns can also be blended
    
    >>> d.pattern = blend([K, K, K, K], [S, S, S, S])   # this is probabilistic and will be different every time!

same as

    >>> d.pattern = K, K, K, K
    >>> d.pattern.blend([S, S, S, S])

blend can take a balance argument, where 0 is fully pattern A, and 1 is fully pattern B.

    >>> d.pattern = blend([K, K, K, K], [S, S, S, S], 0.2)   # more kicks, less snare

### <a name="velocity"></a>`Thread.velocity` and `Thread.grace`

All threads come with some properties built-in. We've seen [`chord`](#notes) already.  

    >>> clear()
    >>> t = Thread(10)
    >>> t.start()
    >>> t.chord = C, MAJ
    >>> t.pattern = 1, 1., 1, 1.

There is also, of course, `velocity`

    >>> t.velocity = 0.5

and `grace` is a percentage of velocity, to control the depth of the grace notes

    >>> t.velocity = 1.0
    >>> t.grace = .45



### <a name="phase"></a>`Thread.phase`

Consider the following:

    >>> clear()    
    >>>
    >>> t1 = Thread(10)
    >>> t1.chord = 76, CHR  # root note is "Hi Wood Block"
    >>>
    >>> t2 = Thread(10)
    >>> t2.chord = 77, CHR  # root note is "Lo Wood Block"
    >>>
    >>> t1.pattern = [1, 1, 1, 0], [1, 1, 0, 1], [0, 1, 1, 0]   # thanks Steve
    >>> t2.pattern = t1.pattern
    >>>
    >>> t1.start()
    >>> t2.start(t1)            # t1 as argument

Note that in this example, `t2` takes `t1` as an argument. This ensures that t2 will start in sync with t1. Otherwise, t1 and t2 will start at arbitrary times, which may not be desirable.

However, each thread also has a `phase` property that allows us to control the relative phase of threads deliberately. Phase goes from 0-1 and indicates how much of the cycle the pattern is offset.

    >>> t2.phase = 1/12         # adjust phase by one subdivision
    >>> t2.phase = 3/12
    >>> t2.phase = 7/12



### <a name="rate"></a>`Thread.rate`

By default, the cycle of each thread corresponds to the universal tempo (as we've seen, the universal `tempo()` function sets the BPM, or at least the equivalent BPM if cycles were in 4/4 time).

However, individual threads can cycle at their own `rate`. If `1.0` is the universal rate at the specified tempo, the `rate` property of each thread is a multiplier.

    >>> clear()
    >>>
    >>> t1 = Thread(1)
    >>> t1.pattern = C, C, C, C
    >>> t1.start()
    >>>
    >>> t2 = Thread(1)
    >>> t2.pattern = G, G, G, G
    >>> t2.start(t1)           
    >>>
    >>> t2.rate = 0.5                   # half-speed!    

Notice that depending on when you hit return, changing the rate can make threads out of sync. The way to get around this is to make sure it changes on a cycle edge. For this, use a [trigger](#triggers):

    >>> t2.stop()
    >>> t2.start(t1)
    >>> def x(): t2.rate = 0.5
    ...
    >>> t2.trigger(x)


### <a name="tweens"></a>Tweening

Now for the fun part. Any property on a thread can be **tweened**&mdash;that is, interpolated between two values over time (yes, the term is borrowed from Flash).

This is done simply by assigning a `tween()` function to the property instead of a value. `tween()` has two required arguments: the target value, and the number of cycles to get there. (A transition function can also be specified, more on that below.) Braid will then automatically tween from the current value to the target value.

    >>> clear()
    >>>
    >>> p1 = Thread(1)
    >>> p2 = Thread(1)
    >>>
    >>> pp = [E4, Gb4, B4, Db5], [D5, Gb4, E4, Db5], [B4, Gb4, D5, Db5]
    >>> p1.pattern = p2.pattern = pp
    >>>
    >>> p1.start(); p2.start(p1)            # two commands, one line
    >>>
    >>> p2.phase = tween(1/12, 4.0)         # take four cycles to move one subdivision

All properties on a thread can be tweened. Device specific MIDI parameters move stepwise between ints within the range 0-127. `rate`, `phase`, `velocity`, `grace` change continuously over float values. `chord` will probabilistically waver between the current value and the target value. `pattern` will perform a blend between the current and target patterns on each cycle, with the balance shifting from one to the other.

    >>> clear()
    >>>
    >>> t = Thread(1)
    >>> t.start()
    >>> t.pattern = K, K, S, [0, 0, 0, K]
    >>> t.pattern = tween([[K, K], [S, 0, K, 0], [0, K], [S, K, 0, K]], 8)
    >>>
    >>> # or:
    >>>
    >>> t.pattern = euc(8, 5, 77)
    >>> t.pattern = tween(euc(8, 6, 76), 8)
    >>> t.pattern = euc(8, 5, 77)


### <a name="signals"></a>Signals

