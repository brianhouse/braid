from . import midi_synth, Voice

class Meeblip(Voice):

    def __init__(self, channel, **params):
        Voice.__init__(self, channel, **params)
        # these numbers are midi, not ms

        # dials
        self.attack = 0         # 61
        self.decay = 127        # 60
        self.filter_attack = 0  # 59
        self.filter_decay = 64  # 58
        self.osc_detune = 64    # 55
        self.pwm = 64           # 54
        self.glide = 0          # 53
        self.filter_env = 64    # 52
        self.ifo_depth = 0      # 51
        self.lfo_rate = 0       # 50
        self.cutoff = 0         # 49
        self.resonance = 127    # 48

        # toggles
        self.a_noise = False    # 77
        self.a_pwm = False      # 79
        self.pwm_sweep = False  # 78
        self.b_enable = False   # 74
        self.b_square = False   # 75     
        self.b_octave = False   # 73

        self.antialias = False  # 72
        self.sustain = False    # 76
        self.lfo_dest = False   # 71
        self.lfo_enable = False # 70
        self.lfo_square = False # 67
        self.lfo_random = False # 66
        self.fm = False         # 65
        self.filter_mode = False# 68
        self.distortion = False # 69


    def play(self, pitch, velocity=None):
        if velocity is None:
            velocity = self.velocity


        # midi_synth.send_control(self.channel, self.drums.index(pitch - 36) + 40, int(velocity * 127))

        ## ok, so how does this work? cant send every parameter individually before every note
        ## will need to keep track of changes
        ## for now, it's manual

        # remember to map velocity to cutoff or whatever

        # print('meeblip play')
        midi_synth.send_control(self.channel, 49, int(velocity * 127))
        midi_synth.send_note(self.channel, pitch, 127)

                                                                            # self.attack, 
                                                                            # self.decay, 
                                                                            # self.filter_attack, 
                                                                            # self.filter_decay, 
                                                                            # self.osc_detune, 
                                                                            # self.pwm, 
                                                                            # self.glide, 
                                                                            # self.filter_env, 
                                                                            # self.ifo_depth, 
                                                                            # self.lfo_rate, 
                                                                            # self.cutoff, 
                                                                            # self.resonance, 
                                                                            # self.a_noise, 
                                                                            # self.a_pwm, 
                                                                            # self.pwm_sweep, 
                                                                            # self.b_enable, 
                                                                            # self.b_square, 
                                                                            # self.b_octave, 
                                                                            # self.antialias, 
                                                                            # self.sustain, 
                                                                            # self.lfo_dest, 
                                                                            # self.lfo_enable, 
                                                                            # self.lfo_square, 
                                                                            # self.lfo_random, 
                                                                            # self.fm, 
                                                                            # self.filter_mode, 
                                                                            # self.distortion)
        self.previous_pitch = pitch
