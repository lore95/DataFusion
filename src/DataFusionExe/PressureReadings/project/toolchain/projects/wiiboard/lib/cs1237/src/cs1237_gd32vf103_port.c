#include "cs1237_port.h"
#include "cs1237.h"
#include "gd32vf103.h"

void cs1237_port_initialize_pins(uint8_t n_channels, cs1237_channel_t* channels, cs1237_channel_t clock){
	rcu_periph_clock_enable(clock.rcu);
	for(int i = 0; i < n_channels; i++) rcu_periph_clock_enable(channels[i].rcu);
	gpio_init(clock.port, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, clock.pin);
	for(int i = 0; i < n_channels; i++) gpio_init(channels[i].port, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, channels[i].pin);
	gpio_bit_write(clock.port, clock.pin, 0);
	cs1237_install_clock_pin(clock);
}

void cs1237_port_set_pin_value(cs1237_channel_t* ch, uint8_t value){
	gpio_bit_write(ch->port, ch->pin, value);
}

void cs1237_port_pin_direction_out(cs1237_channel_t* ch){
	gpio_init(ch->port, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, ch->pin);
}

void cs1237_port_pin_direction_in(cs1237_channel_t* ch){
	gpio_init(ch->port, GPIO_MODE_IN_FLOATING, GPIO_OSPEED_50MHZ, ch->pin);
}

uint8_t cs1237_port_get_pin_value(cs1237_channel_t* ch){
	return gpio_input_bit_get(ch->port, ch->pin);
}

void cs1237_port_wait_min_455ns(){
	uint64_t start_mtime, delta_mtime;

	// Don't start measuruing until we see an mtime tick
	uint64_t tmp = get_timer_value();
	do {
	start_mtime = get_timer_value();
	} while (start_mtime == tmp);

	do {
	delta_mtime = get_timer_value() - start_mtime;
	}while(delta_mtime <(SystemCoreClock/(4*2*1000000)));
}