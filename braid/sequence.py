import collections
from .pattern import Pattern
from .util import num_args

class Sequence(list):

    def __init__(self, *args):
        self.set(args)

    def __setitem__(self, item):
        list.__setitem__(self, self._check(item))

    def set(self, *args):
        self._index = 0
        self._repeat = False
        self._endwith_f = None
        args = [self._check(item) for item in args]
        list.__init__(self, args)   
        return self     

    def append(self, item):
        list.append(self, self._check(item))

    def insert(self, i, item):
        list.insert(self, i, self._check(item))

    def extend(self):
        raise NotImplementedError

    def _check(self, item):
        if type(item) == list or type(item) == tuple:
            item = Pattern(item)
        elif not isinstance(item, Pattern):
            assert isinstance(item, collections.Callable)
        return item

    def _shift(self, voice):
        while True:
            if self._index == len(self):
                self._index = 0
                if type(self._repeat) is int:
                    self._repeat -= 1
                if not self._repeat:
                    endwith_f = self._endwith_f
                    voice.sequence.set([0])
                    if endwith_f is not None:
                        if num_args(endwith_f) > 0:
                            endwith_f(voice)
                        else:
                            endwith_f()
            item = self[self._index]
            if isinstance(item, collections.Callable): # execute unlimited functions, but break on new pattern
                item(voice)        
            self._index += 1
            if isinstance(item, Pattern):
                return item

    def repeat(self, n=True):
        self._repeat = n
        return self

    def endwith(self, f):
        assert isinstance(f, collections.Callable)
        self._endwith_f = f
        return self
