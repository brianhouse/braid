#!/usr/bin/env python3

import sys, time, threading, queue, __main__, atexit

LIVECODING = not hasattr(__main__, "__file__")

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
        print("Braid started")
        if not LIVECODING:
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
                            print("\n(update took %dms)\n" % rc)
                except KeyboardInterrupt:
                    self.stop()
                # except Exception as e:            ##         
                #     print("Error: %s" % e)
            elif not LIVECODING:
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
        if not LIVECODING:     
            print("\n------------->X")

def tempo(value=False):
    """Convert to a multiplier of 1hz cycles"""
    if value:
        value /= 60.0
        value /= 4.0
        driver.rate = value
    else:
        return driver.rate * 4.0 * 60.0

def play():
    driver.running = True
    if not driver.is_alive():
        driver.start()
    print("Playing")
    
def pause():
    driver.stop()
    print("Paused")

def stop():
    for thread in driver.threads:
        thread.stop()
    driver.stop()
    print("Stopped")

def exit_handler():
    driver.stop()
atexit.register(exit_handler)    

driver = Driver()
trigger = driver.trigger

tempo(115)

