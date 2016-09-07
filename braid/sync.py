
class Sync(object):

    def __init__(self, syncer, syncee, cycles):
        self.syncer = syncer
        self.syncee = syncee
        self.total_cycles = cycles
        self.syncee_start_cycles = syncee._cycles

    def get_phase(self):
        remaining_cycles = self.total_cycles - (self.syncee.cycles - self.syncee_start_cycles)
        time = remaining_cycles / self.syncee.rate
        acceleration = (self.syncee.rate - self.syncer.rate) / time
        cycles = (self.rate * time) + (0.5 * (acceleration * (time * time)))
        phase = cycles % 1.0
        return phase * -1
