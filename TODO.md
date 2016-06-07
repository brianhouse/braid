#### plan

#### minor (feature adds, wont break)
- routing for serotonin to take live and also rect/cycle/noise (ie, combine with cynth -- rect/cycle/noise/live)
- serotonin control of which live input (dry/dist)
- continuous tweening of frequencies
- continuous tweening of patterns (via note velocity instead of coin flipping)
- need longer ADSR (how within midi?)
- tweenable ADSR object
- macro for per-note changes
- basically, per-note velocity has to tween separately from overall velocity.
- macro for sequences
- how to connect directly to AU DLS Synth
- could use a cycles callback on driver or voice for general sequencing

#### major (will break)
- lock is backwards
- tweenable signals (hence signals as objects)
- integrate lilypond



##### thoughts

accents are important and not adequately dealt with
1, 0, 1, 1
could be a library wrapper
a(1), 0, 1, 1
with optional v
a(1, .2)
nah, no option.

but there is no note velocity reset. implement a one-shot velocity?

