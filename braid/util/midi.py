#!/usr/bin/env python3

import sys, time, threading, atexit, queue, rtmidi
from rtmidi.midiconstants import NOTE_ON, NOTE_OFF, CONTROLLER_CHANGE
from . import log
from . import num_args

log_midi = False

class MidiOut(threading.Thread):

    def __init__(self, port=0, throttle=0):
        threading.Thread.__init__(self)
        self.daemon = True
        self.port = port  
        self.throttle = throttle
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
            log.info("MIDI OUT opening virtual output (\"Python\")...")
            self.midi.open_virtual_port("Python")           
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
                if log_midi:
                    log.info("MIDI ctrl %s %s %s" % (channel, control, value))                    
                channel -= 1
                self.midi.send_message([CONTROLLER_CHANGE | (channel & 0xF), control, value])                
            if note is not None:
                pitch, velocity = note
                if log_midi:
                    log.info("MIDI note %s %s %s" % (channel, pitch, velocity))
                channel -= 1
                if velocity:            
                    self.midi.send_message([NOTE_ON | (channel & 0xF), pitch & 0x7F, velocity & 0x7F])
                else:
                    self.midi.send_message([NOTE_OFF | (channel & 0xF), pitch & 0x7F, 0])
            if self.throttle > 0:
                time.sleep(self.throttle)


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
            time.sleep(0.1)

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


midi_out = MidiOut(int(sys.argv[1]) if len(sys.argv) > 1 else 0)
midi_in = MidiIn(int(sys.argv[2]) if len(sys.argv) > 2 else 0)
time.sleep(0.5)
