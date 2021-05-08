CHANGELOG
=========

## v0.14.1
- fixed distribution issue causing circular import error

## v0.14.0
Additions from github user discohead:
- Note "queues" for Patterns which return a rotating value each cycle: e.g. Q([1, 2, 3]) first returns 1, then 2 on the next cycle, 3 on the next, then 1 again and so on. With the option to randomize the rotation direction via a drunk property, e.g. Q([1, 2, 3], drunk=True).
- Per note velocity scaling from float steps, e.g. 60.5 will play note 60 at velocity * 0.5, if the part after the decimal is .0 fallback to existing grace note behavior
- A v() for generating notes with velocity scaling from named (or not) notes, options for randomizing the velocity scaling
- A s() for generating notes with velocity scaling using signals driven by the thread's phase
- A sh() tween generator for making random, sample and hold like tweens, with lock and lag functionality.
- sin(), tri(), pw() tween generators and associated signal functions
- A phase_offset property for tweens.
- A number of new signals likes noise(), triangle(), pulse(), sine()
- Signals have (a)mp, (r)ate, (p)hase and (b)ias parameters and can be composed of other signals, i.e.: sine(a=sine(p=triangle(s=pulse(r=4), r=2)))
- A number of additional parameters to the euc() pattern generator
- A constrain property to Scales to keep degrees in range and avoid ScaleErrors
- An octaves_above property to Scales for customizing the upper octave boundary
- A quantize() method to Scales for quantizing semitone values to the scale
- A notes() method to Patterns for getting all non-0, non-REST values in a Pattern
- An invert() method to Patterns, e.g. [1, 0, 1, 0] becomes [0, 1, 0, 1] (but with some options for customization)
- A drunk property on Pattern to treat all Qs as drunk
- A tweenable transpose property to Threads. This property can also be a list of values that rotates at a rate determined by the transpose_step_len property, which determines how many steps to hold the transpose value before advancing to the next. Markov-expansion of tuples are supported.
- Convenience methods on Thread for getting setting the root and scale of its chord
- Some additional named Scales

## v0.13.0
- channel now a changeable parameter
- control values cached per-channel-per-thread
- start now called automatically when not livecoding
- new signal syntax
- cross timing emphasis
- cleaned up documentation
- bugfixes

## v0.12.0
- fixed note-level control change so it fires a priori
- fixed issues 7-10
- changed notation octaves to MIDI standard instead of traditional
- added saw feature

## v0.11.0
- improved error handling
- added osc feature
- added 'keyboard' setting
- added MidiIn->Thread capability
- added breakpoint signals

## v0.10.1
- refactored to eliminate lib folder
- added on_end to Tween
- realized IDLE is a good host

## v0.10.0
- made a changelog
- eliminated returns for in-place pattern methods (to suppress terminal output)
- added repeat functionality to Thread and core
- documentation
