import inspect
from .log import log
from .config import config

__all__ = ["config", "log"]

def num_args(f):
    """Returns the number of arguments received by the given function"""
    return len(inspect.getargspec(f).args)