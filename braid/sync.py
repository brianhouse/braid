import math


class Sync(object):

    def __init__(self, syncer, syncee, cycles):
        self.syncer = syncer
        self.syncee = syncee
        self.total_cycles = cycles
        self.syncee_start_cycles = float(math.ceil(syncee._cycles))

    def get_phase(self):
        syncee_cycles_remaining = self.total_cycles - (self.syncee._cycles - self.syncee_start_cycles)
        if syncee_cycles_remaining <= 0:
            phase_correction = (self.syncee._cycles % 1.0) - (self.syncer._cycles % 1.0)
            print("%f, %f" % (0, phase_correction))
            return phase_correction
        time_remaining = syncee_cycles_remaining / self.syncee.rate
        acceleration = (self.syncee.rate - self.syncer.rate) / time_remaining
        syncer_cycles_remaining = (self.syncer.rate * time_remaining) + (0.5 * (acceleration * (time_remaining * time_remaining)))        
        
        test_phase_correction = (self.syncee._cycles % 1.0) - (self.syncer._cycles % 1.0)

        cycles_at_completion = syncer_cycles_remaining + self.syncer._cycles
        phase_at_completion = cycles_at_completion % 1.0
        phase_correction = phase_at_completion
        phase_correction *= -1        
        if phase_correction < 0.0:
            phase_correction = 1.0 + phase_correction
        print("%f %f (%f %f %f)" % (syncee_cycles_remaining, phase_correction, syncer_cycles_remaining, cycles_at_completion, test_phase_correction))        
        return phase_correction


# find why the calculations come out different
# worst case, just do a switch

## could be that the initial calc accounts for error, since it updates all the time
## 

"""

In this case, the tween isn't starting on a cycle, so the syncee's phase isnt 0.

"""