#include "debugger.h"
#include "gd32vf103.h"
#include "debugger_delay.h"
#include "riscv_encoding.h"
#include "debugger_port.h"

#define USE_USB
#define USE_USB_PRINTF

#define DBG_BREAKPOINTS_AVAILABLE 4

enum dbg_states {
    DBG_BREAK,
    DBG_STALL,
    DBG_RUNNING,
    DBG_STEP,
    DBG_CONTINUE
};

typedef struct {
    int32_t x[32];
} registerfile_t;

typedef struct {
    uint32_t tdata[3];
    uint32_t used;
} dbg_breakpoint_config_t;


#define DBG_NUM_INTERRUPTS 87
#define DBG_INTERRUPT_VECTOR_SIZE ((DBG_NUM_INTERRUPTS / 32) + 1)
typedef struct {
    uint32_t state;
    registerfile_t regs;
    uint32_t pc;
    dbg_breakpoint_config_t brk[DBG_BREAKPOINTS_AVAILABLE];
    uint32_t irq_enabled_vector[DBG_INTERRUPT_VECTOR_SIZE];
    uint32_t irq_ignore_vector_mask[DBG_INTERRUPT_VECTOR_SIZE];
} dbg_state_t;

static const char dbg_hex_lookup[] = "0123456789ABCDEF";

static dbg_state_t dbg_state_g = { .state = DBG_RUNNING, 
                                   .regs = {0}, 
                                   .pc = 0, 
                                   .brk = {0},
                                    /* Stored irq state when entering debugger */
                                   .irq_enabled_vector = 0,
                                    /* IRQs that should not be disabled when debugging. 
                                       Primarily used to enable IRQ based link for debugger*/
                                   .irq_ignore_vector_mask = 0 
                                };

void    dbg_message_decoder(dbg_state_t *state, uint8_t *message);
int32_t dbg_check_messages(uint8_t *message_buffer);
void    dbg_reply(const char *buffer);

registerfile_t build_register_state_sp(uintptr_t sp);
uintptr_t      predict_next_instruction(uintptr_t pc, registerfile_t reg_state);
uint8_t        dbg_match(uint8_t *comp, const uint8_t *match_to);
uint8_t*       dbg_parse_hex(char *str, uint32_t max_size, uint32_t *result);
uint8_t        dbg_checksum(const uint8_t *buffer, uint32_t length);

void dbg_store_breakpoint(uint32_t breakpoint_index, dbg_state_t *dbg_state);
void dbg_set_temporary_breakpoint(uintptr_t addr, uint32_t breakpoint_index);
void dbg_restore_breakpoints(dbg_state_t *dbg_state);
void dbg_temporary_disable_breakpoint(uint32_t breakpoint_index);
void dbg_add_breakpoint(uintptr_t addr, dbg_state_t *dbg_state);
void dbg_set_breakpoint(uint32_t breakpoint_index, uintptr_t addr, dbg_state_t *dbg_state);
void dbg_remove_breakpoint(uintptr_t addr, dbg_state_t *dbg_state);

//Portable arch candidate
void dbg_store_irq_state(dbg_state_t *dbg_state);
//Portable arch candidate
void dbg_restore_irq_state(dbg_state_t *dbg_state);

void dbg_set_irq_ignore(dbg_state_t *dbg_state, uint32_t source);

void dbg_attatch_irq(unsigned int source){
    dbg_set_irq_ignore(&dbg_state_g, source);
}

void dbg_break(){
    dbg_state_g.state = DBG_BREAK;
}
void dbg_store_irq_state(dbg_state_t *dbg_state){
    for(int i = 0; i < DBG_INTERRUPT_VECTOR_SIZE; i++){
        dbg_state->irq_enabled_vector[i] = 0;
    }
    uint32_t vector_index = 0;
    uint32_t bit_index = 0;
    for(int i = 0; i < DBG_NUM_INTERRUPTS; i++){
        vector_index = i / 32;
        bit_index = i % 32;
        if(*((uint8_t*)(ECLIC_ADDR_BASE+ECLIC_INT_IE_OFFSET+i*4)) == 1){
            dbg_state->irq_enabled_vector[vector_index] |= (1 << bit_index);
            if(~dbg_state->irq_ignore_vector_mask[vector_index] & (1U << bit_index)) eclic_disable_interrupt(i);
        }
    }
}

