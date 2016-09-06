import inspect

def num_args(f):
    """Returns the number of arguments received by the given function"""
    return len(inspect.getargspec(f).args)

__all__ = ["log", "midi_out"]

from .log import log
from .midi import midi_out
