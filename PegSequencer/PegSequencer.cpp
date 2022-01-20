#include "daisy_seed.h"
#include "daisysp.h"
#include "ShiftOut.hpp"

using namespace daisy;
using namespace daisysp;

DaisySeed hw;

// defines for LED shift registers
//#define GPIO_26    {  DSY_GPIOC, 9 }
//#define GPIO_27    {  DSY_GPIOC, 8 }
//#define GPIO_28    {  DSY_GPIOD, 2 }

int shiftGPIOinPins[] = {7, 8, 9, 10, 11, 12, 13, 14};

// initialize shift register input pins
dsy_gpio_pin pinsIn[8];
dsy_gpio shiftInPins[8];
int shiftPosition = 0;
int shiftOutStates[8] = {0b10000000,
                        0b01000000,
                        0b00100000,
                        0b00010000,
                        0b00001000,
                        0b00000100,
                        0b00000010,
                        0b00000001};
                       
// drum objects
AnalogBassDrum kickDrum;
AnalogBassDrum kickHigh;
AnalogSnareDrum snareDrum;
HiHat<SquareNoise> hihat;

// test oscillator 
Oscillator osc;

// metro object for keeping time
static Metro clock;
// int to keep track fo which step we are on (0-15)
int metroStep = 0;
float metroFreq = 32.0f;
// variable to keep track of ADC knob
float tempoKnob = 0.0f;
int tempoKnobPin = 16;

// array to keep track of whether pegs are in each hole
static bool pegs[64];
int testBeatArray[64] = {1,0,1,1,1,0,1,0,1,0,0,1,1,1,0,0,
                         0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,
                         0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,
                         0,0,1,0,0,1,1,0,0,0,1,0,0,0,1,0};


    
void AudioCallback(AudioHandle::InterleavingInputBuffer in, AudioHandle::InterleavingOutputBuffer out, size_t size)
{

	// metronome variables
    uint8_t tic;

	// building sample variables
	float kick_out, kickHigh_out, snare_out, hihat_out, sigL, sigR, osc_out;

// sends sound straight through
/*
	for (size_t i = 0; i < size; i++)
	{
		out[0][i] = in[0][i];
		out[1][i] = in[1][i];
	}
	*/

	// process metro object
	tic = clock.Process();
	if(tic)
	{
		metroStep += 1;
		if(metroStep > 15) {
			metroStep = 0;
		}

		if(pegs[metroStep]){
			kickDrum.Trig();
		}

        if(pegs[metroStep + 16]) {
            kickHigh.Trig();
        }

        if(pegs[metroStep + 32] ) {
          //  snareDrum.Trig();
        }
        if(pegs[metroStep + 48])
        {
           // hihat.Trig();
        }

	}

	// prepare audio block
	for(size_t i = 0; i < size; i += 2) {
		kick_out = kickDrum.Process();
        kickHigh_out = kickHigh.Process();
	//	snare_out = snareDrum.Process();
     //   hihat_out = hihat.Process();

        //osc_out = osc.Process();
		//sigL = osc_out;

        // mono for now
		sigL = sigR = (1.5f * kick_out + 1.5f * kickHigh_out + 0.5f*snare_out + hihat_out) * 10;
		out[i] = sigL;
		out[i + 1] = sigR;
	}
}

void setUpDrums(){

}

void inputPinsInit(){
    //setup the pins as inputs with pullup
    for(int i = 0; i < 8; i++){
       // pinsIn[i].pin = hw.GetPin(shiftGPIOinPins[i]-1);
        shiftInPins[i].pin = hw.GetPin(shiftGPIOinPins[i]);
        shiftInPins[i].mode = DSY_GPIO_MODE_INPUT;
        shiftInPins[i].pull = DSY_GPIO_PULLDOWN;
        dsy_gpio_init(&shiftInPins[i]);
    }

}

/// should refactor! this does the digital reading for the diode matrix from the pegs
void readEightPins( int startingPin) {
    for(int i = 0; i < 8; i++) {
       // pegs[i] = (bool)dsy_gpio_read(hw.GetPin(shiftGPIOinPins[i]));
        pegs[(i*8)+(startingPin/8)] = (bool)dsy_gpio_read(&shiftInPins[i]);
    }    
}

int main(void)
{
	hw.Configure();
	hw.Init();
	hw.SetAudioBlockSize(4); // number of samples handled per callback
	hw.SetAudioSampleRate(SaiHandle::Config::SampleRate::SAI_48KHZ);
	
	// hold on to sample rate for initializing modules
	float sample_rate;
	sample_rate = hw.AudioSampleRate();

	// initialize clock at frequency, and sample rate
	clock.Init(metroFreq, sample_rate);

	// initialize drums
	kickDrum.Init(sample_rate);
    kickHigh.Init(sample_rate);
    kickHigh.SetFreq(100.0f);
    kickHigh.SetDecay(0.2f);
 //   snareDrum.Init(sample_rate);
//    snareDrum.SetSustain()
 //   hihat.Init(sample_rate);
  //  hihat.SetDecay(0.01f);
	//kickDrum.SetFreq(100.0f);
	//kickDrum.SetDecay(0.5f);
	

	osc.Init(sample_rate);
	osc.SetAmp(1.0f);
	osc.SetFreq(220.0f);

	hw.StartAudio(AudioCallback);
	
	    // initialize 595 shift register
    static ShiftOut shiftOut;
    shiftOut.Init();

    inputPinsInit();
    
    // set up adc
    AdcChannelConfig adcConfig;
    adcConfig.InitSingle(hw.GetPin(tempoKnobPin));

    // initialize the adc with that config
    hw.adc.Init(&adcConfig, 1);
    // start reading values
    hw.adc.Start();

    //  initialize array to be test beat
    for (int i = 0; i < 64; i++) {
        if(testBeatArray[i] == 1){
            pegs[i] = true;
        }
    }

	bool led_state = true;
	// led_state = true;
  // nonsense

    // Loop forever, reading switches and ADCs and writing LEDs
    for(;;)
    {
        // read ADC for tempo
        tempoKnob = hw.adc.GetFloat(0);
        metroFreq = 10 + tempoKnob * 100;
        clock.SetFreq(metroFreq);
        
                // Set the onboard LED
        hw.SetLed(led_state);

        // Toggle the LED state for the next time around.
        led_state = !led_state;

        // Wait 500ms
        System::Delay(10);
		//kickDrum.Trig();

        // scan peg switches
        for (int i = 0; i < 8; i++) {
            shiftPosition = i;
            shiftOut.Write(shiftOutStates[i]);
            readEightPins(i*8);
        }
        
    }
}