void dbg_restore_irq_state(dbg_state_t *dbg_state){
    uint32_t vector_index = 0;
    uint32_t bit_index = 0;
    for(int i = 0; i < DBG_NUM_INTERRUPTS; i++){
        vector_index = i / 32;
        bit_index = i % 32;
        if(dbg_state->irq_enabled_vector[vector_index] & (1U << bit_index)){
            if(~dbg_state->irq_ignore_vector_mask[vector_index] & (1U << bit_index)) eclic_enable_interrupt(i);
        }
    }
}

void dbg_set_irq_ignore(dbg_state_t *dbg_state, uint32_t source){
    dbg_state->irq_ignore_vector_mask[source / 32] |= (1U << (source % 32));
}

volatile void  __attribute__ ((noinline)) dbg_dummy()
{
    volatile int i = 0;
    return;
}
//_dbg_sp comes from linker script
//debugger and standard C runtime has separate stacks so that the debuggers stack is not easily corrupted
//Debugger stack starts at the end of ram
extern int _dbg_sp;
void dbg_init()
{
    uint32_t trap_entry_ptr = (uint32_t)dbg_trap_entry;
    trap_entry_ptr |= 3;
    write_csr(mtvec, trap_entry_ptr);
    write_csr(mscratch, _dbg_sp);
    rcu_periph_clock_enable(RCU_GPIOA);
    rcu_periph_clock_enable(RCU_AF);
    gpio_init(GPIOA, GPIO_MODE_AF_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_11 | GPIO_PIN_12);
    debug_port_init();
    dbg_delay_1ms(3000);
    //Set an artificial breakpoint to invoke the debugger
    void (*dummy_breakpoint)() = dbg_dummy;
    dbg_set_temporary_breakpoint((uintptr_t) dummy_breakpoint, 1);
    dbg_dummy();
}

registerfile_t build_register_state_sp(uintptr_t sp)
{
    registerfile_t regs = {0};
    int32_t *p_sp = (int32_t*)sp;
    for (int i = 0; i < 32; i++) {
        regs.x[i] = p_sp[i];
    }
    //regs.x[2] += 4 * 32;
    return regs;
}
#define DBG_OPCODE_MASK 0x7F
#define DBG_OPCODE_CEXT_MASK 0xE003
#define DBG_OPCODE_STORE 0x23
#define DBG_OPCODE_LOAD 0x03
#define DBG_OPCODE_C_LWSP 0x4002
#define DBG_OPCODE_C_SWSP 0xC002
#define DBG_OPCODE_C_LW   0x4000
#define DBG_OPCODE_C_SW   0xC000
uint32_t instruction_executed_before(uint32_t instruction){
    
    //Load   - true
    //Store  - true
    if((instruction & DBG_OPCODE_MASK) == DBG_OPCODE_STORE) return 1;
    if((instruction & DBG_OPCODE_MASK) == DBG_OPCODE_LOAD) return 1;
    
    //Compressed instructions
    if((instruction & DBG_OPCODE_CEXT_MASK) == DBG_OPCODE_C_LWSP) return 1;
    if((instruction & DBG_OPCODE_CEXT_MASK) == DBG_OPCODE_C_SWSP) return 1;
    if((instruction & DBG_OPCODE_CEXT_MASK) == DBG_OPCODE_C_LW) return 1;
    if((instruction & DBG_OPCODE_CEXT_MASK) == DBG_OPCODE_C_SW) return 1;
    
    //These should not be able to cause side effects, so default to safest behavior
    //auipc  - D/C 
    //lui    - D/C

    //Arith  - false
    //Jump   - false
    //Branch - false
    //CSR    - false

    return 0;
}

