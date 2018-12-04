#!/usr/bin/env python3

import sys, os, math
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
from braid import *

Kicker = make(
        {'pitch': 64, 'envelope': 49, 'distortion': 50, 'sub': 51, 'body': 52, 'presence': 53, 'pan': 54, 'volume': 55},
        {'pitch': 90, 'envelope': 127, 'distortion': 0, 'sub': 0, 'body': 127, 'presence': 127, 'pan': 64, 'volume': 64}
        )

def note(self, pitch, velocity):
    # midi_out.send_note(self._channel, self._previous_pitch, 0)
    midi_out.send_control(self._channel, 55, midi_clamp(velocity * 127))                
    midi_out.send_note(self._channel, pitch, 127)
    self._previous_pitch = pitch
Kicker.note = note


def k(t):
    t.pitch = 64
    t.body = 127
    t.presence = 127
    t.envelope = 64
    t.sub = 0
    t.distortion = 0        
    t.velocity = 0.25
    return C1

def kg(t):
    t.pitch = 64
    t.body = 127
    t.presence = 80
    t.envelope = 64
    t.sub = 0
    t.distortion = 0        
    t.velocity = 1/8
    return C1

def s(t):
    t.pitch = 64
    t.body = 0
    t.presence = 127    
    t.envelope = 127
    t.sub = 0    
    t.distortion = 0        
    t.velocity = 1.0
    return C1

def sg(t):
    t.pitch = 64
    t.body = 0
    t.presence = 80   
    t.envelope = 127
    t.sub = 0    
    t.distortion = 0        
    t.velocity = 0.5    
    return C1

def h(t):
    t.pitch = 64
    t.body = 0
    t.presence = 0
    t.envelope = 127
    t.sub = 0    
    t.distortion = 0    
    t.velocity = 1.0
    return C1

t1 = Kicker(1)
t1.start()

t2 = Kicker(2)
t2.start()

t3 = Kicker(3)
t3.start()

midi_out.throttle = 2/1000
# tempo(118)
tempo(190)  # ha! jungle mode!

t1.add('seq')
t1.add('i')
t1.seq = [Bb2, Bb2, Ab2, Ab2]
t1.i = 0


def pfix(p):
    p -= 41
    p *= 3 + 1/3
    p += 1/3
    p = math.floor(p) if p % 1 < .9 else math.ceil(p)
    return p

def k(t):    
    t.pitch = pfix(t.seq[t.i % len(t.seq)])
    t.i += 1    
    t.body = 127
    t.presence = 90
    # t.envelope = 64
    t.sub = 115    
    t.distortion = 32
    t.velocity = 0.25
    return C1

# t1.pattern = [k, [h, h], k, [(0, k), (h, [h, h])], k, k], [[h, (h, [h, h])], k, [0, (h, k)], k, k, 0]
t1.pattern = [k, h, k, [(0, k), h], k, k], [h, k, [0, (h, k)], k, k, 0]
t1.rate = 1/2

t2.pattern = [(s, [s, s]), h, (s, [s, s]), h, (s, [s, s])]
t2.rate = 6/5

# t3.pattern = [h, h, h] * 4

play()
