## changes

- signal_f needs to interpolate between indexes to avoid stairstepping at low source res
- how do accidentals work in pattern? and they are awkward in lilypond output
- phase locking between voices
- lilypond should take a template filename, and fill in the score data, and auto-run lilypond
- more useful for resolve to not have a weight, but include arbitrary possibilities? or if the third term is a float, it's a weight, otherwise arbitrary possibilities

- how often would you want to repeat a tween without tweaking (or reversing) values?

- should allow initialization of values in Voice (named dictionary **)


- should have a static blend function to make new hybrid patterns
-> this is the better system. blends would have to keep calculating.

* make nanovector work properly -- it should always tween from the current state to the target, dynamically, not to an absolute dial position.

so the target is a CrossTween, the source is the current tween.



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

- lilypond should be integrated, not a separate voice


## raspi

ok, libpd is out. however, it could still work as a separate headless process. even launched from within python. though we'd still have the settings problems.

could go the implemented MIDI rtmidi route. this would be more elegant.

this is maybe not the thing to do for shim'ring. but for embeddable installation things it would be awesome.




