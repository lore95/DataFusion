#include "gd32vf103.h"
//USB includes
#include "usb_serial_if.h"
#include "usb_delay.h"

//ADC includes
#include "cs1237.h"
#include "cs1237_port.h"

//Utils
#include <stdlib.h>
#include <string.h>

//Need to be defined for usning USB-printf
#define USE_USB
#define USE_USB_PRINTF

//How many ADCs that will be used
#define N_ADCS 4

int main(void)
{
    //Timekeeping for performance metrics
    uint64_t time = 0;
    uint64_t last_time = 0;
    uint32_t delta_time = 0;
    uint64_t delta_seconds = 0;
    uint64_t time0 = get_timer_value();

    //Pin assignments for CS1237 chips, clock pin is shared by all chips
    cs1237_channel_t clock_pin;
    clock_pin.pin = GPIO_PIN_0;
    clock_pin.port = GPIOB;
    clock_pin.rcu = RCU_GPIOB;

    //Data pin assignments, one for each chip in use
    cs1237_channel_t data_pins[N_ADCS];
    //All pins are on the same port, but does not have to be
    for(int i = 0; i < N_ADCS; i++){
        data_pins[i].port = GPIOB;
        data_pins[i].rcu = RCU_GPIOB;
    }
    //One data pin for each ADC
    data_pins[0].pin = GPIO_PIN_1;
    data_pins[1].pin = GPIO_PIN_7;
    data_pins[2].pin = GPIO_PIN_8;
    data_pins[3].pin = GPIO_PIN_9;

    //USB setup, puts out a virtual COM port, once setup printf() is available for sending over USB
    uint8_t usb_data_buffer[512] = {0};
    configure_usb_serial();
	while(!usb_serial_available())usb_delay_1ms(100);
	usb_delay_1ms(1000);
    printf("USB connected...\r\n\r");
    usb_delay_1ms(1000);

    //Initialize ADCs
    cs1237_port_initialize_pins(N_ADCS, data_pins, clock_pin);
    usb_delay_1ms(100);

    //Configure samplerate and gain of the ADCs
    //10, 40, 640 and 1280 SPS available
    //Higher the SPS, higher it will be noise
    //Same for gain, gain is useful for getting the wider range available
    //1(0dB), 2(6dB), 64(36dB), 128(42dB) gain available
    //Refer to datasheet for how each setting affects accuracy
    cs1237_sample_rate_and_gain(CS1237_40SPS, CS1237_GAIN128, N_ADCS, data_pins);
    while(1){
        //Wait for new data to be available, polled
        while(!cs1237_data_ready(N_ADCS, data_pins));
        //Read ADC samples (from all initialized ADCs)
        cs1237_read(N_ADCS, data_pins);

        //Measure time between each sample (to measure jitter)
        //delta time value in seconds is delta_time/24,000,000
        //For sample rate in Hz => 1/delta_seconds
        time = get_timer_value() ;
        delta_time = time - last_time;
        last_time = time;
        delta_seconds = delta_time/24000;

        //Print measured data
        printf("Time:%d,V1:%d,V2:%d,V3:%d,V4:%d\r\n\r", delta_time, data_pins[0].value, data_pins[1].value, data_pins[2].value, data_pins[3].value);
        fflush(0);
    }
}