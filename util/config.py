import os, shutil, __main__, yaml

# look for a config file in these directories, in this order:
directories = [ os.path.dirname(__main__.__file__) if hasattr(__main__, '__file__') else None,                      # directory of main (if exists)
                '.',                                                                                                # current working directory
                os.path.join(os.path.dirname(__file__), ".."),                                                      # the directory above housepy
                os.path.join(os.path.dirname(__main__.__file__), "..") if hasattr(__main__, '__file__') else None                          # the directory above main
                ]
directories = [directory for directory in directories if directory is not None]

class Config(dict):

    def __init__(self, conf=None):    
        self.conf = None
        i = 0
        while conf is None or not os.path.isfile(conf):
            conf = os.path.abspath(os.path.join(directories[i], "config.yaml"))
            smp = os.path.abspath(os.path.join(directories[i], "config.yaml.smp"))
            if not os.path.isfile(conf) and os.path.isfile(smp):
                shutil.copyfile(smp, conf)  
            i += 1
            if i == len(directories):
                # no config file
                dict.__init__(self)
                return
        self.conf = conf
        f = open(self.conf)                
        data = yaml.load(f)
        dict.__init__(self, data)
        f.close()
        
    def __missing__(self, key):
        raise ConfigError(key, self.conf)


class ConfigError(Exception):
    def __init__(self, key, conf):
        self.key = key
        self.conf = conf
    def __str__(self):
        return repr("No '%s' in config (%s)" % (self.key, self.conf))
        
            
config = Config()