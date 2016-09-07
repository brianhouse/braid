making this an instrument, not a compositional tool (no sequencing controls)

so how are you going to control it?

livecode.

controller: just like before, functions that define presets, and take a transition time that goes to the tweens.

/

PLAN: 
microrhythms
then get adsr in there somehow.
then get the controller up.
then make some fucking music already.

/

LIVECODING:
- logs -> print
- assertion on variable types
- no duplicate thread names
- clear() function

- need to be able to start a thread aligned with another

/

DOCS:
blend, euclidean

/


BUGS:


if the rates are the same, I'd expect the phase to jump to unison right away
however, it jumps to something weird, and then jumps again

question 1:
- in realtime, why doesnt it just jump to being immediately on?

question 2:
- try tweening the phase change?