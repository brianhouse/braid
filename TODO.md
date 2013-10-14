## changes

- pitch bend
- signal_f needs to interpolate between indexes to avoid stairstepping at low source res
- how do accidentals work in pattern? and they are awkward in lilypond output
- phase locking between voices
- lilypond should take a template filename, and fill in the score data, and auto-run lilypond
- use libpd and get the BasicMidi interface embedded (will help with raspi)

- looks like there's room for freqs by using floats


## bugs
uh oh -- skipping the driver doesnt skip the tweens. not sure how that's going to get fixed.

start_t = driver.t - driver.skip   # or something?


## tempo
seem to be taking the approach where everything runs independently
