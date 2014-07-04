#!/usr/bin/env python3

import json, datetime, sys, os
from braid import *

"""
Convert a list of json objects with the properties (t, city, place), given a period, into a braid composition sequence

Takes Quotidio output files, in turn processed from OpenPaths data

"""


def format_time(seconds):
    if type(seconds) != int:
        seconds = float(seconds)
    minutes = int(seconds // 60)
    seconds = seconds - (minutes * 60)        
    hours = minutes // 60
    minutes = minutes - (hours * 60)        
    days = int(hours // 24)
    hours = int(hours - (days * 24))
    time = []
    if days:
        time.append("%s:" % days)
    if hours or days:
        time.append("%s:" % str(hours).zfill(2))
    if minutes or hours or days:
        time.append("%s:" % str(minutes).zfill(2))
    if type(seconds) == int:    
        if not minutes and not hours and not days:
            time.append(":%s" % str(seconds).zfill(2))        
        elif seconds or minutes or hours or days:
            time.append("%s" % str(seconds).zfill(2))
    else:
        if not minutes and not hours and not days:
            time.append(":%s" % str("%f" % seconds).zfill(2))        
        elif seconds or minutes or hours or days:
            time.append("%s" % str("%f" % seconds).zfill(2))
    time = "".join(time)               
    return time


# load file
if len(sys.argv) < 2:
    print("[FILENAME]")
    exit()
filename = sys.argv[1]
log.info("Loading %s" % filename)
path = os.path.abspath(os.path.expanduser(filename))
with open(path) as f:
    s = f.read()
data = json.loads(s)                

# the composition
ROOTS =       [D,   A,   E,   F3,  G2,  E,   A3,  F,   B3,  A,   E3,  B,   D3,  C5,  C2]   
SCALES =      [MYX, DOR, MAJ, LYD, MYX, PRG, AOL, LYD, LOC, AOL, PRG, LOC, DOR, MAJ, MAJ]
HARMONY = [1, 2, 3, 4, 5, 6, 7, -7, -6, -5, -4, -3, -2, -2, -2]

# ROOTS =       [D,   A,   E,   F3,  G2,  E,   A3,  F,   B3,  A,   E3,  B,   D3,  C5,  C2]   
# SCALES =      [AOL, DOR, PRG, MYX, LOC, PRG, AOL, LYD, LOC, AOL, PRG, LOC, DOR, MAJ, MAJ]
# HARMONY = [3, 2, 1, -6, 5, 6, 7, -7, -6, -5, -4, -3, -2, -2, -2]


# get start time and readjust min_t to start at previous midnight
period = 24.0 * 60.0 * 60.0 # 24 hours
period_duration = 1.0 / ((100.0 / 3.0) / 60.0)  # 1.79999 seconds per rotation, 33.3bpm
min_t = float(min(data, key=lambda d: d['t'])['t'])
start = datetime.datetime.fromtimestamp(min_t)
start = start.replace(hour=0, minute=0, second=0, microsecond=0)
min_t = time.mktime(start.timetuple())

# get stop time and readjust max_t to stop at following midnight
max_t = float(max(data, key=lambda d: d['t'])['t'])
max_t += 60 * 60 * 24
stop = datetime.datetime.fromtimestamp(max_t)
stop = stop.replace(hour=0, minute=0, second=0, microsecond=0)
max_t = time.mktime(stop.timetuple())

# all params
data_real_duration = max_t - min_t
num_periods = data_real_duration / period
duration = num_periods * period_duration
unit_duration = period_duration / 12.0
units_per_period = period_duration / unit_duration
total_units = int(duration / unit_duration)
log.info("DATA START %s" % start)
log.info("DATA STOP %s" % stop)
log.info("RECORDS %s" % len(data))
log.info("DATA REAL DURATION %s" % format_time(data_real_duration))
log.info("PERIOD %s" % format_time(period))
log.info("PERIOD DURATION %ss" % period_duration)
log.info("NO. PERIODS %s" % num_periods)
log.info("UNIT DURATION %ss" % unit_duration)
log.info("UNITS PER PERIOD %s" % units_per_period)
log.info("NO. UNITS %s" % total_units)
log.info("AUDIO DURATION %s" % format_time(duration))

# get locations and how long in each
for i, d in enumerate(data):
    d['pos'] = (float(d['t']) - min_t) / (max_t - min_t)
cities = {}
locations = []
for i, d in enumerate(data):
    city, place = int(d['city']), int(d['place'])
    if city == -1 or place == -1:
        continue
    start_time = d['pos'] * duration
    if i == len(data) - 1:
        stop_time = start_time + 1.0
    else:
        stop_time = data[i+1]['pos'] * duration        
    location_duration = stop_time - start_time
    if city not in cities:
        cities[city] = {}
    if place not in cities[city]:
        cities[city][place] = 0.0
    cities[city][place] += location_duration
    locations.append((start_time, location_duration, city, place, d['t']))

# find order indexes for cities and places by total duration
for city, places in list(cities.items()):
    values = list(places.values())
    cities[city] = sum(values), places
    values.sort()
    values.reverse()
    for p, value in list(places.items()):
        places[p] = values.index(value)
values = list(cities.values())
values.sort(key=lambda x: x[0])
values.reverse()
max_places = 0
for c, value in list(cities.items()):
    cities[c] = values.index(value), value[1]
    if len(value[1]) > max_places:
        max_places = len(value[1])
log.debug("CITIES")
cs = list(cities.items())
cs.sort(key=lambda x: x[1])
log.info("MAPPING")
for city, places in cs:
    log.info(("%s: %s %s" % (places[0], city, places[1])))
log.info("TOTAL_CITIES %s" % len(cities))
log.info("MAX_PLACES %s" % max_places)

# bucket all the locations into units
units = [None] * total_units
for l, location in enumerate(locations):
    index = int(location[0] / unit_duration)
    # put in next available slot
    if index == len(units):
        break
    while index + 1 < len(units) and units[index] is not None:
        index += 1
    units[index] = location
    # backfill any holes with the last value
    index -= 1
    while l > 0 and index >= 0 and units[index] is None:
        units[index] = locations[l-1]
        index -= 1

# make some sequences: diurnal pulse
sequence = []
pattern = []
for unit, location in enumerate(units):
    if location is None:
        root = ROOTS[0]
        scale = SCALES[0]
    else:
        start_time, note_duration, city, place, real_time = location    
        root = ROOTS[cities[city][0] % len(ROOTS)]
        scale = SCALES[cities[city][0] % len(SCALES)]
    chord = root, scale
    dists = [   0.0,
                0.181818181818,                
                0.545454545455,
                0.363636363636,                
                0.727272727273,
                0.909090909091,
                1.09090909091,
                0.909090909091,
                0.545454545455,
                0.727272727273,                
                0.363636363636,
                0.181818181818
                ]
    velocity = 1.0 - 0.05
    velocity += (random() * 0.1) - 0.05   
    dist = dists[unit % 12]
    velocity -= (1.0 - dist) * 0.35

    def note_f(chord, velocity):
        def f(v):
            v.chord = chord
            v.velocity = velocity
            return 1
        return f

    pattern.append(note_f(chord, velocity))

    if len(pattern) == 12:
        sequence.append(pattern)
        pattern = []
pattern.extend([0] * (12 - len(pattern)))
sequence.append(pattern)

v1 = Voice(1)
v1.set(*sequence).repeat()


# make some sequences: melody
previous_location = None
pattern = []
sequence = []
for unit, location in enumerate(units):
    if location is not None and (location is not previous_location or random() > 0.8):
        start_time, note_duration, city, place, real_time = location    
        root = ROOTS[cities[city][0] % len(ROOTS)]
        scale = SCALES[cities[city][0] % len(SCALES)]
        chord = root, scale
        index = cities[city][1][place]
        harmony = HARMONY[index % len(HARMONY)]
        velocity = 1.0 - 0.25
        velocity += (random() * 0.5) - 0.25   

        def note_f(n, chord, velocity):
            def f(v):
                v.chord = chord
                v.velocity = velocity
                return n
            return f

        pattern.append(note_f(harmony, chord, velocity))
    else:
        pattern.append(0)        
    if len(pattern) == 12:
        sequence.append(pattern)
        pattern = []
    previous_location = location

pattern.extend([0] * (12 - len(pattern)))
sequence.append(pattern)

# no offs means sustain
class LongVoice(Voice):
    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity
        midi_synth.send_note(self.channel, pitch, int(velocity * 127))
        self.previous_pitch = pitch    
    def rest(self):
        pass
v2 = Voice(2)
v2.set(*sequence).repeat()


def K1(v):
    v.velocity = 1.0
    return K

def H1(v):
    v.velocity = 1.0
    return H

def H2(v):
    v.velocity = 0.5
    return H

v3 = Voice(3)
v3.chord = None
v3.set([K1, [H1, H2], K1, [H1, H2], K1, [H1, H2]]).repeat()

v4 = Voice(3)
v4.chord = None ## should make this default?
v4.set([0, (S, [S, S], 0.6), 0]).repeat()

# v1.mute()
# v2.mute()

# set universal tempo and go
rate(1 / 1.8)
driver.start()

