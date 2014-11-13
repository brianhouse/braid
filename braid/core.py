#!/usr/bin/env python3

import sys, time, threading, atexit, queue, rtmidi
from rtmidi.midiconstants import NOTE_ON, NOTE_OFF, CONTROLLER_CHANGE
from .util import log, num_args

class Driver(threading.Thread):

    def __init__(self):
        threading.Thread.__init__(self)
        self.daemon = True
        self.voices = []
        self.grain = 0.01   # hundredths are nailed by Granu, w/o load. ms are ignored.
        self.t = 0.0
        self.rate = 1.0
        self.previous_t = 0.0
        self.callbacks = []
        self.running = False

    def play(self, skip=0, blocking=True):     ### this cant be threadsafe. but allows braid to integrate.
        self.skip = skip
        self.running = True
        self.start()
        if blocking:
            try:
                while self.running:
                    time.sleep(0.1)
            except KeyboardInterrupt:
                pass

    def time_f(self):
        return time.time() - self.start_t

    def run(self):
        self.start_t = time.time() - self.skip
        last_cue = -1
        try:
            while self.running:
                self.t = self.time_f()
                if int(self.t) // 15 != last_cue:
                    last_cue = int(self.t) // 15
                    log.info("/////////////// [%s] %d:%f ///////////////" % (last_cue, self.t // 60.0, self.t % 60.0))                        
                midi_in.perform_callbacks()
                self._perform_callbacks()
                if not self.running:
                    break
                delta_t = self.t - self.previous_t
                for voice in self.voices:
                    voice.update(delta_t)
                self.previous_t = self.t     
                time.sleep(self.grain)
        except KeyboardInterrupt:
            pass

    def stop(self):
        if not self.running:
            return
        self.running = False
        for voice in self.voices:
            voice.end()
        log.info("/////////////// END %d:%f ///////////////" % (self.t // 60.0, self.t % 60.0)) 
        time.sleep(0.1) # for osc to finish        

    def callback(self, duration, f):
        """After a given duration, call a function"""
        t = self.t + duration
        self.callbacks.append((t, f))        

    def _perform_callbacks(self):
        for c, callback in enumerate(self.callbacks):
            t, f = callback
            if t <= self.t:
                f()
                self.callbacks.remove(callback)


class MidiOut(threading.Thread):

    def __init__(self, port=0):
        threading.Thread.__init__(self)
        self.daemon = True
        self.port = port  
        self.queue = queue.Queue()
        self.midi = rtmidi.MidiOut()            
        available_ports = self.midi.get_ports()
        if len(available_ports):
            log.info("MIDI outputs available: %s" % available_ports)
        else:
            log.info("No MIDI outputs available")
        if available_ports:
            if self.port >= len(available_ports):
                log.info("Port index %s not available" % self.port)
                exit()
            log.info("MIDI OUT opening %s" % available_ports[self.port])
            self.midi.open_port(self.port)
        else:
            log.info("Opening virtual output (\"Braid\")...")
            self.midi.open_virtual_port("Braid")   
        self.start()   

    def send_control(self, channel, control, value):
        self.queue.put((channel, (control, value), None))

    def send_note(self, channel, pitch, velocity):
        self.queue.put((channel, None, (pitch, velocity)))

    def run(self):
        while True:
            channel, control, note = self.queue.get()
            if control is not None:
                control, value = control
                if type(value) == bool:
                    value = 127 if value else 0
                log.info("MIDI ctrl %s %s %s" % (channel, control, value))                    
                channel -= 1
                self.midi.send_message([CONTROLLER_CHANGE | (channel & 0xF), control, value])                
            if note is not None:
                pitch, velocity = note
                log.info("MIDI note %s %s %s" % (channel, pitch, velocity))
                channel -= 1
                if velocity:            
                    self.midi.send_message([NOTE_ON | (channel & 0xF), pitch & 0x7F, velocity & 0x7F])
                else:
                    self.midi.send_message([NOTE_OFF | (channel & 0xF), pitch & 0x7F, 0])


class MidiIn(threading.Thread):

    def __init__(self, port=0):
        threading.Thread.__init__(self)
        self.daemon = True
        self.port = port  
        self.queue = queue.Queue()
        self.midi = rtmidi.MidiIn()
        self.callbacks = {}
        available_ports = self.midi.get_ports()
        if len(available_ports):
            if self.port >= len(available_ports):
                log.info("Port index %s not available" % self.port)
                exit()
            log.info("MIDI IN  opening %s" % available_ports[self.port])
            self.midi.open_port(self.port)
        else:
            log.info("No MIDI inputs available")
            return
        self.start()           

    def run(self):
        def receive_control(event, data=None):
            message, deltatime = event
            nop, control, value = message
            self.queue.put((control, value / 127.0))
        self.midi.set_callback(receive_control)
        while True:
            time.sleep(1)

    def perform_callbacks(self):
        while True:
            try:
                control, value = self.queue.get_nowait()
            except queue.Empty:
                return
            if control in self.callbacks:
                if num_args(self.callbacks[control]) > 0:
                    self.callbacks[control](value)
                else:
                    self.callbacks[control]()
                

    def callback(self, control, f):
        """For a given control message, call a function"""
        self.callbacks[control] = f                


def exit_handler():
    driver.stop()
atexit.register(exit_handler)

driver = Driver()
midi_out = MidiOut(int(sys.argv[1]) if len(sys.argv) > 1 else 0)
midi_in = MidiIn(int(sys.argv[2]) if len(sys.argv) > 2 else 0)

def tempo(value):
    """Convert to a multiplier of 1hz cycles"""
    value /= 60.0
    value /= 4.0
    driver.rate = value

def play():
    driver.play()

def stop():
    driver.stop()    