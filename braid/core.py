#!/usr/bin/env python3

import sys, time, threading, queue, __main__

class Driver(threading.Thread):

    def __init__(self):
        super(Driver, self).__init__()
        self.daemon = True
        self.threads = []
        self.grain = 0.01
        self.t = 0.0
        self.rate = 1.0
        self.previous_t = 0.0
        self.previous_cycles = 0
        self.running = False
        self._cycles = 0.0
        self.triggers = []

    def start(self):
        super(Driver, self).start()
        if hasattr(__main__, "__file__"):   # allow livecoding
            try:
                while self.running:
                    time.sleep(0.1)
            except KeyboardInterrupt:
                driver.stop()

    def run(self):
        self.start_t = time.time()
        while True:
            self.t = time.time() - self.start_t
            if self.running:                                
                try:
                    if not self.running:
                        break
                    # midi_in.perform_callbacks()
                    delta_t = self.t - self.previous_t
                    self._cycles += delta_t * self.rate
                    if int(self._cycles) != self.previous_cycles:
                        self.update_triggers()
                        self.previous_cycles = int(self._cycles)
                    for thread in self.threads:
                        c = time.time()
                        thread.update(delta_t)
                        rc = int((time.time() - c) * 1000)
                        if rc > 1:
                            print(">>> processor overload %dms update <<<" % rc)
                except KeyboardInterrupt:
                    self.stop()
                # except Exception as e:                
                #     print("Error: %s" % e)
            elif hasattr(__main__, '__file__'):
                break
            self.previous_t = self.t     
            time.sleep(self.grain)                    

    def trigger(self, f, cycles):
        self.triggers.append([f, cycles])

    def update_triggers(self):
        """Check trigger functions a fire as necessary"""
        for trigger in self.triggers:
            trigger[1] -= 1
            if trigger[1] == 0:
                trigger[0]()
        self.triggers = [trigger for trigger in self.triggers if trigger[1] > 0]

    def stop(self):
        if not self.running:
            return
        self.running = False
        for thread in self.threads:
            thread.end()
        time.sleep(0.1) # for midi to finish        
        print("\n------------->X")


driver = Driver()

def tempo(value=False):
    """Convert to a multiplier of 1hz cycles"""
    if value:
        value /= 60.0
        value /= 4.0
        driver.rate = value
    return driver.rate * 4.0 * 60.0

def start():
    driver.running = True
    if not driver.is_alive():
        driver.start()
    
def stop():
    driver.running = False

trigger = driver.trigger