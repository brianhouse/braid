#!/usr/bin/env python3

import time, threading, queue
from .util import osc, log

class Driver(object):
    """ This is a substitute for a realtime system """
    
    def __init__(self):
        self.voices = []
        self.grain = 0.01   # hundredths are nailed by Granu, w/o load. ms are ignored.
        self.t = 0.0
        self.previous_t = 0.0
        self.callbacks = []
        self.running = True

    def start(self, skip=0):
        start_t = time.time() - skip
        last_cue = -1
        while self.running:
            self.t = time.time() - start_t
            if int(self.t) // 15 != last_cue:
                last_cue = int(self.t) // 15
                log.info("/////////////// [%s] %d:%f ///////////////" % (last_cue, self.t // 60.0, self.t % 60.0))                        
            self._perform_callbacks()
            if not self.running:
                break
            delta_t = self.t - self.previous_t
            for voice in self.voices:
                voice.update(delta_t)
            self.previous_t = self.t                
            time.sleep(self.grain)

    def stop(self):
        self.running = False
        for voice in self.voices:
            voice.end()
        log.info("/////////////// END %d:%f ///////////////" % (self.t // 60.0, self.t % 60.0)) 
        time.sleep(1) # for osc to finish        

    def callback(self, f, t):
        t += self.t
        self.callbacks.append((f, t))        

    def _perform_callbacks(self):
        for c, callback in enumerate(self.callbacks):
            f, t = callback
            if t <= self.t:
                f()
                self.callbacks.remove(callback)


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


synth = Synth()   # player singleton
driver = Driver()
