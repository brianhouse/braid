import inspect

def num_args(f):
    """Returns the number of arguments received by the given function"""
    return len(inspect.getargspec(f).args)

from .midi import midi_out

from .thread import *
from .signal import *
from .core import *
from . import custom

def log_midi(value):
    midi.log_midi = True if value else False

if LIVECODING:
    play()
