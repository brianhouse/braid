## changes
- implement MIDI
- signal_f needs to interpolate between indexes to avoid stairstepping at low source res (resampling)
- how do accidentals work in pattern? and they are awkward in lilypond output
- phase locking between voices
- lilypond should take a template filename, and fill in the score data, and auto-run lilypond
- lilypond should be integrated, not a separate voice
- more useful for resolve to not have a weight, but include arbitrary possibilities? or if the third term is a float, it's a weight, otherwise arbitrary possibilities
- how often would you want to repeat a tween without tweaking (or reversing) values?
- should allow initialization of values in Voice (named dictionary **)
- hard channel assignments for voices is maybe something iffy with serotonin -- should be settable per note?

- absolute pitch vs steps is awkward with a cutoff value. use chord = None? prevents mixing.


## bugs
uh oh -- skipping the driver doesnt skip the tweens. not sure how that's going to get fixed.
start_t = driver.t - driver.skip   # or something?


## tempo
seem to be taking the approach where everything runs independently
maybe it's just a matter of implementing correction -- find the phase difference, and if it's incorrect (not within a tolerance of a lcd), tween it


## structure
if controller has sub folders that include py and maxpat, separating voice and synth is not so consistent

voice -> synth? synth -> voice?
voice is better in the syntax
controller -> hand?

then again, a synth comprises multiple voices, a controller is singular


is config really needed? could avoid the yaml dependency. would be great to have a pure python3 import.

