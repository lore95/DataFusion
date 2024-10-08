//Save all registers on the stack
.macro DBG_STORE_CONTEXT
    csrrw sp, mscratch, sp
    addi sp, sp, -32*4
    sw x0, 0(sp)
    sw x1, 4*1(sp)
    //sw x2, 4*2(sp)
    sw x3, 4*3(sp)
    sw x4, 4*4(sp)
    sw x5, 4*5(sp)
    sw x6, 4*6(sp)
    sw x7, 4*7(sp)
    sw x8, 4*8(sp)
    sw x9, 4*9(sp)
    sw x10, 4*10(sp)
    sw x11, 4*11(sp)
    sw x12, 4*12(sp)
    sw x13, 4*13(sp)
    sw x14, 4*14(sp)
    sw x15, 4*15(sp)
    sw x16, 4*16(sp)
    sw x17, 4*17(sp)
    sw x18, 4*18(sp)
    sw x19, 4*19(sp)
    sw x20, 4*20(sp)
    sw x21, 4*21(sp)
    sw x22, 4*22(sp)
    sw x23, 4*23(sp)
    sw x24, 4*24(sp)
    sw x25, 4*25(sp)
    sw x26, 4*26(sp)
    sw x27, 4*27(sp)
    sw x28, 4*28(sp)
    sw x29, 4*29(sp)
    sw x30, 4*30(sp)
    sw x31, 4*31(sp)
    csrr x31, mscratch
    sw x31, 4*2(sp)
.endm
    
//Restore all registers from the stack
.macro DBG_RESTORE_CONTEXT
    lw x0, 0(sp)
    lw x1, 4*1(sp)
    //lw x2, 4*2(sp)
    lw x3, 4*3(sp)
    lw x4, 4*4(sp)
    lw x5, 4*5(sp)
    lw x6, 4*6(sp)
    lw x7, 4*7(sp)
    lw x8, 4*8(sp)
    lw x9, 4*9(sp)
    lw x10, 4*10(sp)
    lw x11, 4*11(sp)
    lw x12, 4*12(sp)
    lw x13, 4*13(sp)
    lw x14, 4*14(sp)
    lw x15, 4*15(sp)
    lw x16, 4*16(sp)
    lw x17, 4*17(sp)
    lw x18, 4*18(sp)
    lw x19, 4*19(sp)
    lw x20, 4*20(sp)
    lw x21, 4*21(sp)
    lw x22, 4*22(sp)
    lw x23, 4*23(sp)
    lw x24, 4*24(sp)
    lw x25, 4*25(sp)
    lw x26, 4*26(sp)
    lw x27, 4*27(sp)
    lw x28, 4*28(sp)
    lw x29, 4*29(sp)
    lw x30, 4*30(sp)
    lw x31, 4*31(sp)
    addi sp, sp, 32*4
    csrrw sp, mscratch, sp
.endm

.macro DBG_STORE_CONTEXT_YIELD
    
    addi sp, sp, -32*4
    sw x0, 0(sp)
    sw x1, 4*1(sp)
    //sw x2, 4*2(sp)
    sw x3, 4*3(sp)
    sw x4, 4*4(sp)
    sw x5, 4*5(sp)
    sw x6, 4*6(sp)
    sw x7, 4*7(sp)
    sw x8, 4*8(sp)
    sw x9, 4*9(sp)
    sw x10, 4*10(sp)
    sw x11, 4*11(sp)
    sw x12, 4*12(sp)
    sw x13, 4*13(sp)
    sw x14, 4*14(sp)
    sw x15, 4*15(sp)
    sw x16, 4*16(sp)
    sw x17, 4*17(sp)
    sw x18, 4*18(sp)
    sw x19, 4*19(sp)
    sw x20, 4*20(sp)
    sw x21, 4*21(sp)
    sw x22, 4*22(sp)
    sw x23, 4*23(sp)
    sw x24, 4*24(sp)
    sw x25, 4*25(sp)
    sw x26, 4*26(sp)
    sw x27, 4*27(sp)
    sw x28, 4*28(sp)
    sw x29, 4*29(sp)
    sw x30, 4*30(sp)
    sw x31, 4*31(sp)
    csrrw sp, mscratch, sp
.endm

.macro DBG_RESTORE_CONTEXT_YIELD
    csrrw sp, mscratch, sp
    lw x0, 0(sp)
    lw x1, 4*1(sp)
    //lw x2, 4*2(sp)
    lw x3, 4*3(sp)
    lw x4, 4*4(sp)
    lw x5, 4*5(sp)
    lw x6, 4*6(sp)
    lw x7, 4*7(sp)
    lw x8, 4*8(sp)
    lw x9, 4*9(sp)
    lw x10, 4*10(sp)
    lw x11, 4*11(sp)
    lw x12, 4*12(sp)
    lw x13, 4*13(sp)
    lw x14, 4*14(sp)
    lw x15, 4*15(sp)
    lw x16, 4*16(sp)
    lw x17, 4*17(sp)
    lw x18, 4*18(sp)
    lw x19, 4*19(sp)
    lw x20, 4*20(sp)
    lw x21, 4*21(sp)
    lw x22, 4*22(sp)
    lw x23, 4*23(sp)
    lw x24, 4*24(sp)
    lw x25, 4*25(sp)
    lw x26, 4*26(sp)
    lw x27, 4*27(sp)
    lw x28, 4*28(sp)
    lw x29, 4*29(sp)
    lw x30, 4*30(sp)
    lw x31, 4*31(sp)
    addi sp, sp, 32*4
    
.endm

//Trap handler, this is the entrypoint of the debugging software.
//Hitting a breakpoint will cause an exception which will be caught by the trap handler
.section      .text.trap	
.align 6                             //Trap must be 64byte aligned
.global dbg_trap_entry
dbg_trap_entry:
  DBG_STORE_CONTEXT                 //Save register state
                                     //Set the function arguments
  csrr a0, mcause                    //Cause for trap
  addi a1, sp, 0                     //Stack pointer
  call handle_trap                   //Invoke the debugger
  DBG_RESTORE_CONTEXT              //Restore register state
  mret                               //Return to user program






.global dbg_yield_to_irqs
dbg_yield_to_irqs:
    DBG_STORE_CONTEXT_YIELD               //Put all registers on the stack, and store sp in scratch
    csrr a0, mepc                   //Save trap return pointer
    csrr a1, mtvec                  //Save trap vector
    la a3, dbg_outside_exception    //Return into controlled section to allow interrupts
    la a2, dbg_inside_exception     //Temporary trap vector which lets us come beck here
                                    //instead of to the start of the trap handler
    andi a2, a2, -40                //Mask off boundary, since trap entry needs to be 64B aligned
    ori a2, a2, 3                   //Set exception mode (encoded into the lower bits of the vector)
    csrw mtvec, a2                  //Write back temporary trap vector
    csrw mepc, a3                   //Write back temporary return address
    mret                            //"return" into controlled area with irqs on

dbg_outside_exception:              //Controlled yeild area
    nop                             //A few nops to allow irqs before going back
    nop
    nop
    nop
    nop
    ecall                           //Invokes the exception handler(goes to "dbg_inside_exception")

.align 6
dbg_inside_exception:               //Back inside handler after letting irqs happen
    csrw mepc, a0                   //Restore exception address origin
    csrw mtvec, a1                  //Restore trap handler vector
    DBG_RESTORE_CONTEXT_YIELD             //Swap in sp and restore registers
    ret

 


.end