uintptr_t predict_next_instruction(uintptr_t pc, registerfile_t reg_state)
{
    uint32_t instruction = *((uint32_t*)pc);
    int32_t immediate = 0;
    uint32_t opcode = 0;
    uint32_t rs1, rs2 = 0;

    if ((instruction & 3) == 3) {
       //Normal instruction
        if ((instruction & 0x63) == 0x63) {
            //Jump instruction
            switch ((instruction >> 2) & 0x7) {
            case 0: //Branch
                immediate = (instruction >> 7) & 0x1E;
                immediate |= (instruction >> 20) & 0x7e0;
                immediate |= (instruction << 4) & 0x800;
                if (instruction & 0x80000000) immediate |= 0xFFFFF000;

                rs1 = (instruction >> 15) & 0x1F;
                rs2 = (instruction >> 20) & 0x1F;

                switch (((instruction >> 12) & 0x7)) {
                case 0: //BEQ
                    if (reg_state.x[rs1] == reg_state.x[rs2]) return pc + immediate;
                    else return pc + 4;
                case 1: //BNE
                    if (reg_state.x[rs1] != reg_state.x[rs2]) return pc + immediate;
                    else return pc + 4;
                case 2: case 3: return pc + 4; //Illegal
                case 4: //BLT
                    if (reg_state.x[rs1] < reg_state.x[rs2]) return pc + immediate;
                    else return pc + 4;
                case 5: //BGE
                    if (reg_state.x[rs1] >= reg_state.x[rs2]) return pc + immediate;
                    else return pc + 4;
                case 6: //BLTU
                    if ((uint32_t)reg_state.x[rs1] < (uint32_t)reg_state.x[rs2]) 
                        return pc + immediate;
                    else return pc + 4;
                case 7: //BGEU
                    if ((uint32_t)reg_state.x[rs1] >= (uint32_t)reg_state.x[rs2]) 
                        return pc + immediate;
                    else return pc + 4;
                }
                return pc + 4;


                break;
            case 3: //JAL
                immediate = (instruction >> 20) & 0x007FE;
                immediate |= (instruction >> 9) & 0x00800;
                immediate |= instruction        & 0xFF000;
                if (instruction & 0x80000000) immediate = (uint32_t) immediate | 0xFFF00000;
                return pc + immediate;
            case 1: //JALR
                immediate = (instruction >> 20) & 0xFFF;
                if (instruction & 0x80000000) immediate |= 0xFFFFF000;
                rs1 = (instruction >> 15) & 0x1F;
                   
                return immediate + reg_state.x[rs1];
            case 4: //CSR, EBREAK, ECALL, FENCE
                    //TODO: Not sure what to do here, will let it fall through for now
            default://Illegal instruction
                return pc + 4;
            }
        }
        if((instruction & 0x00200073) == 0x00200073){
            //URET, MRET, SRET, HRET
            //Return from interrupt, MRET is really the only one that should happen but to be safe.
            switch (instruction >> 24){
                case 0: //URET
                    return read_csr(uepc);
                break;
                case 1: //SRET
                    return read_csr(sepc);
                break;
                case 2: //HRET
                    return read_csr(hepc);
                break;
                case 3: //MRET
                    //TODO: This implementation is wrong... would only get the the current instruction
                    //Assume we are returning from an interrupt
                    //So interrupts should "check in" their state and the debugger will check for any registered interrupts
                    //This WILL add some additional latency to the interrupt service, but make them debuggable.
                    //Can we somehow ignore the added parts??
                    //Using some signal to tell the debugger that is should ignore this part?? maybe "addi x0, x0, 0xdeb"
                    return read_csr(mepc);
                break;
            }

        }
        //Not a jump, continue with next instruction
        return pc + 4;
    }
    else {
        //Compressed instruction
        uint32_t rs1 = 0;
        if ((instruction & 3) == 0) return pc + 2; //No flow control instructions in Q0
        if ((instruction & 3) == 1) { //Quadrant 1
            opcode = (instruction >> 12) & 0xF;
            switch (opcode >> 1) {        
            case 1: case 5: //J//JAL
                immediate  = (instruction >> 1) & 0xB40;
                immediate |= (instruction >> 2) & 0x00E;
                immediate |= (instruction >> 7) & 0x010;
                immediate |= (instruction << 2) & 0x400;
                immediate |= (instruction << 1) & 0x080;
                immediate |= (instruction << 3) & 0x020;
                if(immediate & 0x800) immediate |= 0xFFFFF000;
                return pc + immediate;
                
            case 6: //BEQZ
                immediate  = (instruction >> 4) & 0x100;
                immediate |= (instruction >> 7) & 0x018;
                immediate |= (instruction << 1) & 0x0C0;
                immediate |= (instruction >> 2) & 0x006;
                immediate |= (instruction << 3) & 0x020;
                if (immediate & 0x100) immediate |= 0xFFFFFF00;
                rs1 = ((instruction >> 7) & 7) + 8;
                if (reg_state.x[rs1] == 0) return pc + immediate;
                return pc + 2;

                case 7: //BNEZ
                immediate  = (instruction >> 4) & 0x100;
                immediate |= (instruction >> 7) & 0x018;
                immediate |= (instruction << 1) & 0x0C0;
                immediate |= (instruction >> 2) & 0x006;
                immediate |= (instruction << 3) & 0x020;
                if(immediate & 0x100) immediate |= 0xFFFFFF00;
                rs1 = ((instruction >> 7) & 7) + 8;
                if (reg_state.x[rs1] != 0) return pc + immediate;
                return pc + 2;

                default: //Not a jump continue with next instruction
                    return pc + 2;
            }
        }
        if ((instruction & 3) == 2) { //Quadrant 2
            if (((instruction & 0xE07F) == 0x8002) && ((instruction >> 7) & (0x1f << 7))) {
                rs1 = (instruction >> 7) & 0x1F;

                return reg_state.x[rs1];
            }
        }
        return pc + 2;
    }
}

