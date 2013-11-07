import os, logging, __main__, sys
import logging.handlers
    
log = logging.getLogger("braid")
log.setLevel(logging.DEBUG)
terminal = logging.StreamHandler(sys.stdout)    
terminal.setLevel(logging.DEBUG)
log.addHandler(terminal)
formatter = logging.Formatter("%(asctime)s |%(levelname)s| %(message)s <%(filename)s:%(lineno)d>")            
terminal.setFormatter(formatter)

def exc(e):
    return "%s <%s:%s> %s" % (sys.exc_info()[0].__name__, os.path.split(sys.exc_info()[2].tb_frame.f_code.co_filename)[1], sys.exc_info()[2].tb_lineno, e)

log.exc = exc