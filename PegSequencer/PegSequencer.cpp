#include "daisy_seed.h"
#include "daisysp.h"

using namespace daisy;
using namespace daisysp;

DaisySeed hw;


// defines for peg shift register
#define GPIO_4    {  DSY_GPIOC, 9 }
#define GPIO_5    {  DSY_GPIOC, 8 }
#define GPIO_6    {  DSY_GPIOD, 2 }

// defines for LED shift registers
#define GPIO_26    {  DSY_GPIOC, 9 }
#define GPIO_27    {  DSY_GPIOC, 8 }
#define GPIO_28    {  DSY_GPIOD, 2 }

int shiftGPIOinPins[] = {7, 8, 9, 10, 11, 12, 13, 14};

// initialize shift register input pins
dsy_gpio_pin pinsIn[8];
dsy_gpio shiftInPins[8];
int shiftPosition = 0;

// drum objects
AnalogBassDrum kickDrum;

// test oscillator 
Oscillator osc;

// metro object for keeping time
static Metro clock;
// int to keep track fo which step we are on (0-15)
int metroStep = 0;
float metroFreq = 16.0f;

// array to keep track of whether pegs are in each hole
static bool pegs[64];
int testBeatArray[64] = {1,0,1,1,1,0,1,0,1,0,0,1,1,1,0,0,
                         0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0,
                         1,0,1,0,1,1,1,0,0,1,0,1,1,0,1,0,
                         0,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0};


    
void AudioCallback(AudioHandle::InterleavingInputBuffer in, AudioHandle::InterleavingOutputBuffer out, size_t size)
{

	// metronome variables
    uint8_t tic;

	// building sample variables
	float kick_out, sigL, sigR, osc_out;

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

	}

	// prepare audio block
	for(size_t i = 0; i < size; i += 2) {
		kick_out = kickDrum.Process();
		osc_out = osc.Process();
		sigL = osc_out;
		sigR = kick_out * 100;
		out[i] = sigL;
		out[i + 1] = sigR;
	}
}

void setUpDrums(){

}


class ShiftOut
{
  public:
    ShiftOut() {}
    ~ShiftOut() {}

        /*
    shiftPins[0] GPIO_4 = 74HC595 SCK pin 11 (clock)
    shiftPins[1] GPIO_5 = 74HC595 EN pin 12 (chip enable / latch ) 
    shiftPins[2] GPIO_6 = 74HC595 SER pin 14 (data) 
    */

    void Init(){
        //setup the pins as outputs
        for(size_t i = 0; i < 3; i++) {
            shiftPins[i].pin  = pins[i];
            shiftPins[i].mode = DSY_GPIO_MODE_OUTPUT_PP;
            shiftPins[i].pull = DSY_GPIO_NOPULL;
            dsy_gpio_init(&shiftPins[i]);
            dsy_gpio_write(&shiftPins[i], 1);
        }
    }

    void Write(uint8_t data) {
        //enable serial buffer , disable write to output buffer
        dsy_gpio_write(&shiftPins[1], 0);
        for (uint8_t i = 0; i < 8; ++i) {
            //check the least significant bit
            //and write the data pin high or low
            if ( (data & BITMASK) == BITMASK) {
                dsy_gpio_write(&shiftPins[2], 1);  
            } 
            else {
                dsy_gpio_write(&shiftPins[2], 0);   
            }
            //shift data down one bit, i.e. parallel to serial 
            data >>= 1;
            //clock low   
            dsy_gpio_write(&shiftPins[0], 0);
            System::Delay(1);
            //dsy_system_delay(1);
            //clock high
            dsy_gpio_write(&shiftPins[0], 1);
            System::Delay(1);
            //dsy_system_delay(1);
        }
        // after all 8 bits,  latch data from 74HC595 serial buffer to its output with a pulse
        dsy_gpio_write(&shiftPins[1], 1);
        System::Delay(1);
        //dsy_system_delay(1);
        dsy_gpio_write(&shiftPins[1], 0);
    }  

  private:

    dsy_gpio_pin pins[3] = {
        GPIO_4,  GPIO_5,  GPIO_6
    };
    dsy_gpio shiftPins[3];

    const uint8_t BITMASK = 0x1;

};


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
    
    //  initialize array to be test beat
    for (int i = 0; i < 64; i++) {
        if(testBeatArray[i] == 1){
            pegs[i] = true;
        }
    }

	bool led_state = true;
	// led_state = true;
  // nonsense
    // Loop forever
    for(;;)
    {
        // Set the onboard LED
        hw.SetLed(led_state);

        // Toggle the LED state for the next time around.
        led_state = !led_state;

        // Wait 500ms
        System::Delay(1000);
		//kickDrum.Trig();

        shiftPosition = 0;
        shiftOut.Write( 0b10000000 );
        // input is starting peg
        readEightPins(0);

        shiftPosition = 1;
        shiftOut.Write( 0b01000000);
        readEightPins(8);
        shiftPosition = 2;
        shiftOut.Write( 0b00100000 );
        readEightPins(16);
        shiftPosition = 3;
        shiftOut.Write( 0b00010000 );
        readEightPins(24);
        shiftPosition = 4;
        shiftOut.Write( 0b00001000 );
        readEightPins(32);
        shiftPosition = 5;
        shiftOut.Write( 0b00000100 );
        readEightPins(40);
        shiftPosition = 6;
        shiftOut.Write( 0b00000010 );
        readEightPins(48);
        shiftPosition = 7;
        shiftOut.Write( 0b00000001 );
        readEightPins(56);
        /*
        shiftIn.readEightPins(24);
        shiftOut.Write( 0b00010000 );
        shiftIn.readEightPins(32);
        shiftOut.Write( 0b00100000 );
        shiftIn.readEightPins(40);
        shiftOut.Write( 0b01000000 );
        shiftIn.readEightPins(48);
        shiftOut.Write( 0b10000000 );
        shiftIn.readEightPins(56);

        */
        //shiftOut.Write( 0b100000000 );
      //  System::Delay(1);'
    }
}
