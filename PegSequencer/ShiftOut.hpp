#include "daisy_seed.h"
#include "daisysp.h"

using namespace daisy;
using namespace daisysp;

// defines for peg shift register
#define GPIO_4    {  DSY_GPIOC, 9 }
#define GPIO_5    {  DSY_GPIOC, 8 }
#define GPIO_6    {  DSY_GPIOD, 2 }

class ShiftOut
{
  public:
    ShiftOut() {}
    ~ShiftOut() {}

    void Init();

    void Write(uint8_t data);

  private:

    dsy_gpio_pin pins[3] = {
        GPIO_4,  GPIO_5,  GPIO_6
    };
    dsy_gpio shiftPins[3];

    const uint8_t BITMASK = 0x1;

};
