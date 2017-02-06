### BUGS

- Thread -> Synth (loses personality, gains clarity)


### FEATURES

- lambda notes with relative volume (or other paramter) adjustment, how does that work? it doesnt. that's what grace is for. if you need a reference, make a parameter. cant. oh well? could with a fake midi object, but then it would transmit.

the issue is if you want to tween a parameter of one kind of hit, but there are multiple kinds of hits happening, so it's switching back and forth. you need a reference channel.

worth it, with this minimalism? or are you going to fuck around forever?

well, if you have a dynamic constructor...

so a 
thread.add('ref', default_value || 0)
thread.ref = .5 # etc


- microrhythm functions


### tutorial
- basic
- patterns
- notes
- parameters
- tweens / sync'ing
- lambdas
- signals
- hardware: creating synthes for midi devices
- livecoding

make it all nice in a github


### test
- clean install

### concept
- the linear cyclical
- the material semiotic
