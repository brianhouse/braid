need @decorators for note wrappers

how to connect directly to AU DLS Synth

## changes
- tweens timed via cycles or t is an issue (floats or ints)
- driver.on_t
- note that sharing sequences among voices will result in bad shit v2.set(v1.sequence) -- need copy function
- how do accidentals work in pattern? and they are awkward in lilypond output
- phase locking between voices
- lilypond should take a template filename, and fill in the score data, and auto-run lilypond
- lilypond should be integrated, not a separate voice
- more useful for resolve to not have a weight, but include arbitrary possibilities? or if the third term is a float, it's a weight, otherwise arbitrary possibilities


## bugs
uh oh -- skipping the driver doesnt skip the tweens. not sure how that's going to get fixed.
start_t = driver.t - driver.skip   # or something?


## tempo
seem to be taking the approach where everything runs independently
maybe it's just a matter of implementing correction -- find the phase difference, and if it's incorrect (not within a tolerance of a lcd), tween it


is config really needed? could avoid the yaml dependency. would be great to have a pure python3 import.