volatile uintptr_t handle_trap(uintptr_t mcause, uintptr_t sp)
{
    volatile registerfile_t regs = build_register_state_sp(sp);
    dbg_store_irq_state(&dbg_state_g);
    dbg_state_g.regs = regs;
    volatile uintptr_t address = 0;
    uint32_t next_instruction = 0;
    write_csr(tselect, 1);
    address = read_csr(mepc);
    dbg_state_g.pc = address;
    static uint8_t debugger_started = 0;
    if(dbg_state_g.state == DBG_BREAK){
        dbg_temporary_disable_breakpoint(0);
        dbg_state_g.state = DBG_RUNNING;
    }
    switch (dbg_state_g.state) {
        case DBG_RUNNING:
            dbg_state_g.state = DBG_STALL;
            for (int i = 0; i < DBG_BREAKPOINTS_AVAILABLE; i++) {
                dbg_store_breakpoint(i, &dbg_state_g); 
            }
            break;
        case DBG_CONTINUE:
            dbg_restore_breakpoints(&dbg_state_g);
            dbg_state_g.state = DBG_RUNNING;
            dbg_restore_irq_state(&dbg_state_g);
            return 0;
        case DBG_STEP:
            dbg_state_g.state = DBG_STALL;
            //Do nothing
            break;
        case DBG_STALL:
        case DBG_BREAK:
            //Should never get here
            //Does nothing for now, but may send an error code insted
            break;
    }

    for (int i = 0; i < DBG_BREAKPOINTS_AVAILABLE; i++) {
        dbg_temporary_disable_breakpoint(i);
    }

    dbg_delay_1ms(1);

    uint8_t read_buffer[512] = {0};

    dbg_reply("S05");
    dbg_yield_to_irqs();
    dbg_delay_1ms(1);

    next_instruction = predict_next_instruction(address, regs);
    if(instruction_executed_before(*((uint32_t*)address))) write_csr(mepc, next_instruction);
    address = next_instruction;

    
    while (1) {
        if (dbg_check_messages(read_buffer)) {
            dbg_message_decoder(&dbg_state_g, read_buffer);
            if ((dbg_state_g.state == DBG_STEP) || (dbg_state_g.state == DBG_CONTINUE)) {
                dbg_set_temporary_breakpoint(address, 1);
                dbg_yield_to_irqs();
                break;
            }
        }
        dbg_yield_to_irqs();
    }
    dbg_restore_irq_state(&dbg_state_g);
}

#define DEBUG_TIMING_AFTER  (1U << 18)
#define DEBUG_ENABLE_IN_M   (1U << 6)
#define DEBUG_ENABLE_IN_H   (1U << 5)
#define DEBUG_ENABLE_IN_S   (1U << 4)
#define DEBUG_ENABLE_IN_U   (1U << 3)
#define DEBUG_ENABLE_IN_ALL (0xFU << 3)
#define DEBUG_BREAK_EXEC    (1U << 2)
#define DEBUG_BREAK_STORE   (1U << 1)
#define DEBUG_BREAK_LOAD    (1U << 0)
#define DEBUG_BREAK_ALL     (7U << 0)

