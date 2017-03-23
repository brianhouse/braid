from .thread import *
from .signal import *
from .core import *
from braid.lib import midi 
from . import custom

def log_midi(value):
    midi.log_midi = True if value else False

if LIVECODING:
    play()
