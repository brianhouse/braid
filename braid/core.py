#!/usr/bin/env python3

import sys, time, threading, queue
from .util import log

class Driver(threading.Thread):

    def __init__(self):
        super(Driver, self).__init__()
        self.daemon = True
        self.threads = []
        self.grain = 0.01
        self.t = 0.0
        self.rate = 1.0
        self.previous_t = 0.0
        self.running = False

    def start(self):
        self.running = True
        super(Driver, self).start()
        try:
            while self.running:
                time.sleep(0.1)
        except KeyboardInterrupt:
            driver.stop()

    def run(self):
        self.start_t = time.time()
        last_cue = -1
        try:
            while self.running:
                self.t = time.time() - self.start_t
                if int(self.t) // 15 != last_cue:
                    last_cue = int(self.t) // 15
                    log.info("/////////////// [%s] %d:%f ///////////////" % (last_cue, self.t // 60.0, self.t % 60.0))                        
                # midi_in.perform_callbacks()
                if not self.running:
                    break
                delta_t = self.t - self.previous_t
                for thread in self.threads:
                    c = time.time()
                    thread.update(delta_t)
                    rc = int((time.time() - c) * 1000)
                    if rc > 1:
                        log.warning(">>> processor overload %dms update <<<" % rc)
                self.previous_t = self.t     
                time.sleep(self.grain)
        except KeyboardInterrupt:
            pass

    def stop(self):
        if not self.running:
            return
        self.running = False
        for thread in self.threads:
            thread.end()
        log.info("/////////////// END %d:%f ///////////////" % (self.t // 60.0, self.t % 60.0)) 
        time.sleep(0.1) # for midi to finish        


driver = Driver()

def tempo(value):
    """Convert to a multiplier of 1hz cycles"""
    value /= 60.0
    value /= 4.0
    driver.rate = value

def play():
    driver.play()

def stop():
    driver.stop()    