void dbg_add_breakpoint(uintptr_t addr, dbg_state_t *dbg_state)
{
    for (int i = 0; i < DBG_BREAKPOINTS_AVAILABLE; i++) {
        if (!dbg_state->brk[i].used) {
            dbg_set_breakpoint(i, addr, dbg_state);
            return;
        }
    }
}

void dbg_set_breakpoint(uint32_t breakpoint_index, uintptr_t addr, dbg_state_t *dbg_state)
{
    uint32_t config_break = DEBUG_BREAK_EXEC | DEBUG_ENABLE_IN_ALL | DEBUG_TIMING_AFTER;
    dbg_state->brk[breakpoint_index].tdata[0] = config_break;
    dbg_state->brk[breakpoint_index].tdata[1] = addr;
    dbg_state->brk[breakpoint_index].used = 1;
}

void dbg_remove_breakpoint(uintptr_t addr, dbg_state_t *dbg_state)
{
    uint32_t config_break = DEBUG_BREAK_EXEC | DEBUG_TIMING_AFTER;
    for (int i = 0; i < DBG_BREAKPOINTS_AVAILABLE; i++) {
        if (dbg_state->brk[i].tdata[1] == addr) {
            dbg_state->brk[i].tdata[0] = config_break;
            dbg_state->brk[i].used = 0;
        }
    }
}

void dbg_set_temporary_breakpoint(uintptr_t addr, uint32_t breakpoint_index)
{
    write_csr(tselect, breakpoint_index);
    uint32_t config_break = DEBUG_BREAK_EXEC | DEBUG_ENABLE_IN_ALL | DEBUG_TIMING_AFTER;
    write_csr(tdata1, config_break);
    write_csr(tdata2, addr);
}

void dbg_temporary_disable_breakpoint(uint32_t breakpoint_index)
{
    write_csr(tselect, breakpoint_index);
    uint32_t config_break = DEBUG_BREAK_EXEC | DEBUG_TIMING_AFTER;
    write_csr(tdata1, config_break);
}

void dbg_store_breakpoint(uint32_t breakpoint_index, dbg_state_t *dbg_state)
{
    uint32_t tselect = 0;
    write_csr(tselect, breakpoint_index);
    tselect = read_csr(tselect);

    if (tselect != breakpoint_index) return;

    dbg_state->brk[breakpoint_index].tdata[0] = read_csr(tdata1);
    dbg_state->brk[breakpoint_index].tdata[1] = read_csr(tdata2);
    dbg_state->brk[breakpoint_index].tdata[2] = read_csr(tdata3);
}

void dbg_restore_breakpoints(dbg_state_t *dbg_state)
{
    for (int i = 0; i < DBG_BREAKPOINTS_AVAILABLE; i++) {
        write_csr(tselect, i);
        write_csr(tdata1, dbg_state->brk[i].tdata[0]);
        write_csr(tdata2, dbg_state->brk[i].tdata[1]);
        //write_csr(0x7a3, dbg_state->brk[i].tdata[2]);
    }
}

#define DBG_MESSAGE_BUFFER_SIZE 512

typedef struct {
    uint8_t buffer[DBG_MESSAGE_BUFFER_SIZE];
    uint32_t index;
    uint8_t state;
} dbg_message_containter_t;

uint8_t dbg_checksum(const uint8_t *buffer, uint32_t length)
{
    uint32_t checksum = 0;
    for (int i = 0; i < length; i++) {
        checksum += buffer[i];
    }
    checksum %= 256;
    return (uint8_t) checksum;
}

void dbg_reply(const char *buffer)
{
   
    uint32_t msg_size = 0;
    for(; (msg_size < 1024) && buffer[msg_size]; msg_size++);
    uint8_t checksum = dbg_checksum(buffer, msg_size);
    uint8_t dbg_msg_buffer[512] = {0};
    uint8_t* dbg_msg_ptr = dbg_msg_buffer;
    *dbg_msg_ptr++ = '$';
    while(*buffer && (dbg_msg_ptr < (dbg_msg_buffer + sizeof(dbg_msg_buffer) - 4))) *dbg_msg_ptr++ = *buffer++;
    *dbg_msg_ptr++ = '#';
    *dbg_msg_ptr++ = dbg_hex_lookup[checksum >> 4];
    *dbg_msg_ptr++ = dbg_hex_lookup[checksum & 0xF];
    *dbg_msg_ptr = '\0';
    debug_port_print(dbg_msg_buffer, (uint32_t) (dbg_msg_ptr - dbg_msg_buffer));
    dbg_yield_to_irqs();
    //fflush(0);
    dbg_delay_1ms(1);

}

