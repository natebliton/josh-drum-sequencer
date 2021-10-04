// working copy

#include "daisysp.h"
#include "daisy_seed.h"

// Use the daisy namespace to prevent having to type
// daisy:: before all libdaisy functions
// also daisysp
using namespace daisy;
using namespace daisysp;

// defines for peg shift register
#define GPIO_4    {  DSY_GPIOC, 9 }
#define GPIO_5    {  DSY_GPIOC, 8 }
#define GPIO_6    {  DSY_GPIOD, 2 }

// defines for LED shift registers
#define GPIO_26    {  DSY_GPIOC, 9 }
#define GPIO_27    {  DSY_GPIOC, 8 }
#define GPIO_28    {  DSY_GPIOD, 2 }


constexpr size_t lightFlashTime = 50;

int pot1GPIOpin = 15;
int pot2GPIOpin = 16;

int shiftGPIOinPins[] = {7, 8, 9, 10, 11, 12, 13, 14};

// Declare a DaisySeed object called hardware
DaisySeed hardware;

static Metro clock;

// drum objects
AnalogBassDrum kickDrum;
AnalogBassDrum kickHigh;
AnalogSnareDrum snareDrum;
HiHat<> hiHat;

// for sine testing
static Oscillator osc_sine;
static Oscillator osc_saw;

// array to keep track of whether pegs are in each hole
static bool pegs[64];
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
    float kick_out, snare_out, kickHigh_out, hiHat_out, sig;

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
                kickDrum.Trig();
            //    pegLEDs.flash(metroStep);

            }

            if(pegs[metroStep + 16]){
                snareDrum.Trig();
             //   pegLEDs.flash(metroStep + 16);
            }

            if(pegs[metroStep + 32]){
                kickHigh.Trig();
             //   pegLEDs.flash(metroStep + 32);
            }

            if(pegs[metroStep + 48]) {
             //   pegLEDs.flash(metroStep + 48);
                hiHat.Trig();
            }
        }

        // process drums
        kick_out = kickDrum.Process();
        snare_out = snareDrum.Process();
        kickHigh_out = kickHigh.Process();
        hiHat_out = hiHat.Process();
  
        // mix the drum signals at half volume each
        sig = (0.4 * kick_out) + (0.4 * snare_out) + (kickHigh_out * 0.4) + (hiHat_out * 0.4);

        // left out
        out[i] = sig;

        // right out
        out[i + 1] = sig;
    }
}

class PegLEDs
{
    public:
    PegLEDs() {}
    ~PegLEDs() {}

    void Init() {
        // zero out each counter;
        for(size_t i; i < 64; i++) {
            flashCounters[i][0] = 0;
            flashCounters[i][1] = lightFlashTime;
        }

        //setup the pins as outputs
        for(size_t i = 0; i < 3; i++) {
            LEDshiftPins[i].pin  = LEDpins[i];
            LEDshiftPins[i].mode = DSY_GPIO_MODE_OUTPUT_PP;
            LEDshiftPins[i].pull = DSY_GPIO_NOPULL;
            dsy_gpio_init(&LEDshiftPins[i]);
            dsy_gpio_write(&LEDshiftPins[i], 1);
        }
    }

    void Update() {
        for(size_t i = 0; i < 64; i++) {
            if(flashCounters[i][0] > 0) {
                flashCounters[i][0] ++;
            }
            if(flashCounters[i][0] > flashCounters[i][1]) {
                flashCounters[i][0] = 0;
            }
        }
      //  Write(constructString());
    }

    // set led to be counting, and set duration
    void Flash(size_t led, int duration) {
        flashCounters[led][0] = 1;
        flashCounters[led][1] = duration;
    }

