import inspect

def num_args(f):
    """Returns the number of arguments received by the given function"""
    return len(inspect.getargspec(f).args)

__all__ = ["midi_in", "midi_out"]

from .midi import midi_out
