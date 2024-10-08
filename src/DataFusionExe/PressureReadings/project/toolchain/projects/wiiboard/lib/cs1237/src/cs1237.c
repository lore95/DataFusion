#include "cs1237.h"
#include "cs1237_port.h"
#include "stdint.h"

cs1237_channel_t clock;

void clk(uint8_t value){
	cs1237_port_set_pin_value(&clock, value);
}

void wait(){
	cs1237_port_wait_min_455ns();
}

void drdy_input(uint8_t n_channels, cs1237_channel_t* channels){
	for(int i = 0; i < n_channels; i++) cs1237_port_pin_direction_in(&channels[i]);
}

void drdy_output(uint8_t n_channels, cs1237_channel_t* channels){
	for(int i = 0; i < n_channels; i++) cs1237_port_pin_direction_out(&channels[i]);
}

void set_drdy(uint8_t n_channels, cs1237_channel_t* channels, uint8_t value){
	for(int i = 0; i < n_channels; i++) cs1237_port_set_pin_value(&channels[i], value);
}

void read_bit(uint8_t n_channels, cs1237_channel_t* channels){
	for(int i = 0; i < n_channels; i++) channels[i].value = (channels[i].value << 1) | cs1237_port_get_pin_value(&channels[i]);
}

void cs1237_install_clock_pin(cs1237_channel_t pin){
	clock = pin;
}

//Public functions

int32_t cs1237_read(uint8_t n_channels, cs1237_channel_t* channels){
	
	//Block until data is ready
    clk(0);
	//while(get_drdy(n_channels, channels));
	for(int i = 0; i < n_channels; i++) channels[i].value = 0;
	//Send 27 clocks and read drdy
	for(int i=0; i < 27; i++){
		clk(1);
		wait();
		read_bit(n_channels, channels);
		clk(0);
		wait();
	}

	//Discard last 3 bits
	for(int i = 0; i < n_channels; i++) channels[i].value = channels[i].value >> 3;

	//Convert from 24bit 2s complement to 32bit 2s complement
	for(int i = 0; i < n_channels; i++){
		if(channels[i].value & (1 << 23)){
			//Sign extend
			channels[i].value = (channels[i].value ^ (1 << 23)) - (1 << 23);
		}
	}
	
}

uint8_t cs1237_data_ready(uint8_t n_channels, cs1237_channel_t* channels){
	uint8_t ready = 1;
	for(int i = 0; i < n_channels; i++) if(cs1237_port_get_pin_value(&channels[i])) ready = 0;
	return ready;
}


void cs1237_configure(uint8_t config, uint8_t n_channels, cs1237_channel_t* channels){
	const uint8_t write_reg = 0x65;
	
	//Do a read, discard result
	cs1237_read(n_channels, channels);
	
	//Clk 28, change drdy to output
	clk(1);
	drdy_output(n_channels, channels);
	set_drdy(n_channels, channels, (write_reg >> 6) & 1);
	wait();
	clk(0);
	wait();

	//Clk 29
	clk(1);
	wait();
	clk(0);
	wait();

	//Clk 30-36, specify write register
	for(int i = 0; i < 7; i++){
		clk(1);
		set_drdy(n_channels, channels, (write_reg >> (6 - i)) & 1);
		wait();
		clk(0);
		wait();
	}
    //CLK 37
    clk(1);
	wait();
	clk(0);
	wait();
	//Clk 38-45, write configuration
	for(int i = 0; i < 8; i++){
		clk(1);
		set_drdy(n_channels, channels, (config >> (7 - i)) & 1);
		wait();
		clk(0);
		wait();
	}
	drdy_input(n_channels, channels);
	//Clk 46
	clk(1);
	wait();
	clk(0);
	wait();

    for(int i = 0; i < n_channels; i++) channels[i].config = config;

}



uint8_t cs1237_get_configuration(uint8_t n_channels, cs1237_channel_t* channels){
	const uint8_t read_reg = 0x56;
	uint8_t config = 0;
	//Do a read, discard result
	cs1237_read(n_channels, channels);
	for(int i = 0; i < n_channels; i++) channels[i].value = 0;
	//Clk 28, change drdy to output
	clk(1);
	drdy_output(n_channels, channels);
	set_drdy(n_channels, channels, (read_reg >> 6) & 1);
	wait();
	clk(0);
	wait();

	//Clk 29
	clk(1);
	wait();
	clk(0);
	wait();

	//Clk 30-36, specify read register
	for(int i = 0; i < 7; i++){
		clk(1);
		set_drdy(n_channels, channels, (read_reg >> (6 - i)) & 1);
		wait();
		clk(0);
		wait();
	}
	//Clk 37
	clk(1);
	wait();
	clk(0);
	wait();

	drdy_input(n_channels, channels);
	//Clk 38-45, write configuration
	for(int i = 0; i < 8; i++){
		clk(1);
		wait();
		read_bit(n_channels, channels);
		clk(0);
		wait();
	}
	
	//Clk 46
	clk(1);
	wait();
	clk(0);
	wait();

	for(int i = 0; i < n_channels; i++) channels[i].config = channels[i].value;
	for(int i = 0; i < n_channels; i++) channels[i].value = 0;
}

void cs1237_sample_rate_and_gain(uint8_t sample_rate, uint8_t gain, uint8_t n_channels, cs1237_channel_t* channels){
    uint8_t config = 0x3C;
    config = (config & 0xC3) | ((sample_rate & 0x3) << 4) | ((gain & 0x3) << 2);
    cs1237_configure(config, n_channels, channels);
}


//Porting functions:
// void cs1237_port_set_clock_pin(uint8_t value);
// void cs1237_port_wait_min_455ns();
// void cs1237_set_drdy_as_input();
// void cs1237_set_drdy_as_output();
// uint8_t cs1237_get_drdy_value();
// void cs1237_setup_pins(); (optional, can just set pins up on your own)





