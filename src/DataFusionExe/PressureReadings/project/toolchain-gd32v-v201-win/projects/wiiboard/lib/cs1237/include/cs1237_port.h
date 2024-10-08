#pragma once
#include "stdint.h"
#include "cs1237_port.h"
typedef struct {
	uint32_t pin;
	uint32_t port;
	uint32_t rcu;
	int32_t value;
	uint8_t config;
} cs1237_channel_t;

void cs1237_port_initialize_pins(uint8_t n_channels, cs1237_channel_t* channels, cs1237_channel_t clock);

void cs1237_port_set_pin_value(cs1237_channel_t* ch, uint8_t value);

void cs1237_port_pin_direction_out(cs1237_channel_t* ch);

void cs1237_port_pin_direction_in(cs1237_channel_t* ch);

uint8_t cs1237_port_get_pin_value(cs1237_channel_t* ch);

void cs1237_port_wait_min_455ns();