uint8_t dbg_match(uint8_t *comp, const uint8_t *match_to)
{
    uint32_t match_size = 0;
    for(; (match_size < 1024) && match_to[match_size]; match_size++);
    for (int i = 0; i < match_size; i++) {
        if(comp[i] != match_to[i]) return 0;
    }
    return 1;
}

enum dbg_msg_state {
    DBG_MSG_WAITING,
    DBG_MSG_RECEIVING,
    DBG_MSG_CHKSUM1,
    DBG_MSG_CHKSUM2
};

int32_t dbg_check_messages(uint8_t *message_buffer)
{
    static dbg_message_containter_t buf = {.index = 0, .state = DBG_MSG_WAITING};
    uint8_t temp_buffer[512] = {0};
    uint32_t read_bytes = debug_port_read(temp_buffer, 512);
    uint32_t return_size = 0;
    if (read_bytes) {
        for (int i = 0; i < read_bytes; i++) {
            if (temp_buffer[i] == '$') {
                buf.state = DBG_MSG_RECEIVING;
                buf.index = 0;
            }
            switch (buf.state) {
                case DBG_MSG_RECEIVING:
                    buf.buffer[buf.index++] = temp_buffer[i];
                    if (temp_buffer[i] == '#') {
                        buf.state = DBG_MSG_CHKSUM1;
                    }
                    break;

                case DBG_MSG_CHKSUM1:
                    buf.buffer[buf.index++] = temp_buffer[i];
                    buf.state = DBG_MSG_CHKSUM2;
                    break;

                case DBG_MSG_CHKSUM2:
                    buf.buffer[buf.index++] = temp_buffer[i];
                    buf.state = DBG_MSG_WAITING;
                    
                    for (int i = 0; i < buf.index; i++) {
                        message_buffer[i] = buf.buffer[i];
                    }
                    message_buffer[buf.index] = '\0';
                    return_size = buf.index;
                    buf.index = 0;
                    debug_port_print("+", 1);
                    dbg_yield_to_irqs();
                    break;
            }
        }
    }
    return return_size;
}

uint8_t* dbg_parse_hex(char *str, uint32_t max_size, uint32_t *result)
{
    uint32_t index = 0;
    *result = 0;
    while (((str[index] >= '0') && (str[index] <= '9')) ||  
          ((str[index] >= 'a') && (str[index] <= 'f')) ||  
          ((str[index] >= 'A') && (str[index] <= 'F')) &&
           (max_size > 0)) {
               
        if (str[index] <= '9') *result = (*result * 16) + (str[index] - '0');
        else if (str[index] <= 'F') *result = (*result * 16) + (str[index] - 'A' + 10);
        else if (str[index] <= 'f') *result = (*result * 16) + (str[index] - 'a' + 10);
        index++;
        max_size--;
    }
    return &str[index];
}

