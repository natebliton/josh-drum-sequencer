#include "ShiftOut.hpp"

using namespace daisysp;

    /*
shiftPins[0] GPIO_4 = 74HC595 SCK pin 11 (clock)
shiftPins[1] GPIO_5 = 74HC595 EN pin 12 (chip enable / latch ) 
shiftPins[2] GPIO_6 = 74HC595 SER pin 14 (data) 
*/

void ShiftOut::Init(){
    //setup the pins as outputs
    for(size_t i = 0; i < 3; i++) {
        shiftPins[i].pin  = pins[i];
        shiftPins[i].mode = DSY_GPIO_MODE_OUTPUT_PP;
        shiftPins[i].pull = DSY_GPIO_NOPULL;
        dsy_gpio_init(&shiftPins[i]);
        dsy_gpio_write(&shiftPins[i], 1);
    }
}

void ShiftOut::Write(uint8_t data) {
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

