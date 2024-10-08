#pragma once
#include "gd32vf103.h"
/**
 * To use the debugger with a different interface these functions need to be defined
 * This makes it possible to use gdb with various interfaces such as USB, UART, I2C, CAN
 * but possibly also some more exotic ones, maybe debug with local LCD and keypad?
 * */


/**
 * Sends messages to the debugger 
 * This function should send the characters in the message buffer (7 bit clean).
 * Must be able to handle 512 bytes in the message buffer.
 * Is allowed to block, or rely on DMA/IRQs for non-blocking messages.
 * */
void debug_port_print(char *message, uint32_t size);


/**
 * Receive characters from the debug interface.
 * Should normally just report exactly any characters received from the interface
 * Does not need to care about the contents or whether a messsage is complete.
 * If you are doing something exotic complete messages work well too, but it should
 * respect max_size (most rsp messages should fit in a normal max_size buffer though).
 * */
int debug_port_read(char *buffer, uint32_t max_size);

/**
 * Initialization of your chosen interface. Should set up any pins, interrupts and other dependencies.
 * Gets called before main().
 * */
int debug_port_init();


