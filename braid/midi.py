#!/usr/bin/env python3

import sys, time, threading, atexit, queue, rtmidi
from rtmidi.midiconstants import NOTE_ON, NOTE_OFF, CONTROLLER_CHANGE
from . import num_args
from .logger import logger

log_midi = False

class MidiOut(threading.Thread):

    def __init__(self, interface=0, throttle=0):
        threading.Thread.__init__(self)
        self.daemon = True
        self._interface = interface  
        self.throttle = throttle
        self.queue = queue.Queue()
        self.midi = rtmidi.MidiOut()            
        available_interfaces = self.scan()
        if available_interfaces:
            if self._interface >= len(available_interfaces):
                logger.info("Interface index %s not available" % self._interface)
                return
            logger.info("MIDI OUT: %s" % available_interfaces[self._interface])
            self.midi.open_port(self._interface)
        else:
            logger.info("MIDI OUT opening virtual interface 'Braid'...")
            self.midi.open_virtual_port('Braid')
        self.start()   

    def scan(self):
        available_interfaces = self.midi.get_ports()
        if len(available_interfaces):
            logger.info("MIDI outputs available: %s" % available_interfaces)
        else:
            logger.info("No MIDI outputs available")
        return available_interfaces

    def send_control(self, channel, control, value):
        self.queue.put((channel, (control, value), None))

    def send_note(self, channel, pitch, velocity):
        self.queue.put((channel, None, (pitch, velocity)))

    @property
    def interface(self):
        return self._interface

    @interface.setter
    def interface(self, interface):
        self.__init__(interface=interface, throttle=self.throttle)

    def run(self):
        while True:
            channel, control, note = self.queue.get()
            if control is not None:
                control, value = control
                if type(value) == bool:
                    value = 127 if value else 0
                if log_midi:
                    logger.info("MIDI ctrl %s %s %s" % (channel, control, value))                    
                channel -= 1
                self.midi.send_message([CONTROLLER_CHANGE | (channel & 0xF), control, value])                
            if note is not None:
                pitch, velocity = note
                if log_midi:
                    logger.info("MIDI note %s %s %s" % (channel, pitch, velocity))
                channel -= 1
                if velocity:            
                    self.midi.send_message([NOTE_ON | (channel & 0xF), pitch & 0x7F, velocity & 0x7F])
                else:
                    self.midi.send_message([NOTE_OFF | (channel & 0xF), pitch & 0x7F, 0])
            if self.throttle > 0:
                time.sleep(self.throttle)


class MidiIn(threading.Thread):

    def __init__(self, interface=0):
        threading.Thread.__init__(self)
        self.daemon = True
        self._interface = interface          
        self.queue = queue.Queue()
        self.midi = rtmidi.MidiIn()
        self.callbacks = {}
        self.threads = []
        available_interfaces = self.scan()
        if available_interfaces:
            if self._interface >= len(available_interfaces):
                logger.info("Interface index %s not available" % self._interface)
                return
            logger.info("MIDI IN: %s" % available_interfaces[self._interface])
            self.midi.open_port(self._interface)
        self.start()           
        
    def scan(self):
        available_interfaces = self.midi.get_ports()
        if 'Braid' in available_interfaces:
            available_interfaces.remove('Braid')
        if len(available_interfaces):
            logger.info("MIDI inputs available: %s" % available_interfaces)
        else:
            logger.info("No MIDI inputs available")
        return available_interfaces        

    @property
    def interface(self):
        return self._interface

    @interface.setter
    def interface(self, interface):
        self.__init__(interface=interface)

    def run(self):
        def receive_message(event, data=None):
            message, deltatime = event
            if message[0] & 0b11110000 == CONTROLLER_CHANGE:
                nop, control, value = message
                self.queue.put((control, value / 127.0))
            elif (message[0] & 0b11110000 == NOTE_ON):
                if len(message) < 3:
                    return        ## ?
                channel, pitch, velocity = message
                channel -= NOTE_ON
                if channel < len(self.threads):
                    thread = self.threads[channel]
                    thread.note(pitch, velocity)
        self.midi.set_callback(receive_message)
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


midi_out = MidiOut(0)
midi_in = MidiIn(0)
time.sleep(0.5)
logger.info("MIDI ready")
