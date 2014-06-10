#!/usr/bin/env python3

import time, threading, queue, atexit
import rtmidi
from rtmidi.midiconstants import NOTE_ON, NOTE_OFF, CONTROLLER_CHANGE
from .util import osc, log

class Driver(object):

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
        try:
            while self.running:
                self.t = time.time() - start_t
                if int(self.t) // 15 != last_cue:
                    last_cue = int(self.t) // 15
                    log.info("/////////////// [%s] %d:%f ///////////////" % (last_cue, self.t // 60.0, self.t % 60.0))                        
                osc_control.perform_callbacks()
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
        time.sleep(0.5) # for osc to finish        

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


class MidiSynth(threading.Thread):

    def __init__(self, port=0):
        threading.Thread.__init__(self)
        self.daemon = True     
        self.midi = None
        self.queue = None        

    def connect(self):
        if self.midi is not None:
            return
        log.info("MIDI connecting...")
        self.queue = queue.Queue()
        self.midi = rtmidi.MidiOut()
        available_ports = self.midi.get_ports()
        if len(available_ports):
            log.info("MIDI outputs available: %s" % available_ports)
        else:
            log.info("No MIDI outputs available")
        if available_ports:
            log.info("Opening %s" % available_ports[port])
            self.midi.open_port(port)
        else:
            log.info("Opening virtual output (\"Braid\")...")
            self.midi.open_virtual_port("Braid")   
        time.sleep(0.5)         
        self.start()   
        log.info("MIDI started")                

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
                log.info("MIDI crtl %s %s %s" % (channel, control, value))                    
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


class OSCSynth(threading.Thread):
    """Consume notes and send OSC"""

    def __init__(self):
        threading.Thread.__init__(self)
        self.daemon = True
        self.sender = None
        self.queue = None

    def connect(self):
        if self.sender is not None:
            return        
        log.info("OSC connecting...")
        self.sender = osc.Sender(5280)
        self.queue = queue.Queue()
        self.start()
        log.info("OSC started")

    def send(self, address, *params):
        params = list(params)
        for i, param in enumerate(params):
            if type(param) == bool:
                params[i] = 127 if param else 0
        self.queue.put((address, params))

    def run(self):
        while True:
            address, params = self.queue.get()            
            self.sender.send(address, params)


class OSCControl(object):
    """Receive OSC and perform callbacks"""

    def __init__(self):
        self.callbacks = {}
        self.queue = queue.Queue()
        def message_handler(location, address, data):
            if address != '/braid/control':
                return
            control, value = data
            self.queue.put((control, value))
        self.receiver = osc.Receiver(5281, message_handler)

    def callback(self, control, f):
        """For a given control message, call a function"""
        self.callbacks[control] = f

    def perform_callbacks(self):
        while True:
            try:
                control, value = self.queue.get_nowait()
            except queue.Empty:
                return
            if control in self.callbacks:
                self.callbacks[control](value)


midi_synth = MidiSynth()
osc_synth = OSCSynth()
osc_control = OSCControl()
driver = Driver()

def exit_handler():
    driver.stop()
atexit.register(exit_handler)

