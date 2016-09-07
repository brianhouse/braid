
class Sync(object):

    def __init__(self, syncer, syncee, cycles):
        self.syncer = syncer
        self.syncee = syncee
        self.total_cycles = cycles
        self.syncee_start_cycles = syncee._cycles

    def get_phase(self):
        cycles_remaining = self.total_cycles - (self.syncee._cycles - self.syncee_start_cycles)
        if cycles_remaining <= 0:
            phase_difference = (self.syncee._cycles % 1.0) - (self.syncer._cycles % 1.0)
            print("D %f %f %f" % ((self.syncee._cycles % 1.0), (self.syncer._cycles % 1.0), (self.syncee._cycles % 1.0) - (self.syncer._cycles % 1.0)))
            return phase_difference
        time_remaining = cycles_remaining / self.syncee.rate
        acceleration = (self.syncee.rate - self.syncer.rate) / time_remaining
        cycles_at_completion = (self.syncer.rate * time_remaining) + (0.5 * (acceleration * (time_remaining * time_remaining)))
        cycles_at_completion += self.syncer._cycles
        phase_at_completion = cycles_at_completion % 1.0
        phase_correction = phase_at_completion * -1
        print("%fc, %ft, %f, %f, %f, %f" % (cycles_remaining, time_remaining, acceleration, cycles_at_completion, phase_at_completion, phase_correction))
        return phase_correction
