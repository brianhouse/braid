import os, logging, __main__, sys
import logging.handlers
import config    

try:
    name = os.path.basename(__main__.__file__).split('.')[0]    # log identifier/file will be the same as the file being run
    if name == "__main__":
        name = os.path.dirname(__main__.__file__).split('/')[-1]
except AttributeError:
    name = "python"
    
log = logging.getLogger(name)
log.setLevel(logging.DEBUG)

try:
    log_to_file = config.config['log']
except config.ConfigError:
    log_to_file = False
if log_to_file:        
    logdir = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "logs"))
    if not os.path.isdir(logdir):
        os.makedirs(logdir)
    logfile = os.path.join(logdir, "%s.log" % name)
    logfile = logging.handlers.TimedRotatingFileHandler(logfile, 'midnight')
    logfile.setLevel(logging.DEBUG)
    log.addHandler(logfile)

try:
    log_to_terminal = config.config['tail']
except config.ConfigError:
    log_to_terminal = True
if log_to_terminal:
    terminal = logging.StreamHandler(sys.stdout)    
    terminal.setLevel(logging.DEBUG)
    log.addHandler(terminal)

formatter = logging.Formatter("%(asctime)s |%(levelname)s| %(message)s <%(filename)s:%(lineno)d>")            

if log_to_file:
    logfile.setFormatter(formatter)
if log_to_terminal:    
    terminal.setFormatter(formatter)


def exc(e):
    return "%s <%s:%s> %s" % (sys.exc_info()[0].__name__, os.path.split(sys.exc_info()[2].tb_frame.f_code.co_filename)[1], sys.exc_info()[2].tb_lineno, e)

log.exc = exc