void dbg_message_decoder(dbg_state_t *state, uint8_t *message)
{
    uint32_t addr;
    uint32_t length; 
    uint8_t buffer[512];
    uint8_t *next_hex;
    switch (message[1]) {
    case 'q':
        //These packets are used by GDB to understand the capabilities of the remote host.
        if (dbg_match(&message[2], "Supported"))     dbg_reply("PacketSize=109;hwbreak+");
        if (dbg_match(&message[2], "Offsets"))       dbg_reply("Text=0;Data=0;Bss=0;");
        if (dbg_match(&message[2], "Symbol"))        dbg_reply("OK");
        if (dbg_match(&message[2], "C"))             dbg_reply("");
        if (dbg_match(&message[2], "TStatus"))       dbg_reply("");
        if (dbg_match(&message[2], "fThreadInfo"))   dbg_reply("1el");
        if (dbg_match(&message[2], "Attached"))      dbg_reply("0");
        break;
    case 'H':
        //Thread related, does not apply here
        dbg_reply("OK"); 
        break;
    case 'g':
        //Read general registers
        for (int i = 0; i < 32; i++) {
            buffer[i * 8] =       dbg_hex_lookup[(state->regs.x[i] >> 4)  & 0xF];
            buffer[(i * 8) + 1] =   dbg_hex_lookup[(state->regs.x[i] >> 0)  & 0xF];
            buffer[(i * 8) + 2] =   dbg_hex_lookup[(state->regs.x[i] >> 12) & 0xF];
            buffer[(i * 8) + 3] =   dbg_hex_lookup[(state->regs.x[i] >> 8)  & 0xF];
            buffer[(i * 8) + 4] =   dbg_hex_lookup[(state->regs.x[i] >> 20) & 0xF];
            buffer[(i * 8) + 5] =   dbg_hex_lookup[(state->regs.x[i] >> 16) & 0xF];
            buffer[(i * 8) + 6] =   dbg_hex_lookup[(state->regs.x[i] >> 28) & 0xF];
            buffer[(i * 8) + 7] =   dbg_hex_lookup[(state->regs.x[i] >> 24) & 0xF];
        }
        //Program counter also sent with the registers
        buffer[32 * 8] =       dbg_hex_lookup[(state->pc >> 4)  & 0xF];
        buffer[(32 * 8) + 1] =   dbg_hex_lookup[(state->pc >> 0)  & 0xF];
        buffer[(32 * 8) + 2] =   dbg_hex_lookup[(state->pc >> 12) & 0xF];
        buffer[(32 * 8) + 3] =   dbg_hex_lookup[(state->pc >> 8)  & 0xF];
        buffer[(32 * 8) + 4] =   dbg_hex_lookup[(state->pc >> 20) & 0xF];
        buffer[(32 * 8) + 5] =   dbg_hex_lookup[(state->pc >> 16) & 0xF];
        buffer[(32 * 8) + 6] =   dbg_hex_lookup[(state->pc >> 28) & 0xF];
        buffer[(32 * 8) + 7] =   dbg_hex_lookup[(state->pc >> 24) & 0xF];
        buffer[8 * 33] = '\0';
        dbg_reply(buffer);
        break;
    case 'G':
        //todo, this should be pretty easy to implement??
        //Write general registers same encoding as above
        break;
    case 'X':
        //Write binary data
        //Not supported for now, requires escaping $, # and / in the message parser
        //Easier to implement for ram
        break;
    case 'm':
        //encoding: m[addr],[length]
        //Read from addr length bytes
        //Can be less than requested
        next_hex = dbg_parse_hex(&message[2], 8, &addr);
        dbg_parse_hex(&next_hex[1], 8, &length);
        for (int i = 0; i < length; i++) {
            buffer[i * 2] =       dbg_hex_lookup[*(uint8_t*)(addr + i) >> 4];
            buffer[(i * 2) + 1] =   dbg_hex_lookup[*(uint8_t*)(addr + i) & 0xF];
        }
        buffer[length * 2] = '\0';
        dbg_reply(buffer);
        break;
    case 'v':
        //Multiletter command
        if (dbg_match(&message[2], "MustReplyEmpty")) dbg_reply(""); //Are you there?
        if (dbg_match(&message[2], "Cont?")) dbg_reply(""); //Multiprocess continue supported?
        break;
    case 's':
        //Step signal
        state->state = DBG_STEP;
        break;
    case 'c':
        //Continue signal
        state->state = DBG_CONTINUE;
        break;
    case '?':
        //Why did we stop?
        dbg_reply("S05"); //stopped because trap
        break;
    case 'Z':
        //Write breakpoint
        dbg_parse_hex(&message[4], 8, &addr);
        dbg_add_breakpoint(addr, state);
        dbg_reply("OK");
        break;
    case 'z':
        //Remove breakpoint
        dbg_parse_hex(&message[4], 8, &addr);
        dbg_remove_breakpoint(addr, state);
        dbg_reply("OK");
        break;
    default:
        break;
    }
}

/*
dbg_check_interrupts - should check for pending interrupts
dbg_disable_non_debug_interrupts
dbg_restore_interrupts
*/
