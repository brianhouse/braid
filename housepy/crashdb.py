import os, time, json
try:
    from collections import OrderedDict
    Parent = OrderedDict
except:
    Parent = dict

class CrashDB(Parent):

    def __init__(self, db_path):
        self.db_path = db_path
        self.lockfile = ''.join(db_path.split('.')[:-1]) + ".lock"
        self.f = None
        start = time.time()
        while os.path.exists(self.lockfile) and start - os.path.getmtime(self.lockfile) < 5.0:
            time.sleep(0.1)
            if time.time() - start > 5.0:
                raise Exception("Lock timeout")
        try:
            open(self.lockfile, 'w').write("1")
            self.f = open(self.db_path, 'w+') if not os.path.exists(self.db_path) else open(self.db_path, 'r+')
            data = self.f.read()
            if not len(data.strip()):
                data = "{}"
            data = json.loads(data)
        except Exception as e:
            if self.f is not None:
                self.f.close()         
            os.remove(self.lockfile)                   
            raise CrashDBError("Could not load %s" % db_path)
        Parent.__init__(self, data)

    def close(self):
        try:
            data = json.dumps(self, indent=4)
            self.f.seek(0)
            self.f.write(data)
            self.f.truncate()
            self.f.close()
            os.remove(self.lockfile)
        except Exception as e:
            raise CrashDBError("Could not save database (%s)" % e)

    def __missing__(self, key):
        raise CrashDBError("'%s' not found" % key)


class CrashDBError(Exception):

    def __init__(self, message):
        self.message = message

    def __str__(self):
        return self.message
        

def load(filename):
    return CrashDB(filename)


if __name__ == "__main__":
    db = CrashDB("db_test.json")
    db['key'] = "some data"
    try:
        value = db['kye']
    except CrashDBError as e:
        print(e)
    db.close()
