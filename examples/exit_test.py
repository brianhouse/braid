import atexit, time

def exit_handler():
    print('My application is ending!')

atexit.register(exit_handler)


while True:
    time.sleep(1)