
ok. so youre going to be at an impasse here ...

heart ran in realtime. that made things a bit easier.

this might not run in realtime, but still could. I think it should.
except that gets really tricky with the patterns -- we have to remember what path we're going down.

the question is, how is it notated?

previous notation:
voice.velocity = 1.0, 4

tweens are based on cycles.

but we want to use graphs. right. no tweens, just graphs.


//

so kind of the thing here is that you dont necessarily want to run out the whole driver
you might want to adjust in situ
really, for realtime this could be threaded. not now.

//

so we're still missing multi-measure patterns, additive


could have a score-follower in a separate thread


//

series:

if pattern is assigned a list rather than a Pattern, treat it as a series

tweens can still have a cycle length

[pattern_1, pattern_2]
[(pattern_1, tempo), (pattern_2, tempo)]

//

could make voice channels auto-generate to avoid having to specify. ?

yeah, so accents are in fact a thing.

////

ok. so. right now all tweens go over the whole piece, designed for the breakpoints.

maybe we dont worry about tweens, we worry about series.

/

what we want is a callback system. with counters.

reach the end of a pattern, call a callback.

def my_f(v):
    v.pattern = NEXT
    v.add_callback(my_f_2, 4)
v1.add_callback(my_f, 4)

when is this callback called?

this is clumsy. good for setting parameters, not really for sequencing.

/

tweens should also have callbacks when theyre done

/

hmm. somehow sequences should bundle parameter changes, or something.


would also be nice to sequence bundles of voices


ok, so sequences:
    - need a meter param 
    - need to support other assignments

we're coming up on multiple techniques to compose. breakpoints on one hand, and pattern manipulation on the other


USE CASE:


d1_A = Pattern([0, 0, B1, 0])
d1_B = Pattern([0, 0, C2, 0])
d1_C = Pattern([0, 0, Bb1, 0])
d1_r = Pattern([0, 0])
d3.sequence.extend([d1_A] * 8)
d3.sequence.extend([d1_A] * 8)
d1.sequence.extend([d1_A] * 16)
d1.sequence.extend([d1_B] * 8)
d1.sequence.extend([d1_A] * 16)
d1.sequence.extend([d1_B] * 8)
d1.sequence.extend([d1_C] * 8)
d1.sequence.extend([d1_A] * 16)

d1.add_tween('velocity', ContinuousTween(0.0, 1.0, linear))  
## see, this doesnt work without cycles or time or something
## unless we are just breakpointing the whole thing
## although callbacks work too


the paradigm is everything is realtime.
but you can use the sequencer to schedule shit on a stack
which could include tweens (how?)
regardless, tweens are going to have to be timed, either by a master, master cycles, or voice cycles

for traditional pieces, local cycles (measures) makes sense for callbacks (as it is now) so probably for tween times too
but maybe you should be able to bond it to an object with a p, either a voice or a driver. that would be coolest.

or shit, just use breakpoints. that's how you like it anyway.

but no, sequenced pattern tweens is the thing.


tween callbacks would let tweens just set up an auto-environment, which would be nice. super ambient.

to keep it super-pythonic, we should be able to have a type in the pattern that performs lots of shit

**
[1, 0, 1, Note()], right? or rather, if there is a function in a pattern, execute it. it should do whatever it needs to do, and then return a note thats evaluable. if the function takes a parameter, give it the voice. (but make it optional)

so you could even set articulation:

def soft(v):
    v.attack = 10
    return A

def hard(v):
    v.attack = 0
    return A
[soft, 0, 1, 0, hard, 0]

shit, could even use wrappers:

def soft(pitch):
    def f(v):
        v.attack = 10
        return pitch
    return f

[soft(1), 0, 1, 0, hard(1), 0]

fuck yeah.

and could make a library of those. like click, for instance. and accent?

would be nice if it then reverted to a default value... or not.


a good way to do a breakpoint over one pattern, trigger it on the first step.
that would be fucking cool if the param were tempo.



/

what was wrong with the old braid again? v1.velocity = 1.0, 4
right, the "run(4)" was no good.


/

still missing phase and all the amazing shit.

/

msp synth vs noteon/noteoff is going to come up again at some point
because we were doing precalc, we could get that noteoff in there.

/

show pan etc on max.



Voice should be extended for different synths.

put this in it's own repo. tag the repo when different pieces go.


//

should auto-detect what style tween to use on the parameter, thus avoiding writing ContinuousTween, etc.
nice.

ok, tween('pattern', [new pattern]) --- shouldnt have to specify the start value. across the board, I guess.

am I just recreating the old version?

also need tween timing.

ugh.


gut check:
so big breakpoints over the whole thing for params. but sequence for pattern changes. so the only thing we are missing for swerve is tween timings.

what do I want to specify it in? well, if we're graphing this whole thing, I want to specify it in units. so yeah, divisions of the master duration.

p * divisions
if it's over 1, it's done.

but what if we're in the middle of the piece?

(p - start_p) * divisions


//

still missing all the tempo stuff that is the whole point of this exercise

/

ha -- another thing. make dynamic voice parameters. just starting using a parameter, and there it is.

/

how do you wait in a sequence while the tween runs out? well, callbacks -- after the tween finishes, replace the sequence with something else.

looping sequences?

fucking hell. we need to get rid of driver and have this be in seconds / tempo. p is no good. not now.


ok. we have tween timing in seconds. that's good enough for now. can always reference a voice cycle_length variable or a master cycle_length variable to convert in situ, ie, tween.duration = 4.0 voice.cycle_length. that's the way to go.

/

more:
reverb params should be simplified (could just have a 'mix' for instance)


/

issues: if the pattern is [0], it's never going to progress. maybe a feature.

///

ironically, the cycles + p setup of swerve works well for tempo change and entrainment. will still skip in the pattern, though. but it's simple.


/

when tweening volumes, should we have a better than linear curve, ie, an equal power fade? yes. make that function.



//
swerve technical imporovements todo:
- equal power volume fades
- max: equal power pans with cos





