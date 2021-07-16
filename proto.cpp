#include "daisysp.h"
#include "daisy_seed.h"

// Use the daisy namespace to prevent having to type
// daisy:: before all libdaisy functions
// also daisysp
using namespace daisy;
using namespace daisysp;

// Declare a DaisySeed object called hardware
DaisySeed hardware;

static Metro clock;

// drum oscillators
Oscillator osc;
WhiteNoise noise;

// for sine testing
static Oscillator osc_sine;
static Oscillator osc_saw;

AdEnv kickVolEnv, kickPitchEnv, snareEnv;

// array to keep track of whether pegs are in each hole
bool pegs[64];
int testBeatArray[64] = {1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,
                         0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,
                         1,0,1,0,1,1,1,0,0,1,0,1,1,0,1,0,
                         0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0};

// integer to keep track of which step we're on (0-15)
int metroStep = 0;

// this is where the audio processing happens for each sample/frame, preparing the buffer
void AudioCallback(AudioHandle::InterleavingInputBuffer in,
                    AudioHandle::InterleavingOutputBuffer out,
                    size_t size)
{
    // test wave values;
    float sine, saw;

    // metronome variables
    float freq;
    uint8_t tic;

    // drum variables
    float osc_out, noise_out, snr_env_out, kck_env_out, sig;

    // prepare the audio block
    for(size_t i = 0; i < size; i += 2)
    {
    
        // sequencer processing
        tic = clock.Process();
        if(tic)
        {

            metroStep += 1;
            if(metroStep > 15) {
                metroStep = 0;
            }

            if(pegs[metroStep]){
                kickVolEnv.Trigger();
                kickPitchEnv.Trigger();
            
                freq = rand() %500;
                osc_sine.SetFreq(freq);
                osc_saw.SetFreq(freq);

            }

            if(pegs[metroStep + 16]){
                snareEnv.Trigger();
            }
        }

        // update test oscillator, get value for current sample
        sine = osc_sine.Process();
        saw = osc_saw.Process();

        // process drums
        snr_env_out = snareEnv.Process();
        kck_env_out = kickVolEnv.Process();

        // apply the pitch envelope to the kick
        osc.SetFreq(kickPitchEnv.Process());
        // set the kick volume to the envelope's output
        osc.SetAmp(kck_env_out);
        // process the next oscillator sample
        osc_out = osc.Process();

        // get the next snare sample
        noise_out = noise.Process();
        // set the sample to the correct volume
        noise_out *= snr_env_out;

        // mix the two signals at half volume
        sig = 0.5 * noise_out + 0.5 * osc_out;

        // left out
        out[i] = sig;

        // right out
        out[i + 1] = saw;
    }
}




int main(void)
{
    /*
    // instantiate pegs array for preset beat
    for (int i = 0; i < 64; i++) {
        pegs[i] = false;
    }
    pegs[0] = true;
    pegs[4] = true;
    pegs[8] = true;
    pegs[12] = true;

    pegs[18] = true;
    pegs[22] = true;
    pegs[27] = true;
    pegs[30] = true; */

    for (int i = 0; i < 64; i++) {
        if(testBeatArray[i] == 1){
            pegs[i] = true;
        }
    }
    // Declare a variable to store the state we want to set for the LED.
    bool led_state;
    led_state = true;

    // Configure and Initialize the Daisy Seed
    // These are separate to allow reconfiguration of any of the internal
    // components before initialization.
    float sample_rate;
    hardware.Configure();
    hardware.Init();
    sample_rate = hardware.AudioSampleRate();

    // initialize Metro object at 2 hz
    clock.Init(8, sample_rate);

    // set parameters for sine oscillator object
    osc_sine.Init(sample_rate);
    osc_sine.SetWaveform(Oscillator::WAVE_SIN);
    osc_sine.SetFreq(100);
    osc_sine.SetAmp(0.25);

    // and also for saw oscillator
    osc_saw.Init(sample_rate);
    osc_saw.SetWaveform(Oscillator::WAVE_SAW);
    osc_saw.SetFreq(100);
    osc_saw.SetAmp(0.25);

    // initialize oscillator for kickdrum
    osc.Init(sample_rate);
    osc.SetWaveform(Oscillator::WAVE_TRI);
    osc.SetAmp(1);

    // initialize noise
    noise.Init();

    // initialize envelopes, for snare
    snareEnv.Init(sample_rate);
    snareEnv.SetTime(ADENV_SEG_ATTACK, 0.01);
    snareEnv.SetTime(ADENV_SEG_DECAY, 0.2);
    snareEnv.SetMax(1);
    snareEnv.SetMin(0);

    // kick osc pitch (faster decay)
    kickPitchEnv.Init(sample_rate);
    kickPitchEnv.SetTime(ADSR_SEG_ATTACK, 0.01);
    kickPitchEnv.SetTime(ADSR_SEG_DECAY, 0.05);
    kickPitchEnv.SetMax(400);
    kickPitchEnv.SetMin(50);

    // kick volume envelope
    kickVolEnv.Init(sample_rate);
    kickVolEnv.SetTime(ADENV_SEG_ATTACK, 0.01);
    kickVolEnv.SetTime(ADENV_SEG_DECAY, 1);
    kickVolEnv.SetMax(1);
    kickVolEnv.SetMin(0);


    // start calling the callback function
    hardware.StartAudio(AudioCallback);

    // Loop forever
    for(;;)
    {
        // Set the onboard LED
        hardware.SetLed(led_state);

        // Toggle the LED state for the next time around.
        led_state = !led_state;

        // Wait 500ms
        System::Delay(100);
    }
}
