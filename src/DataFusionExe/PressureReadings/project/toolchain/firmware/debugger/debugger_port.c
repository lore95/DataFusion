#include "gd32vf103.h"
#include "debugger_delay.h"
#include "usb_serial_if.h"
#include "debugger.h"
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
void debug_port_print(char *message, uint32_t size)
{
    _write(0, message, size);
}


/**
 * Receive characters from the debug interface.
 * Should normally just report exactly any characters received from the interface
 * Does not need to care about the contents or whether a messsage is complete.
 * If you are doing something exotic complete messages work well too, but it should
 * respect max_size (most rsp messages should fit in a normal max_size buffer though).
 * */
int debug_port_read(char *buffer, uint32_t max_size)
{
    return read_usb_serial(buffer);
}

int debug_port_init(){
    configure_usb_serial();
    dbg_attatch_irq(USBFS_IRQn);
    dbg_attatch_irq(USBFS_WKUP_IRQn);
    while (!usb_serial_available()) {
        dbg_delay_1ms(100);
    }
}