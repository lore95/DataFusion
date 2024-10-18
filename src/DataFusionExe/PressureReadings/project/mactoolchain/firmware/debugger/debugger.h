#ifndef DEBUGGER_H
#define DEBUGGER_H
#include "gd32vf103.h"
//ASM sources [debugger_asm.c]
void dbg_yield_to_irqs();
void dbg_trap_entry();
void dbg_set_temporary_breakpoint(uintptr_t addr, uint32_t breakpoint_index);

//Debugger Core [ debugger_core.c]
void dbg_init();
void dbg_break();
void dbg_attatch_irq(unsigned int source);
volatile void  __attribute__ ((noinline)) dbg_dummy();

#endif