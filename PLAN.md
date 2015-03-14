braid


Attribute

    value

    set()   -- returns self
    tween()


Voice(Attribute)

    chord(Attribute)
    mute(Attribute)
    phase(Attribute)
    rate(Attribute)
    Sequence(list)    
    velocity(Attribute)



Tween

    endwith()

    update()        # needs to return the equiv of get_value()



Sequence(list)

    list Pattern(Attribute)

    repeat()
    endwith()


Pattern(Attribute)


Voices have rate, core has tempo.


what about queue, for changes happening at the end of a cycle?
and is there access to pattern?

v.pattern.endswith(f)   <-- take multiple functions?
ah, look at the repeat below... repeat takes endwith

what about reference tweens?

//////


v = Voice(1)
v.set([1, 1, 1, 1]).repeat().endwith("measure").tween([1, 0, 1], 4.0, a_signal).endwith("tween").cycle()

is it weird that set returns a pattern which can be operated on, but tween takes notation, and you cant access the pattern?

v.sequence.set([1, 1, 1, 1]).repeat().endwith("measure").tween(Pattern([1, 0, 1]).endwith("new pattern"), 4.0, a_signal).endwith("tween").cycle()

works. or:

p1 = Sequence([1, 1, 1, 1]).repeat().endwith("measure")
p2 = Sequence([1, 0, 1]).endwith("new pattern").repeat()
v.sequence.set(p1).tween(p2, 4.0, a_signal).endwith("tween").cycle()


are there too many ways to say the same thing?
and is Sequence an object?

//


signals are functions
make a signal function:
signal(breakpoints)
signal(timeseries)


//

ok, notes seems meaninglessly encapsulated. let's bring that back up to voice?

voice.set()

breaking out properties is going to cause hella hurt

do we really want to be able to do patterns on properties, is the question. 

setting velocities per note would be very useful. also possible to do that with decorated notes (ugly) or a signal (hacky?)

nested pattern syntax could be complicated, though, and not line up. 

let's not make this hideously complicated.

Voice is actually a child of Attribute, that includes a very special value.


////

what callbacks?

I think that's just endwith
repeat should take a count
does endwith fire with each repeat or no?

then absolute callbacks with driver


////

sequencing --

write everything as functions, then use endwith to invoke

////

future

instead of log output, have a curses output showing the parameters of each voice
~sick~

get rid of util/log, config
just use prints with timing information
well, and then curses
config isnt being used for anything

if I can get rid of the controller folder to -- then we are flat lean and beautiful.

but maybe config can be used for setting up synth and controller mappings. that would be hot.


///

are we in trouble with tween attached to pattern but no voice attached?
if two voices use the same pattern, theyll tween together
sequence is also not really shareable, it has indexes, etc

actually, it's totally fine, unless you try to set it directly.
v2.set(v1.sequence) # no problem
v2.sequence.set(v1.sequence) # no problem
v2.sequence = v1.sequence # problem

...and actually that is a problem for all attributes. so just dont do that by convention.

the problem is 
v2.set(v1.pattern)

if v1.pattern is tweening.

tweens on patterns.

v2.velocity.set(v1.velocity)

brilliant. now allowed.
//

basically, attribute set strips out the attribute references
direct setting is bad in general

I made pattern attribute why? so that Pattern doesnt have to be an attribute. because it is really the value type, not equivalent the attribute object -- it will get replaced when tweening, etc, which would have killed the voice and tween references.


///


having tween repeatable and not necessarily reversible, and also tied to pattern cycles instead of time, is key.
because then you could define a function as the contour of a measure, for push and pull. 

////

ok, so the issue is that setting a sequence, procedurally, does not set the pattern. so it tweens on the wrong thing.

if we set and then shift right away... actually I think that's fine.
potentially, if a sequence is set and then shifted mid-cycle, the first repetition would be cut off. but I think that's kind of what we want

ok, but that means sequence has to have voice attached. actually, that's fine, it can happen at the constructor.

//

the problem is bigger. it's that you cant set a pattern and then immediately tween it if that pattern isnt active yet.

doesn't have to do with the driver running or not.
it's like a force set that is needed.

or rather, it's shifting twice on set.

so it's either everything works fine when voice gets around to setting the next pattern, but cant tween.
or set the pattern immediately when using set, but if that happens on an edge, it's a double click.

right. embedded shifts in set are a bad idea.

hack for now -- is to always enclose tweens in a repeat or something)

//


- why was doafter necessary?
- v1.set([1, 3, 5, 7], [2, 4, 2]).repeat(4).endwith(lambda v: v.set([1])).repeat() <- kind of wants to repeat the whole sequence?


doafter is kind of for fills 
afterevery(n, f)

but is that redundant with sequence?

have to ask, does sequence suck? it's for writing complex compositions.
there's a lot of todos, here

is this syntax unreal?

the chain syntax is just a way to avoid multiple statements.

/

complex compositions like accumulative rhythms, which was important when I was doing through-compositions


///

ok, so fuck it. we're getting rid of sequence.

sequence then becomes a special object that automatically updates via endwith

nop