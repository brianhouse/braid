from .core import *
print("core")
from .notation import *
print("notation")
from .pattern import *
print("pattern")
from .signal import *
print("signal")
from .tween import *
print("tween")
from .attribute import *
print("attribute")
from .controller import *
print("controller")
from .sequence import *
print("sequence")
from .voice import *
print("voice")

print('done')

"""

so tween and pattern are circular

tween > signal, core, util, pattern
pattern > attribute, tween

attribute > tween
controller > core, util, pattern
sequence > pattern, util
voice > attribute, sequence, core, notation, pattern, util

"""