from .thread import *
from .signal import *
from .core import *
from .lib.bjorklund import bjorklund as euc
from braid.lib import midi 

def log_midi(value):
    midi.log_midi = True if value else False