    void Write(uint8_t data) {
        //enable serial buffer , disable write to output buffer
        dsy_gpio_write(&LEDshiftPins[1], 0);
        for (uint8_t i = 0; i < 8; ++i) {
            //check the least significant bit
            //and write the data pin high or low
            if ( (data & LEDBITMASK) == LEDBITMASK) {
                dsy_gpio_write(&LEDshiftPins[2], 1);  
            } 
            else {
                dsy_gpio_write(&LEDshiftPins[2], 0);   
            }
            //shift data down one bit, i.e. parallel to serial 
            data >>= 1;
            //clock low   
            dsy_gpio_write(&LEDshiftPins[0], 0);
            System::Delay(1);
            //dsy_system_delay(1);
            //clock high
            dsy_gpio_write(&LEDshiftPins[0], 1);
            System::Delay(1);
            //dsy_system_delay(1);
        }
        // after all 8 bits,  latch data from 74HC595 serial buffer to its output with a pulse
        dsy_gpio_write(&LEDshiftPins[1], 1);
        System::Delay(1);
        //dsy_system_delay(1);
        dsy_gpio_write(&LEDshiftPins[1], 0);
    }  

    private:
        // 64 places to keep track of how long an LED has been lit, and how long it should stay lit
        size_t flashCounters[64][2];

        // shift registers
        dsy_gpio_pin LEDpins[3] = {
            GPIO_26,  GPIO_27,  GPIO_28
        };
        dsy_gpio LEDshiftPins[3];

        const uint8_t LEDBITMASK = 0x1;

        uint64_t constructData() {
           // 0b00001000
        }
};

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

class ShiftIn {
    public: 
    ShiftIn() {}
    ~ShiftIn() {}

        /*
    shiftPins[0] GPIO_4 = 74HC595 SCK pin 11 (clock)
    shiftPins[1] GPIO_5 = 74HC595 EN pin 12 (chip enable / latch ) 
    shiftPins[2] GPIO_6 = 74HC595 SER pin 14 (data) 
    */

    void Init(){
        //setup the pins as inputs with pullup
        for(int i = 0; i < 8; i++){
            pinsIn[i].pin = shiftGPIOinPins[i];
            shiftInPins[i].pin = pinsIn[i];
            shiftInPins[i].mode = DSY_GPIO_MODE_INPUT;
            shiftInPins[i].pull = DSY_GPIO_PULLUP;
            dsy_gpio_init(&shiftInPins[i]);
        }

    }

    void readEightPins( int startingPin) {
        for(int i = 0; i < 8; i++) {
            pegs[i] = !(bool)dsy_gpio_read(&shiftInPins[i]);
        }    
    }

    private:
            // initialize shift register input pins
        dsy_gpio_pin pinsIn[8];
        dsy_gpio shiftInPins[8];

};

// reads eight pins at a time
void readEightPins(int startingPin, dsy_gpio pin[]) {
    for(int i = 0; i < 8; i++) {
        pegs[i] = !(bool)dsy_gpio_read(&pin[i]);
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
    
    // initialize drums
    kickDrum.Init(sample_rate);
    kickHigh.Init(sample_rate);
    snareDrum.Init(sample_rate);
    hiHat.Init(sample_rate);

    // start calling the callback function
    hardware.StartAudio(AudioCallback);

  //  static Leds leds;
   // leds.Init();
    // initialize 595 shift register
    static ShiftOut shiftOut;
    shiftOut.Init();

    static ShiftIn shiftIn;
    shiftIn.Init();

    // Loop forever
    for(;;)
    {
       
        // Set the onboard LED
        hardware.SetLed(led_state);

        // Toggle the LED state for the next time around.
        led_state = !led_state;
               
        shiftOut.Write( 0b00000001 );
        // input is starting peg
        shiftIn.readEightPins(0);
        shiftOut.Write( 0b00000010);
        //readEightPins(8, shiftInPins);
        shiftIn.readEightPins(8);
        shiftOut.Write( 0b00000100 );
        shiftIn.readEightPins(16);
        shiftOut.Write( 0b00001000 );
        shiftIn.readEightPins(24);
        shiftOut.Write( 0b00010000 );
        shiftIn.readEightPins(32);
        shiftOut.Write( 0b00100000 );
        shiftIn.readEightPins(40);
        shiftOut.Write( 0b01000000 );
        shiftIn.readEightPins(48);
        shiftOut.Write( 0b10000000 );
        shiftIn.readEightPins(56);
        //shiftOut.Write( 0b100000000 );
      //  System::Delay(1);
        
    }
}
