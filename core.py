#!/usr/bin/env python3

import time, threading, queue
from .housepy import osc

class Driver(object):
    """ This is a substitute for a realtime system """
    
    def __init__(self):
        self.voices = []
        self._grain = 0.01   # hundredths are nailed by Granu, w/o load. ms are ignored.
        self.t = 0.0
        self.p = 0.0

    def start(self, duration, skip=0):
        self.duration = float(duration)
        start_t = time.time() - skip
        last_square = 0
        while True:
            for voice in self.voices:
                voice.update(self.p)    ## can get rid of p altogether maybe, once we have tempo
            time.sleep(self._grain)
            self.t = time.time() - start_t
            if int(self.t) / 15 != last_square:
                last_square = int(self.t) / 15
                print("<<%s>> %s" % (last_square, self.t))
            self.p = self.t / self.duration
            if self.p >= 1.0:
                break            


class Synth(threading.Thread):
    """Consume notes and send OSC"""

    def __init__(self):
        threading.Thread.__init__(self)
        self.daemon = True
        self.msp_sender = osc.Sender(5280)
        self.queue = queue.Queue()
        self.start()

    def send(self, address, *params):
        self.queue.put((address, params))

    def run(self):
        while True:
            address, params = self.queue.get()            
            self.msp_sender.send(address, params)

## note that Im building this for an MSP synth -- for Meeblip, somehow we're going to need noteoffs


synth = Synth()   # player singleton
driver = Driver()
