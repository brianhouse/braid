#!/usr/bin/env python

import sys, os, time, json, threading, Queue
from config import config
from log import log
from lib import OSC

verbose = True

class Sender(object):

    # note: OSC.OSCMultiClient() does not appear to work, so writing the equivalent in wrappers here
    def __init__(self, *location):
        self.targets = {}
        self.add_target(*location)

    def add_target(self, *location):
        location = self._get_host_port(*location)
        if not location:
            return
        if verbose:
            log.info("OSC adding target %s:%s" % location)    
        self.targets[location] = OSC.OSCClient()
        self.targets[location].connect(location)

    def remove_target(self, *location):
        location = self._get_host_port(*location)
        if not location or not location in self.targets:
            return
        if verbose:
            log.info("OSC removing target %s:%s" % location)    
        del self.targets[location]

    def send(self, address, data=None):
        message = OSC.OSCMessage()
        message.setAddress(address)
        if data is not None:
            if type(data) is dict:
                data = json.dumps(data)
            if type(data) is tuple:
                data = list(data)
            message.extend(data)
        if verbose:
            log.info("OSC send (%s): %s" % (len(self.targets), message))
        for location, target in self.targets.iteritems():            
            try:
                target.send(message, timeout=1)
            except Exception as e:
                log.error(log.exc(e))

    def _get_host_port(self, *target):
        host, port = None, None
        assert len(target) <= 2
        if len(target) == 1:
            host, port = '0.0.0.0', target[0]
        if len(target) == 2:
            host, port = target
        if host is not None and port is not None:        
            return host, port
        return None


class Receiver(threading.Thread):

    def __init__(self, port, message_handler=None, blocking=False):
        threading.Thread.__init__(self)
        self.daemon = True
        self.message_handler = message_handler
        self.location = '0.0.0.0', port
        self.server = OSC.OSCServer(self.location)
        if verbose:
            log.info("Started OSC Receiver on port %s" % port)
        self.start()
        if blocking:
            try:
                while True:
                    time.sleep(5)
            except (KeyboardInterrupt, SystemExit):
                pass

    def run(self):        
        self.server.addMsgHandler("default", self.default_handler)
        while True:
            try:
                self.server.handle_request()
            except Exception as e:
                log.error(log.exc(e))

    def default_handler(self, address, tags, data, location):  # tags show data type ('i': integer, 's': string)
        if verbose:
            log.info("%s: %s %s" % (location[0], address, data))
        if self.message_handler is not None:
            self.message_handler(location[0], address, data)


if __name__ == "__main__":
    try:
        address = sys.argv[1]
    except:
        address = "/hello/world"
    try:
        data = sys.argv[2]
    except:
        data = None

    def message_handler(location, address, data):
        print location
        print address
        print data

    receiver = Receiver(23232, message_handler)

    Sender(23232).send(address, data)

    time.sleep(0.1)
