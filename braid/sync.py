import math
from .core import driver

FACTOR = .5

class Sync(object):

    def __init__(self, syncer, cycles):
        self.syncer = syncer
        self.total_cycles = cycles
        self.driver_start_cycles = float(math.ceil(driver._cycles))

    def get_phase(self):
        driver_cycles_remaining = self.total_cycles - (driver._cycles - self.driver_start_cycles)
        if driver_cycles_remaining <= 0:
            return None
        print("driver_c_r\t\t%f" % driver_cycles_remaining)            
        time_remaining = driver_cycles_remaining / driver.rate
        print("time_remaining\t\t%f" % time_remaining)
        acceleration = ((driver.rate * FACTOR) - self.syncer.rate) / time_remaining
        print("acceleration\t\t%f" % acceleration)            
        syncer_cycles_remaining = (self.syncer.rate * time_remaining) + (0.5 * (acceleration * (time_remaining * time_remaining)))            
        cycles_at_completion = syncer_cycles_remaining + self.syncer._cycles
        phase_at_completion = cycles_at_completion % 1.0
        phase_correction = phase_at_completion
        print("phase_at_completion\t%f" % phase_at_completion)      
        phase_correction *= -1        
        if phase_correction < 0.0:
            phase_correction = 1.0 + phase_correction
        print("phase_correction\t%f" % phase_correction)                  
        print()
        return phase_correction

