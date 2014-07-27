braid


Attribute

    value

    set()   -- returns self
    tween()


Voice(Attribute)

    phase
    velocity
    chord
    tempo


Tween

    repeat()
    endwith()


Pattern(Attribute)

    tempo
    phase

    repeat()
    endwith()
    set_tempo()
    set_phase()
    cycle() -- repeat, but reverses itself

    

v = Voice(1)
v.set([1, 1, 1, 1]).repeat().endwith("measure").tween([1, 0, 1], 4.0, a_signal).endwith("tween").cycle()

is it weird that set returns a pattern which can be operated on, but tween takes notation, and you cant access the pattern?

v.pattern.set([1, 1, 1, 1]).repeat().endwith("measure").tween(Pattern([1, 0, 1]).endwith("new pattern"), 4.0, a_signal).endwith("tween").cycle()

works. or:

p1 = Pattern([1, 1, 1, 1]).repeat().endwith("measure")
p2 = Pattern([1, 0, 1]).endwith("new pattern").repeat()
v.pattern.set(p1).tween(p2, 4.0, a_signal).endwith("tween").cycle()


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