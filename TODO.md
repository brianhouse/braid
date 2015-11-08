- endwith -- after each cycle? or after all repeats? aftereach, afterall?

- need @decorators for note wrappers
- how to connect directly to AU DLS Synth
- plotter in signal, not tween? or tweens as signal?

## changes
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
