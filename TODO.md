making this an instrument, not a compositional tool.

no more cuteness of syntax.
basically taking out all sequencing.

/
only thing missing here really is a good way to set individual note velocities.

dicts?

[1, 0, 1, 0]
[{1: 0.2}, 0, {1: 0.9}, 1]

ha! not bad. could have thought of that before.

/

so how are you going to control it?

for now:
just like before, functions that define presets, and take a transition time that goes to the tweens.

presets are basically just patterns.

ADSR is going to have to get in here, unfortunately.

pattern control could be euclidean + blend.

grid control could make sense at some point for choosing how to sync threads, etc.

/

all the things:

kick = Drums()
kick.pattern = [1, 0, 0, 1, 0, 0, 1, 0]
kick.start()

kick.velocity = 0.5
kick.chord = C, MIN
kick.rate = 2/3

kick.entrain(hat, 5)
kick.entrain(None)


kick.velocity = Tween(0.8, 7)   # always in terms of cycles


shit, that doesnt really work.


kick.velocity(0.8, 7)
so does that mean they are all functions?
no, wait, this does work, with setters that give Tween the initial value.

so then I just dont like entrain as a function, doesnt seem to match

so sync could in fact be a lock, a property.

kick.sync = hat # does it immediately
kick.sync = Tween(hat, 8) # does it in 8 cycles

BAM. (not sure how sync actually works, but hey).


PLAN: 
microrhythms
adjustable grace level
then get adsr in there somehow.
then get the controller up.
then make some fucking music already.

