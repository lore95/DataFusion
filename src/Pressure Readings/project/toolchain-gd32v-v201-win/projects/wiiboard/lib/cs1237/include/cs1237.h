#pragma once
#include "stdint.h"
#include "cs1237_port.h"

#define CS1237_10SPS 0
#define CS1237_40SPS 1
#define CS1237_640SPS 2
#define CS1237_1280SPS 3

#define CS1237_GAIN1 0
#define CS1237_GAIN2 1
#define CS1237_GAIN64 2
#define CS1237_GAIN128 3


int32_t cs1237_read(uint8_t n_channels, cs1237_channel_t* channels);
uint8_t cs1237_data_ready(uint8_t n_channels, cs1237_channel_t* channels);
void cs1237_configure(uint8_t config, uint8_t n_channels, cs1237_channel_t* channels);
uint8_t cs1237_get_configuration(uint8_t n_channels, cs1237_channel_t* channels);

void cs1237_sample_rate_and_gain(uint8_t sample_rate, uint8_t gain, uint8_t n_channels, cs1237_channel_t* channels);
void cs1237_install_clock_pin(cs1237_channel_t pin);