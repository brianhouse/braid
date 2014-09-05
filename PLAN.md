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

    cycle()
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