# BRAID

Braid is a single-import module for Python 3 that comprises a musical notation system, livecoding framework, and sequencer for monophonic MIDI synths. Its emphasis is on interpolation, polyrhythms, phasing, and entrainment. 

Braid can be downloaded from its [GitHub repository](https://github.com/brianhouse/braid/releases).

It is developed by [Brian House](http://brianhouse.net).


## Contents

1. [Goals](#goals)
1. [Installation](#installation)
1. [Tutorial](#tutorial)
    1. [Prerequisites](#prereqs)
    1. [Hello World](#hello)
    1. [Notes and `Thread.chord`](#notes)
    1. [`Thread.pattern`, part 1](#pattern_1)
    1. [`Thread.pattern`, part 2](#pattern_2)
    1. [`Thread.pattern`, part 3](#pattern_3)
    1. [`Thread.velocity` and `Thread.grace`](#velocity)
    1. [`Thread.phase`](#phase)
    1. [`Thread.rate`](#rate)    
    1. [Tweening](#tweens)
    1. [Signals](#signals)
    1. [Tweening rate and sync](#sync)
    1. [Triggers](#triggers)
    1. [MIDI devices and properties](#devices)
    1. [Adding properties](#properties)
    1. [Customizing MIDI behavior](#custom)
1. [Reference](#reference)
    1. [Glossary](#glossary)
    1. [Global functions](#functions)
    1. [Symbols](#symbols)
    1. [Scales](#scales)
    1. [Signals](#signals)
    

## Goals

- **Idiosyncracy**  
Braid is designed to embody the methods and aesthetics I've used in my projects. It does not intend to be for general purpose music making, nor does it have pedagogy in mind. It is an exercise in developing a domain-specific language for a very specific set of concerns, namely my interest in gradually evolving rhythmic relationships and music with a relationship to data.

- **Limited scope**  
Braid is MIDI-based, it's monophonic, and it's only a sequencer, not a synthesizer. Those are pretty significant limitations, but it means that I was able to complete this. It also means I can take advantage of all the awesome cheap MIDI monosynths coming out, like the [Meeblip](https://meeblip.com/) and the [Korg Volca](http://i.korg.com/volcaseries) series.

- **Integrates with Python**  
I find specialized development environments frustrating, as they limit what's possible to their own sandbox. Braid is just a python module, and as such can be used within other python projects. This is the source of much of its usefullness and power (particularly when it comes to working with data).  

- **Both livecoding and scripting**  
 Sometimes I want to improvise within a livecoding framework, sometimes I want to make a composition. Braid doesn't make much of a distinction between these ways of operating, as it's all python and uses the interpreter as a livecoding environment. Premade scripts can be easily executed within the interpreter.

- **Works on small devices**  
Braid is has very low processor overhead, suitable for running on devices like the Raspberry Pi.

#### A note on names

This framework is called Braid, and the fundamental objects are called _threads_&mdash;a thread corresponds to a hardware or software monosynth, and refers to the temporal operations of Braid through which threads can come in and out of sync. This is not a thread in the programming sense (in that respect Braid is single-threaded).


## <a name="installation"></a>Installation

Open that terminal.

You'll need to have python3 installed (which should also come with pip3). On OS X, the best way to do this is to use [Homebrew](https://brew.sh/). After installing Homebrew, `brew install python3` is all you need. On Linux, `sudo apt-get python3`.

To install (or update) Braid: `pip3 install git+git://github.com/brianhouse/braid --upgrade`

At this point, if you are familiar with programming using a text editor and the terminal, have at it. If not, follow the instructions for saving a Braid "Hello World" script below. In the Finder, right-click that python file, and open it using the latest version of IDLE, which should appear as one of your choices. You can then use IDLE's built-in text editor to write, save, and run ("Run->Run Module") Braid scripts, or use it to livecode (Run->Python Shell).

## <a name="tutorial"></a>Tutorial

### <a name="prereq"></a>Prerequisites

Braid is, fundamentally, an extension to Python 3. This documentation won't cover python syntax&mdash;for that, look [here](https://docs.python.org/3/tutorial/). Most of the power of Braid comes from the fact that it can be interleaved with other python code. Such possibilities are left to the practitioner (aka me?).

Additionally, this documentation assumes a general knowledge of MIDI.


### <a name="hello"></a>Hello World

Any MIDI software or hardware device you have running should more or less work with Braid to make sounds. If you are on OS X, to simplify things download and run [this simple MIDI bridge app](http://brianhouse.net/download/general_MIDI_bridge.app.zip) which will let you use General MIDI for the purposes of this documentation (make sure no other MIDI devices are running before launching the app, and launch it before starting Braid).

To begin working with Braid, launch a python3 interpreter (from the terminal by typing `python3`, or from within IDLE by selecting Run -> Python Shell) and `import braid`: 

    $ python3
    {{Python 3.6.0 (default, Mar  4 2017, 12:32:37) 
    [GCC 4.2.1 Compatible Apple LLVM 8.0.0 (clang-800.0.42.1)] on darwin
    Type "help", "copyright", "credits" or "license" for more information.}}
    >>> from braid import *
    {{MIDI outputs available: ['to general_MIDI_bridge 1', 'to general_MIDI_bridge 2']
    MIDI OUT: to general_MIDI_bridge 1
    MIDI  IN: from general_MIDI_bridge 1
    Loaded VolcaKick
    Loaded VolcaBeats
    Braid started
    Playing}}

Now, create a *thread*&mdash;the fundamental object of Braid&mdash;and start it:

    >>> t = Thread(1)               # create a thread&mdash;the argument indicates the MIDI channel
    >>> t.pattern = C, C, C, C      # add a pattern
    >>> t.start()                   # start it

That's it! You should be hearing the steady pulse of progress.

Alternately, you can create a python file with Braid syntax like this:

    from braid import *

    t = Thread(1)
    t.pattern = C, C, C, C
    t.start()

    play()                      # dont forget this

Save it as `hello_world.py`, and run it with `python3 hello_world.py 0 0`. The (optional) arguments designate the MIDI out and in interfaces to use.  

From now on, we'll assume that we're livecoding within the python3 interpreter, but the code works the same in a standalone file.  


### <a name="top"></a>Top-level controls

You can start and stop individual threads, with `a_thread.start()` and `a_thread.stop()`, which essentially behave like a mute button.  

Braid also has some universal playback controls. When Braid launches, it is automatically in play mode. Use `pause()` to mute everything, and `play()` to get it going again. If you use `stop()`, it will stop all threads, so you'll need to start them up again individually. `clear()` just stops the threads, but Braid itself is still going and if you start a thread it will sound right away.

_Advanced note_: If you're doing a lot of livecoding, it's easy to create a new thread with the same name as an old one, and this can lead to orphan threads that you hear but can't reference. Use `stop()` or `clear()` to silence these.

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


### <a name="pattern_1"></a>`Thread.pattern`, part 1

Start a thread with a pattern

    >>> t = Thread(1)
    >>> t.chord = C, DOR
    >>> t.pattern = 1, 1, 1, 1
    >>> t.start()

Once started, a thread repeats its pattern. Each repetition is called a *cycle*. Each cycle is subdivided evenly by the **steps** in the pattern.

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
    >>>
    >>> d.pattern.reverse()


### <a name="pattern_2"></a>`Thread.pattern`, part 2

There are additional functions for working with rhythms. For example, euclidean rhythms can be generated with the euc function

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


### <a name="pattern_3"></a>`Thread.pattern`, part 3

Additionally, any given step in a pattern may also be a function. This function should return a note value.

    >>> t = Thread(1)
    >>> t.chord = D, PRG
    >>>
    >>> def x():
    ...    return choice([1, 3, 5, 7])
    >>>
    >>> t.pattern = [x] * 8
    >>>
    >>> t.start()

 This is particularly useful for manipulating synth parameters at each step (see [below](#devices)). In this case, creating a wrapped function allows the actual note value to be passed as a parameter.

    >>> t = VolcaKick(1)
    >>>
    >>> def k(n):
    ...     def f(t):
    ...         t.pulse_colour = 127
    ...         t.pulse_level = 127
    ...         t.tone = 40
    ...         t.amp_attack = 0
    ...         t.amp_decay = 80
    ...         t.resonator_pitch = 0
    ...         return n
    ...     return f
    >>>
    >>> def s(n):
    ...     def f(t):    
    ...         t.pulse_colour = 127
    ...         t.pulse_level = 127
    ...         t.tone = 60
    ...         t.amp_attack = 0
    ...         t.amp_decay = 20
    ...         t.resonator_pitch = 34
    ...         return n
    ...     return f
    >>>
    >>> t.pattern = k(1), k(3), s(20), k(1)              # custom properties for k and s notes
    >>> t.start()




### <a name="velocity"></a>`Thread.velocity` and `Thread.grace`

All threads come with some properties built-in. We've seen [`chord`](#notes) already.  

    >>> t = Thread(10)
    >>> t.chord = C, MAJ
    >>> t.pattern = 1, 1., 1, 1.
    >>> t.start()

There is also, of course, `velocity`

    >>> t.velocity = 0.5

and `grace` is a percentage of velocity, to control the depth of the grace notes

    >>> t.velocity = 1.0
    >>> t.grace = .45


### <a name="phase"></a>`Thread.phase`

Consider the following:

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

As we've already used it, the `tempo()` function sets the universal BPM (or at least the equivalent BPM if cycles were in 4/4 time). Braid silently keeps track of cycles at this tempo. By default, the cycles of each thread match this reference. We just saw how `phase` can offset the patterns of a thread&mdash;it does this in relation to the reference cycle.

Likewise, individual threads can also cycle at their own `rate`. The `rate` property of each thread is a multiplier of the reference cycles&mdash;0.5 is twice as slow, 2 is twice as fast.

    >>> t1 = Thread(1)
    >>> t1.pattern = C, C, C, C
    >>> t1.start()
    >>>
    >>> t2 = Thread(2)
    >>> t2.pattern = G, G, G, G
    >>> t2.start(t1)                    # keep in phase
    >>>
    >>> t2.rate = 1/2                   # half-speed!    

Notice that depending on when you hit return, changing the rate can make threads go out of sync (similar to how starting threads at different times puts them out of phase). The way to get around this is to make sure it changes on a cycle edge. For this, use a [trigger](#triggers):

    >>> t2.stop()
    >>> t2.start(t1)
    >>> def x(): t2.rate = 0.5          # one-line python function
    ...                                 # hit return twice
    >>> t2.trigger(x)                   # executes x at the beginning of the next cycle

If you're working with scripts, using triggers like this isn't necessary, as things will execute simultaneously.




### <a name="tweens"></a>Tweening

Now for the fun part. Any property on a thread can be **tweened**&mdash;that is, interpolated between two values over time (yes, the term is borrowed from Flash).

This is done simply by assigning a `tween()` function to the property instead of a value. `tween()` has two required arguments: the target value, and the number of cycles to get there. (A transition function can also be specified, more on that below.) Braid will then automatically tween from the current value to the target value, starting with the next cycle.

    >>> p1 = Thread(1)
    >>> p2 = Thread(2)
    >>>
    >>> pp = [E4, Gb4, B4, Db5], [D5, Gb4, E4, Db5], [B4, Gb4, D5, Db5]
    >>> p1.pattern = p2.pattern = pp
    >>>
    >>> p1.start(); p2.start(p1)            # two commands, one line
    >>>
    >>> p2.phase = tween(1/12, 4.0)         # take four cycles to move one subdivision

All properties on a thread can be tweened. Device specific MIDI parameters move stepwise between ints within the range 0-127 (see [below](#devices)). `rate`, `phase`, `velocity`, `grace` change continuously over float values. `chord` will probabilistically waver between the current value and the target value. `pattern` will perform a blend between the current and target patterns on each cycle, with the balance shifting from one to the other.

    >>> t = Thread(10)
    >>> t.start()
    >>> t.pattern = K, K, S, [0, 0, 0, K]
    >>> t.pattern = tween([[K, K], [S, 0, K, 0], [0, K], [S, K, 0, K]], 8)
    >>>
    >>> # or:
    >>>
    >>> t.pattern = euc(8, 5, 43)
    >>> t.pattern = tween(euc(8, 6, 50), 8)
    >>> t.pattern = tween(euc(8, 5, 43), 8)


### <a name="signals"></a>Signals

Tweens can take an additional property, called a signal. This is any function that takes a float value from 0 to 1 and return another value from 0 to 1&mdash;a nonlinear transition function when you don't want to go from A to B in a straight line. (Yes, Flash again).

Built-in signals: `linear` (default), `ease_in`, `ease_out`, `ease_in_out`, `ease_out_in`

    >>> t = Thread(1)
    >>> t.chord = D, DOR
    >>> t.pattern = [1, 3, 5, 7] * 4
    >>> t.start()
    >>> 
    >>> t.chord = tween((E, MAJ), 8, ease_in_out)
    >>> t.chord = tween((E, MAJ), 8, ease_out_in)

Since signals are just functions, you can write your own in Python. `ease_out`, for example, is just

    >>> def ease_out(pos):
    ...    pos = clamp(pos)    
    ...    return (pos - 1)**3 + 1

To view a graphic representation of the function, plot it.

    >>> plot(ease_out)

You can also convert _any_ timeseries data into a signal function using `make_signal()`. You might use this to tween velocity over an entire composition, for example, or for data sonification.

    >>> data = 0, 0, 1, 0.8, 1, 0.2, 0, 0.4, 0.8, 1     # arbitrary breakpoints
    >>> f = make_signal(data)
    >>> plot(f)
    >>> 
    >>> t = Thread(1)
    >>> t.chord = D, SUSb9
    >>> t.pattern = [1, 2, 3, 4] * 4
    >>> t.start()
    >>>
    >>> t.velocity = 0.0                                # sets the lower bound of the range to 0.0
    >>> t.velocity = tween(1.0, 24, f)                  # sets the uppper bound of the range to 1.0, and applies the signal shape over 24 cycles


### <a name="sync"></a>Sync, and tweening rate

Braid does something special when you assign a tween to `Thread.rate`. Ordinarily, if two threads started in sync and one thread tweened its rate, they would inevitably end up out of sync. However, Braid automatically adjusts its tweening function such that threads will remain aligned as best as possible.

    >>> t1 = Thread(1)
    >>> t1.chord = D, SUSb9
    >>> t1.pattern = 1, 1, 1, 1
    >>> t1.start()
    >>>
    >>> t2 = Thread(2)
    >>> t2.chord = D, SUSb9
    >>> t2.pattern = 4, 4, 4, 4
    >>> t2.start(t1)
    >>>    
    >>> t2.rate = tween(0.5, 4)

As simple as that is, that's probably the most interesting feature of Braid to me, and what give it its name. Note that rate tweens kept in sync in this way will start at the beginning of the next cycle that they are called.

If you _don't_ want this functionality, pass `sync=False` to the thread constructor, and the thread won't try to reconcile itself.

    >>> t = Thread(1, sync=False)


### <a name="triggers"></a>Triggers

You can sequence in Braid using triggers. A trigger consists of a function, the number of *complete* cycles to wait before executing it, and whether or not (and how many times) to repeat. Triggers can be added to individual threads (`Thread.trigger()`), which then reference the thread's cycle, or they can use the universal `trigger()` function, which reference the universal (silent) cycles (as we've seen with `Thread.rate` and `Thread.phase`, these can be different).

Triggers execute at the edge between cycles. 

#### Thread Triggers

    >>> t = Thread(1)
    >>> t.chord = D, SUSb9
    >>> t.pattern = 1, 1, 1, 1
    >>> t.start()
    >>>
    >>> def x(): t.pattern = 4, 4, 4, 4         # one-line python function
    ...
    >>> t.trigger(x)                            # triggers x at the end of the current cycle
    >>> t.trigger(x, 1)                         # triggers x at the end of the first complete cycle
    >>> t.trigger(x, 4)                         # triggers x at the end of the fourth complete cycle

You might want to reuse the same triggered function with different threads. This is facilitated by including an argument in the function definition which will be passed the thread that triggered it.

    >>> t1 = Thread(1)
    >>> t1.chord = D, SUSb9
    >>> t1.pattern = 1, 1, 1, 1
    >>> t1.start()
    >>>
    >>> t2 = Thread(2)
    >>> t2.chord = D, SUSb9
    >>> t2.pattern = 4, 4, 4, 4
    >>> t2.start(t1)
    >>>
    >>> def x(t): t.pattern = R, R, R, R    # generic 't' argument
    ...
    >>> t1.trigger(x, 2)
    >>> t2.trigger(x, 2)                    # same function

Using a third argument, triggers can be repeated infinitely or for a set number of times.

    >>> t.trigger(x, 4, 2)      # trigger x after 4 cycles and after 8 cycles
    >>> t.trigger(y, 6, True)   # trigger x every 6 cycles 

Also:
    
    >>> t.trigger(y, 0, True)   # nope

    >>> t.trigger(y)            # you probably wanted to do this
    >>> t.trigger(y, 1, True)   

To cancel all triggers on a thread, pass `False`.

    >>> t.trigger(False)

To cancel any triggers on a thread that are repeating infinitely, pass `repeat=False` without other arguments.

    >>> t.trigger(repeat=False)

#### Universal Triggers

For universal triggers, no thread argument can be supplied to the trigger function. And universal triggers operate via the underlying cycle at the global tempo. Otherwise, they are the same as thread triggers, and are particularly useful for sets of changes, as defined in larger functions, or universal functions. 

    >>> t1 = Thread(1)
    >>> t1.chord = D, SUSb9
    >>> t1.pattern = 1, 1, 1, 1
    >>> t1.start()
    >>>
    >>> t2 = Thread(2)
    >>> t2.chord = D, SUSb9
    >>> t2.pattern = 4, 4, 4, 4
    >>> t2.start(t1)
    >>>
    >>> def x():
    ...     tempo(tempo() * 1.3)                    # calling tempo without arguments returns the current value
    ...     t1.chord = D2, SUSb9
    ...     t1.phase = 1/8
    ...     t1.pattern = t2.pattern = R, R, R, R
    >>> trigger(x, 2)


### <a name="devices"></a>MIDI devices and properties

Braid is designed to work with hardware monosynths. Thus far, the only actual MIDI output we've been sending are MIDI notes. But CC values from devices are mapped directly to thread properties.

Devices are represented in Braid as extensions to the thread object. To create a custom thread, use the `make()` function. `make()` is passed a dictionary with property names mapped to MIDI CC channels.

    >>> Voltron = make({'attack': 54, 'decay': 53, 'filter_cutoff': 52, 'pulse_width': 51})

Now, Voltron can be used like any thread, but it will also have the specified CC values that can be set, tweened, etc.

    >>> t = Voltron(1)
    >>> t.pattern = [1, 2, 3, 5] * 4
    >>> t.filter_cutoff = 0
    >>> t.filter_cutoff = tween(127, 8)
    >>> t.start()

Since you'll probably be using the same MIDI devices all the time, and it is tedious to specify this each time you run Braid (especially with large numbers of controls), Braid also automatically loads custom thread types from the `synths.yaml` file in the root directory.

Note: A second dictionary can be passed to `make()` as an additional parameter with property names mapped to default MIDI values.


### <a name="custom"></a>Customizing MIDI behavior

Coming soon. See `custom.py` in the examples.


### <a name="properties"></a>Adding properties

In some cases, you may want to use a reference property that does not directly affect a thread itself or send any MIDI data&mdash;a thread-specific variable that can be tweened as though it were a property, in order to guide other processes.

    >>> t = Thread(1)
    >>> t.add('ref')
    >>> t.ref = 0
    >>> t.ref = tween(1.0, 8)


## <a name="reference"></a>Reference

### <a name="glossary"></a>Glossary
- `Thread`
- `cycle`
- `step`
- `trigger`

### <a name="functions"></a>Global functions
- `log_midi(True|False)`        Choose whether to see MIDI output (default: False)
- `midi_out.interface = int`    Change MIDI interface for output (zero-indexed)
- `midi_in.interface = int`     Change MIDI interface for input (zero-indexed)
- `midi_out.scan()`             Scan MIDI interfaces
- `Thread(int channel)`         Create a Thread on the specified MIDI channel
- `Scale([ints])`               Create a Scale with a list of ints corresponding to half-steps from root (0)
- `play()`
- `pause()`
- `stop()`
- `clear()`
- `tempo()`
- `g()`
- `clamp()`
- `plot()`
- `trigger()`
- `random()`
- `choice()`
- `make()`

### <a name="symbols"></a>Symbols
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
`DRM` stepwise drums, 0, 2, 7, 14, 6, 10, 3, 39, 31, 13

### <a name="signals"></a>Signals
`linear` (default)  
`ease_in`  
`ease_out`  
`ease_in_out`  
`ease_out_in`  