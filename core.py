#!/usr/bin/env python3

import time, threading, queue
from .util import osc

class Driver(object):
    """ This is a substitute for a realtime system """
    
    def __init__(self):
        self.voices = []
        self._grain = 0.01   # hundredths are nailed by Granu, w/o load. ms are ignored.
        self.t = 0.0

    def start(self, skip=0):
        start_t = time.time() - skip
        last_ten = 0
        while True:
            for voice in self.voices:
                voice.update()
            time.sleep(self._grain)
            self.t = time.time() - start_t
            if int(self.t) // 10 != last_ten:
                last_ten = int(self.t) // 10
                print("<<%s>> %s" % (last_ten, self.t))


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
