## changes

- pitch bend
- signal_f needs to interpolate between indexes to avoid stairstepping at low source res
- how do accidentals work in pattern? and they are awkward in lilypond output
- phase locking between voices
- lilypond should take a template filename, and fill in the score data, and auto-run lilypond
- use libpd and get the BasicMidi interface embedded (will help with raspi)
- more useful for resolve to not have a weight, but include arbitrary possibilities? or if the third term is a float, it's a weight, otherwise arbitrary possibilities


- tweening patterns that include parens? does that work right?
no. tweening resolves the patterns, so when the tween ends, youre left looping a resolved pattern, not a markov one
so if position >= 1.0, return the target value DONE
this is still not going to work right for partial tweens
wait. why? isnt it resolving each step? no, it's not, calc isnt being called because the tween is gone -- partial tweens shouldnt end, they have to keep calcing.
automation control is the only purpose for partials, maybe there is a better system.

- should have a static blend function to make new hybrid patterns
-> this is the better system. blends would have to keep calculating.

- how often would you want to repeat a tween without tweaking (or reversing) values?

- should allow initialization of values in Voice


## bugs
uh oh -- skipping the driver doesnt skip the tweens. not sure how that's going to get fixed.

start_t = driver.t - driver.skip   # or something?


## tempo
seem to be taking the approach where everything runs independently
maybe it's just a matter of implementing correction -- find the phase difference, and if it's incorrect (not within a tolerance of a lcd), tween it