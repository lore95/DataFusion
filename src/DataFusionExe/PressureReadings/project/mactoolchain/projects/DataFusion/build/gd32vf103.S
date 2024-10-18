
build/gd32vf103.elf:     file format elf32-littleriscv
build/gd32vf103.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x0800015c

Program Header:
    LOAD off    0x00001000 vaddr 0x08000000 paddr 0x08000000 align 2**12
         filesz 0x00000aa0 memsz 0x00000aa0 flags r-x
    LOAD off    0x00002000 vaddr 0x20000000 paddr 0x08000aa0 align 2**12
         filesz 0x00000068 memsz 0x00000068 flags rw-
    LOAD off    0x00002068 vaddr 0x20000068 paddr 0x20000068 align 2**12
         filesz 0x00000000 memsz 0x00000094 flags rw-
    LOAD off    0x00003000 vaddr 0x20007000 paddr 0x200000fc align 2**12
         filesz 0x00000000 memsz 0x00001000 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         00000254  08000000  08000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .ilalign      00000000  08000254  08000254  00002068  2**0
                  CONTENTS
  2 .text         0000081a  08000280  08000280  00001280  2**6
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .sdata2._global_impure_ptr 00000004  08000a9c  08000a9c  00001a9c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .lalign       00000000  08000aa0  08000aa0  00002068  2**0
                  CONTENTS
  5 .dalign       00000000  20000000  20000000  00002068  2**0
                  CONTENTS
  6 .data         00000068  20000000  08000aa0  00002000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .bss          00000094  20000068  20000068  00002068  2**2
                  ALLOC
  8 .stack        00001000  20007000  200000fc  00003000  2**0
                  ALLOC
  9 .debug_info   00004f7d  00000000  00000000  00002068  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 00001197  00000000  00000000  00006fe5  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc    00001f8c  00000000  00000000  0000817c  2**0
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 00000460  00000000  00000000  0000a108  2**3
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 000004f8  00000000  00000000  0000a568  2**3
                  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00004bb3  00000000  00000000  0000aa60  2**0
                  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00001d43  00000000  00000000  0000f613  2**0
                  CONTENTS, READONLY, DEBUGGING
 16 .comment      00000028  00000000  00000000  00011356  2**0
                  CONTENTS, READONLY
 17 .riscv.attributes 0000002b  00000000  00000000  0001137e  2**0
                  CONTENTS, READONLY
 18 .debug_frame  00000864  00000000  00000000  000113ac  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
08000000 l    d  .init	00000000 .init
08000254 l    d  .ilalign	00000000 .ilalign
08000280 l    d  .text	00000000 .text
08000a9c l    d  .sdata2._global_impure_ptr	00000000 .sdata2._global_impure_ptr
08000aa0 l    d  .lalign	00000000 .lalign
20000000 l    d  .dalign	00000000 .dalign
20000000 l    d  .data	00000000 .data
20000068 l    d  .bss	00000000 .bss
20007000 l    d  .stack	00000000 .stack
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_loc	00000000 .debug_loc
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .riscv.attributes	00000000 .riscv.attributes
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    df *ABS*	00000000 build/start.o
08000000 l       .init	00000000 vector_base
08000182 l       .init	00000000 _start0800
00000000 l    df *ABS*	00000000 _exit.c
00000000 l    df *ABS*	00000000 write_hex.c
00000000 l    df *ABS*	00000000 handlers.c
00000000 l    df *ABS*	00000000 main.c
00000000 l    df *ABS*	00000000 gd32vf103_gpio.c
00000000 l    df *ABS*	00000000 gd32vf103_rcu.c
00000000 l    df *ABS*	00000000 system_gd32vf103.c
00000000 l    df *ABS*	00000000 n200_func.c
00000000 l    df *ABS*	00000000 init.c
00000000 l    df *ABS*	00000000 build/entry.o
08000774 l       .text	00000000 service_loop
00000000 l    df *ABS*	00000000 atexit.c
00000000 l    df *ABS*	00000000 exit.c
00000000 l    df *ABS*	00000000 fini.c
00000000 l    df *ABS*	00000000 init.c
00000000 l    df *ABS*	00000000 syswrite.c
00000000 l    df *ABS*	00000000 writer.c
00000000 l    df *ABS*	00000000 __atexit.c
2000006c l     O .bss	0000008c _global_atexit0
00000000 l    df *ABS*	00000000 __call_atexit.c
00000000 l    df *ABS*	00000000 sys_write.c
00000000 l    df *ABS*	00000000 errno.c
00000000 l    df *ABS*	00000000 impure.c
20000000 l     O .data	00000060 impure_data
00000000 l    df *ABS*	00000000 
08000aa0 l       .sdata2._global_impure_ptr	00000000 __fini_array_end
08000aa0 l       .sdata2._global_impure_ptr	00000000 __fini_array_start
08000aa0 l       .sdata2._global_impure_ptr	00000000 __init_array_end
08000aa0 l       .sdata2._global_impure_ptr	00000000 __preinit_array_end
08000aa0 l       .sdata2._global_impure_ptr	00000000 __init_array_start
08000aa0 l       .sdata2._global_impure_ptr	00000000 __preinit_array_start
20000860 g       .data	00000000 __global_pointer$
08000a8e g     F .text	0000000c __errno
200000f8 g     O .bss	00000004 errno
00001000 g       *ABS*	00000000 __stack_size
0800089e g     F .text	00000016 memcpy
08000622  w    F .text	00000038 handle_trap
08000744  w      .text	00000000 irq_entry
20007000 g       .stack	00000000 _heap_end
08000a9c g     O .sdata2._global_impure_ptr	00000004 _global_impure_ptr
08000834 g     F .text	0000006a __libc_init_array
0800065a g     F .text	0000002c _init
080007fc g     F .text	00000038 __libc_fini_array
08000600  w    F .text	00000022 handle_nmi
080008b4 g     F .text	00000018 write
08000550 g     F .text	0000007c write_hex
20000068 g     O .bss	00000004 _global_atexit
08000992 g     F .text	000000c8 __call_exitprocs
20008000 g       .stack	00000000 _sp
0800015c g     F .init	00000000 _start
080003d0 g     F .text	00000018 rcu_periph_clock_enable
0800024c g       .init	00000000 enable_mcycle_minstret
08000906 g     F .text	0000008c __register_exitproc
20000068 g       .bss	00000000 __bss_start
080002b4 g     F .text	0000006c main
080006c0  w      .text	00000000 trap_entry
08000246 g       .init	00000000 disable_mcycle_minstret
080005ee g     F .text	00000012 eclic_mode_enable
080003c8 g     F .text	00000008 gpio_input_port_get
080003c4 g     F .text	00000004 gpio_port_write
080003e8 g     F .text	0000011c SystemInit
08000686 g     F .text	00000002 _fini
00000000 g       *ABS*	00000000 __dbg_stack_size
080007b6 g     F .text	00000010 atexit
080008cc g     F .text	0000003a _write_r
20000060 g     O .data	00000004 _impure_ptr
20000000 g       .dalign	00000000 _data
08000a5a g     F .text	00000034 _write
20000068 g       .bss	00000000 _edata
20000100 g       .bss	00000000 _end
08000aa0 g       .lalign	00000000 _data_lma
080007c6 g     F .text	00000036 exit
080005cc g     F .text	00000022 eclic_init
08000504 g     F .text	0000004c _exit
08000320 g     F .text	000000a4 gpio_init



Disassembly of section .init:

08000000 <vector_base>:
    .weak  CAN1_RX1_IRQHandler
    .weak  CAN1_EWMC_IRQHandler
    .weak  USBFS_IRQHandler

vector_base:
    j _start
 8000000:	aab1                	j	800015c <_start>
 8000002:	0001                	nop
	...

0800015c <_start>:
	.globl _start
	.type _start,@function

_start:

	csrc CSR_MSTATUS, MSTATUS_MIE
 800015c:	30047073          	csrci	mstatus,8
	/* Jump to logical address first to ensure correct operation of RAM region  */
    la		a0,	_start
 8000160:	00000517          	auipc	a0,0x0
 8000164:	ffc50513          	addi	a0,a0,-4 # 800015c <_start>
    li		a1,	1
 8000168:	4585                	li	a1,1
	slli	a1,	a1, 29
 800016a:	05f6                	slli	a1,a1,0x1d
    bleu	a1, a0, _start0800
 800016c:	00b57b63          	bgeu	a0,a1,8000182 <_start0800>
    srli	a1,	a1, 2
 8000170:	8189                	srli	a1,a1,0x2
    bleu	a1, a0, _start0800
 8000172:	00b57863          	bgeu	a0,a1,8000182 <_start0800>
    la		a0,	_start0800
 8000176:	00000517          	auipc	a0,0x0
 800017a:	00c50513          	addi	a0,a0,12 # 8000182 <_start0800>
    add		a0, a0, a1
 800017e:	952e                	add	a0,a0,a1
	jr      a0
 8000180:	8502                	jr	a0

08000182 <_start0800>:

_start0800:

    /* Set the the NMI base to share with mtvec by setting CSR_MMISC_CTL */
    li t0, 0x200
 8000182:	20000293          	li	t0,512
    csrs CSR_MMISC_CTL, t0
 8000186:	7d02a073          	csrs	0x7d0,t0

	/* Intial the mtvt*/
    la t0, vector_base
 800018a:	00000297          	auipc	t0,0x0
 800018e:	e7628293          	addi	t0,t0,-394 # 8000000 <vector_base>
    csrw CSR_MTVT, t0
 8000192:	30729073          	csrw	mtvt,t0

	/* Intial the mtvt2 and enable it*/
    la t0, irq_entry
 8000196:	00000297          	auipc	t0,0x0
 800019a:	5ae28293          	addi	t0,t0,1454 # 8000744 <irq_entry>
    csrw CSR_MTVT2, t0
 800019e:	7ec29073          	csrw	0x7ec,t0
    csrs CSR_MTVT2, 0x1
 80001a2:	7ec0e073          	csrsi	0x7ec,1

    /* Intial the CSR MTVEC for the Trap ane NMI base addr*/
    la t0, trap_entry
 80001a6:	00000297          	auipc	t0,0x0
 80001aa:	51a28293          	addi	t0,t0,1306 # 80006c0 <trap_entry>
    csrw CSR_MTVEC, t0
 80001ae:	30529073          	csrw	mtvec,t0
	csrw fcsr, x0
#endif

.option push
.option norelax
	la gp, __global_pointer$
 80001b2:	18000197          	auipc	gp,0x18000
 80001b6:	6ae18193          	addi	gp,gp,1710 # 20000860 <__global_pointer$>
.option pop
	la sp, _sp
 80001ba:	18008117          	auipc	sp,0x18008
 80001be:	e4610113          	addi	sp,sp,-442 # 20008000 <_sp>

	/* Load data section */
	la a0, _data_lma
 80001c2:	00001517          	auipc	a0,0x1
 80001c6:	8de50513          	addi	a0,a0,-1826 # 8000aa0 <__fini_array_end>
	la a1, _data
 80001ca:	18000597          	auipc	a1,0x18000
 80001ce:	e3658593          	addi	a1,a1,-458 # 20000000 <_data>
	la a2, _edata
 80001d2:	18000617          	auipc	a2,0x18000
 80001d6:	e9660613          	addi	a2,a2,-362 # 20000068 <_global_atexit>
	bgeu a1, a2, 2f
 80001da:	00c5fa63          	bgeu	a1,a2,80001ee <_start0800+0x6c>
1:
	lw t0, (a0)
 80001de:	00052283          	lw	t0,0(a0)
	sw t0, (a1)
 80001e2:	0055a023          	sw	t0,0(a1)
	addi a0, a0, 4
 80001e6:	0511                	addi	a0,a0,4
	addi a1, a1, 4
 80001e8:	0591                	addi	a1,a1,4
	bltu a1, a2, 1b
 80001ea:	fec5eae3          	bltu	a1,a2,80001de <_start0800+0x5c>
2:
	/* Clear bss section */
	la a0, __bss_start
 80001ee:	18000517          	auipc	a0,0x18000
 80001f2:	e7a50513          	addi	a0,a0,-390 # 20000068 <_global_atexit>
	la a1, _end
 80001f6:	18000597          	auipc	a1,0x18000
 80001fa:	f0a58593          	addi	a1,a1,-246 # 20000100 <_end>
	bgeu a0, a1, 2f
 80001fe:	00b57763          	bgeu	a0,a1,800020c <_start0800+0x8a>
1:
	sw zero, (a0)
 8000202:	00052023          	sw	zero,0(a0)
	addi a0, a0, 4
 8000206:	0511                	addi	a0,a0,4
	bltu a0, a1, 1b
 8000208:	feb56de3          	bltu	a0,a1,8000202 <_start0800+0x80>
2:
	/*enable mcycle_minstret*/
    csrci CSR_MCOUNTINHIBIT, 0x5
 800020c:	3202f073          	csrci	mucounteren,5
	/* Call global constructors */
	la a0, __libc_fini_array
 8000210:	00000517          	auipc	a0,0x0
 8000214:	5ec50513          	addi	a0,a0,1516 # 80007fc <__libc_fini_array>
	call atexit
 8000218:	00000097          	auipc	ra,0x0
 800021c:	59e080e7          	jalr	1438(ra) # 80007b6 <atexit>
	call __libc_init_array
 8000220:	00000097          	auipc	ra,0x0
 8000224:	614080e7          	jalr	1556(ra) # 8000834 <__libc_init_array>


	/* argc = argv = 0 */
	call _init
 8000228:	00000097          	auipc	ra,0x0
 800022c:	432080e7          	jalr	1074(ra) # 800065a <_init>
	li a0, 0
 8000230:	4501                	li	a0,0
	li a1, 0
 8000232:	4581                	li	a1,0
	call main
 8000234:	00000097          	auipc	ra,0x0
 8000238:	080080e7          	jalr	128(ra) # 80002b4 <main>
	tail exit
 800023c:	00000317          	auipc	t1,0x0
 8000240:	58a30067          	jr	1418(t1) # 80007c6 <exit>

1:
	j 1b
 8000244:	a001                	j	8000244 <_start0800+0xc2>

08000246 <disable_mcycle_minstret>:
	
	.global disable_mcycle_minstret
disable_mcycle_minstret:
        csrsi CSR_MCOUNTINHIBIT, 0x5
 8000246:	3202e073          	csrsi	mucounteren,5
	ret
 800024a:	8082                	ret

0800024c <enable_mcycle_minstret>:

	.global enable_mcycle_minstret
enable_mcycle_minstret:
        csrci CSR_MCOUNTINHIBIT, 0x5
 800024c:	3202f073          	csrci	mucounteren,5
	ret
 8000250:	8082                	ret
	...

Disassembly of section .text:

08000280 <main-0x34>:
 8000280:	500a                	0x500a
 8000282:	6f72                	flw	ft10,28(sp)
 8000284:	6d617267          	0x6d617267
 8000288:	6820                	flw	fs0,80(s0)
 800028a:	7361                	lui	t1,0xffff8
 800028c:	6520                	flw	fs0,72(a0)
 800028e:	6978                	flw	fa4,84(a0)
 8000290:	6574                	flw	fa3,76(a0)
 8000292:	2064                	fld	fs1,192(s0)
 8000294:	68746977          	0x68746977
 8000298:	6320                	flw	fs0,64(a4)
 800029a:	3a65646f          	jal	s0,8056640 <__fini_array_end+0x55ba0>
 800029e:	0000                	unimp
 80002a0:	7830                	flw	fa2,112(s0)
 80002a2:	0000                	unimp
 80002a4:	6d6e                	flw	fs10,216(sp)
 80002a6:	0a69                	addi	s4,s4,26
 80002a8:	0000                	unimp
 80002aa:	0000                	unimp
 80002ac:	7274                	flw	fa3,100(a2)
 80002ae:	7061                	c.lui	zero,0xffff8
 80002b0:	000a                	c.slli	zero,0x2
	...

080002b4 <main>:
*/

#include "gd32vf103.h"
#define BITMASK 0xFFFFFFF8

int main(){
 80002b4:	1101                	addi	sp,sp,-32
	uint32_t port = 0;
	uint32_t count = 0;
	rcu_periph_clock_enable(RCU_GPIOB);
 80002b6:	60300513          	li	a0,1539
int main(){
 80002ba:	ce06                	sw	ra,28(sp)
 80002bc:	cc22                	sw	s0,24(sp)
 80002be:	ca26                	sw	s1,20(sp)
 80002c0:	c84a                	sw	s2,16(sp)
	gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);
 80002c2:	40011437          	lui	s0,0x40011
	rcu_periph_clock_enable(RCU_GPIOB);
 80002c6:	00000097          	auipc	ra,0x0
 80002ca:	10a080e7          	jalr	266(ra) # 80003d0 <rcu_periph_clock_enable>
	gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);
 80002ce:	c0040513          	addi	a0,s0,-1024 # 40010c00 <_sp+0x20008c00>
 80002d2:	469d                	li	a3,7
 80002d4:	460d                	li	a2,3
 80002d6:	45c1                	li	a1,16
	while(1){
		count += 1;
		port = gpio_input_port_get(GPIOB);
		gpio_port_write(GPIOB, (port & BITMASK) | (count & (~BITMASK)));
		for(volatile int i = 0; i < 1000000; i++);
 80002d8:	000f4937          	lui	s2,0xf4
	gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);
 80002dc:	00000097          	auipc	ra,0x0
 80002e0:	044080e7          	jalr	68(ra) # 8000320 <gpio_init>
	uint32_t count = 0;
 80002e4:	4481                	li	s1,0
		port = gpio_input_port_get(GPIOB);
 80002e6:	c0040413          	addi	s0,s0,-1024
		for(volatile int i = 0; i < 1000000; i++);
 80002ea:	23f90913          	addi	s2,s2,575 # f423f <__stack_size+0xf323f>
		port = gpio_input_port_get(GPIOB);
 80002ee:	8522                	mv	a0,s0
 80002f0:	00000097          	auipc	ra,0x0
 80002f4:	0d8080e7          	jalr	216(ra) # 80003c8 <gpio_input_port_get>
		count += 1;
 80002f8:	0485                	addi	s1,s1,1
		gpio_port_write(GPIOB, (port & BITMASK) | (count & (~BITMASK)));
 80002fa:	9961                	andi	a0,a0,-8
 80002fc:	0074f593          	andi	a1,s1,7
 8000300:	8dc9                	or	a1,a1,a0
 8000302:	05c2                	slli	a1,a1,0x10
 8000304:	81c1                	srli	a1,a1,0x10
 8000306:	8522                	mv	a0,s0
 8000308:	00000097          	auipc	ra,0x0
 800030c:	0bc080e7          	jalr	188(ra) # 80003c4 <gpio_port_write>
		for(volatile int i = 0; i < 1000000; i++);
 8000310:	c602                	sw	zero,12(sp)
 8000312:	47b2                	lw	a5,12(sp)
 8000314:	fcf94de3          	blt	s2,a5,80002ee <main+0x3a>
 8000318:	47b2                	lw	a5,12(sp)
 800031a:	0785                	addi	a5,a5,1
 800031c:	c63e                	sw	a5,12(sp)
 800031e:	bfd5                	j	8000312 <main+0x5e>

08000320 <gpio_init>:

    /* GPIO mode configuration */
    temp_mode = (uint32_t) (mode & ((uint32_t) 0x0FU));

    /* GPIO speed configuration */
    if (((uint32_t) 0x00U) != ((uint32_t) mode & ((uint32_t) 0x10U))) {
 8000320:	0105f793          	andi	a5,a1,16
    temp_mode = (uint32_t) (mode & ((uint32_t) 0x0FU));
 8000324:	00f5f893          	andi	a7,a1,15
    if (((uint32_t) 0x00U) != ((uint32_t) mode & ((uint32_t) 0x10U))) {
 8000328:	c399                	beqz	a5,800032e <gpio_init+0xe>
        /* output mode max speed:10MHz,2MHz,50MHz */
        temp_mode |= (uint32_t) speed;
 800032a:	00c8e8b3          	or	a7,a7,a2
{
 800032e:	4781                	li	a5,0
    }

    /* configure the eight low port pins with GPIO_CTL0 */
    for (i = 0U; i < 8U; i++) {
        if ((1U << i) & pin) {
 8000330:	4e05                	li	t3,1
            reg = GPIO_CTL0(gpio_periph);

            /* clear the specified pin mode bits */
            reg &= ~GPIO_MODE_MASK(i);
 8000332:	4ebd                	li	t4,15
            /* set the specified pin mode bits */
            reg |= GPIO_MODE_SET(i, temp_mode);

            /* set IPD or IPU */
            if (GPIO_MODE_IPD == mode) {
 8000334:	02800f13          	li	t5,40
                /* reset the corresponding OCTL bit */
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
            } else {
                /* set the corresponding OCTL bit */
                if (GPIO_MODE_IPU == mode) {
 8000338:	04800f93          	li	t6,72
    for (i = 0U; i < 8U; i++) {
 800033c:	4321                	li	t1,8
        if ((1U << i) & pin) {
 800033e:	00fe1633          	sll	a2,t3,a5
 8000342:	8e75                	and	a2,a2,a3
 8000344:	c21d                	beqz	a2,800036a <gpio_init+0x4a>
            reg = GPIO_CTL0(gpio_periph);
 8000346:	00279713          	slli	a4,a5,0x2
 800034a:	00052283          	lw	t0,0(a0)
            reg &= ~GPIO_MODE_MASK(i);
 800034e:	00ee9833          	sll	a6,t4,a4
 8000352:	fff84813          	not	a6,a6
 8000356:	00587833          	and	a6,a6,t0
            reg |= GPIO_MODE_SET(i, temp_mode);
 800035a:	00e89733          	sll	a4,a7,a4
 800035e:	01076733          	or	a4,a4,a6
            if (GPIO_MODE_IPD == mode) {
 8000362:	05e59963          	bne	a1,t5,80003b4 <gpio_init+0x94>
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
 8000366:	c950                	sw	a2,20(a0)
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
                }
            }
            /* set GPIO_CTL0 register */
            GPIO_CTL0(gpio_periph) = reg;
 8000368:	c118                	sw	a4,0(a0)
 800036a:	0785                	addi	a5,a5,1
    for (i = 0U; i < 8U; i++) {
 800036c:	fc6799e3          	bne	a5,t1,800033e <gpio_init+0x1e>
        }
    }
    /* configure the eight high port pins with GPIO_CTL1 */
    for (i = 8U; i < 16U; i++) {
        if ((1U << i) & pin) {
 8000370:	4e05                	li	t3,1
            reg = GPIO_CTL1(gpio_periph);

            /* clear the specified pin mode bits */
            reg &= ~GPIO_MODE_MASK(i - 8U);
 8000372:	4ebd                	li	t4,15
            /* set the specified pin mode bits */
            reg |= GPIO_MODE_SET(i - 8U, temp_mode);

            /* set IPD or IPU */
            if (GPIO_MODE_IPD == mode) {
 8000374:	02800f13          	li	t5,40
                /* reset the corresponding OCTL bit */
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
            } else {
                /* set the corresponding OCTL bit */
                if (GPIO_MODE_IPU == mode) {
 8000378:	04800f93          	li	t6,72
    for (i = 8U; i < 16U; i++) {
 800037c:	4341                	li	t1,16
        if ((1U << i) & pin) {
 800037e:	00fe1633          	sll	a2,t3,a5
 8000382:	8e75                	and	a2,a2,a3
 8000384:	c605                	beqz	a2,80003ac <gpio_init+0x8c>
            reg &= ~GPIO_MODE_MASK(i - 8U);
 8000386:	00279713          	slli	a4,a5,0x2
 800038a:	1701                	addi	a4,a4,-32
            reg = GPIO_CTL1(gpio_periph);
 800038c:	00452283          	lw	t0,4(a0)
            reg &= ~GPIO_MODE_MASK(i - 8U);
 8000390:	00ee9833          	sll	a6,t4,a4
 8000394:	fff84813          	not	a6,a6
 8000398:	00587833          	and	a6,a6,t0
            reg |= GPIO_MODE_SET(i - 8U, temp_mode);
 800039c:	00e89733          	sll	a4,a7,a4
 80003a0:	01076733          	or	a4,a4,a6
            if (GPIO_MODE_IPD == mode) {
 80003a4:	01e59c63          	bne	a1,t5,80003bc <gpio_init+0x9c>
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
 80003a8:	c950                	sw	a2,20(a0)
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
                }
            }
            /* set GPIO_CTL1 register */
            GPIO_CTL1(gpio_periph) = reg;
 80003aa:	c158                	sw	a4,4(a0)
 80003ac:	0785                	addi	a5,a5,1
    for (i = 8U; i < 16U; i++) {
 80003ae:	fc6798e3          	bne	a5,t1,800037e <gpio_init+0x5e>
        }
    }
}
 80003b2:	8082                	ret
                if (GPIO_MODE_IPU == mode) {
 80003b4:	fbf59ae3          	bne	a1,t6,8000368 <gpio_init+0x48>
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
 80003b8:	c910                	sw	a2,16(a0)
 80003ba:	b77d                	j	8000368 <gpio_init+0x48>
                if (GPIO_MODE_IPU == mode) {
 80003bc:	fff597e3          	bne	a1,t6,80003aa <gpio_init+0x8a>
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
 80003c0:	c910                	sw	a2,16(a0)
 80003c2:	b7e5                	j	80003aa <gpio_init+0x8a>

080003c4 <gpio_port_write>:
    \param[out] none
    \retval     none
*/
void gpio_port_write(uint32_t gpio_periph, uint16_t data)
{
    GPIO_OCTL(gpio_periph) = (uint32_t) data;
 80003c4:	c54c                	sw	a1,12(a0)
}
 80003c6:	8082                	ret

080003c8 <gpio_input_port_get>:
    \param[out] none
    \retval     input status of gpio all pins
*/
uint16_t gpio_input_port_get(uint32_t gpio_periph)
{
    return (uint16_t) (GPIO_ISTAT(gpio_periph));
 80003c8:	4508                	lw	a0,8(a0)
}
 80003ca:	0542                	slli	a0,a0,0x10
 80003cc:	8141                	srli	a0,a0,0x10
 80003ce:	8082                	ret

080003d0 <rcu_periph_clock_enable>:
    \param[out] none
    \retval     none
*/
void rcu_periph_clock_enable(rcu_periph_enum periph)
{
    RCU_REG_VAL(periph) |= BIT(RCU_BIT_POS(periph));
 80003d0:	400217b7          	lui	a5,0x40021
 80003d4:	00655713          	srli	a4,a0,0x6
 80003d8:	973e                	add	a4,a4,a5
 80003da:	4314                	lw	a3,0(a4)
 80003dc:	4785                	li	a5,1
 80003de:	00a797b3          	sll	a5,a5,a0
 80003e2:	8fd5                	or	a5,a5,a3
 80003e4:	c31c                	sw	a5,0(a4)
}
 80003e6:	8082                	ret

080003e8 <SystemInit>:
*/
void SystemInit(void)
{
    /* reset the RCC clock configuration to the default reset state */
    /* enable IRC8M */
    RCU_CTL |= RCU_CTL_IRC8MEN;
 80003e8:	400217b7          	lui	a5,0x40021
 80003ec:	4398                	lw	a4,0(a5)
    
    /* reset SCS, AHBPSC, APB1PSC, APB2PSC, ADCPSC, CKOUT0SEL bits */
    RCU_CFG0 &= ~(RCU_CFG0_SCS | RCU_CFG0_AHBPSC | RCU_CFG0_APB1PSC | RCU_CFG0_APB2PSC |
 80003ee:	e0ff06b7          	lui	a3,0xe0ff0
 80003f2:	06b1                	addi	a3,a3,12
    RCU_CTL |= RCU_CTL_IRC8MEN;
 80003f4:	00176713          	ori	a4,a4,1
 80003f8:	c398                	sw	a4,0(a5)
    RCU_CFG0 &= ~(RCU_CFG0_SCS | RCU_CFG0_AHBPSC | RCU_CFG0_APB1PSC | RCU_CFG0_APB2PSC |
 80003fa:	43d8                	lw	a4,4(a5)
 80003fc:	8f75                	and	a4,a4,a3
 80003fe:	c3d8                	sw	a4,4(a5)
                  RCU_CFG0_ADCPSC | RCU_CFG0_ADCPSC_2 | RCU_CFG0_CKOUT0SEL);

    /* reset HXTALEN, CKMEN, PLLEN bits */
    RCU_CTL &= ~(RCU_CTL_HXTALEN | RCU_CTL_CKMEN | RCU_CTL_PLLEN);
 8000400:	4398                	lw	a4,0(a5)
 8000402:	fef706b7          	lui	a3,0xfef70
 8000406:	16fd                	addi	a3,a3,-1
 8000408:	8f75                	and	a4,a4,a3
 800040a:	c398                	sw	a4,0(a5)

    /* Reset HXTALBPS bit */
    RCU_CTL &= ~(RCU_CTL_HXTALBPS);
 800040c:	4398                	lw	a4,0(a5)
 800040e:	fffc06b7          	lui	a3,0xfffc0
 8000412:	16fd                	addi	a3,a3,-1
 8000414:	8f75                	and	a4,a4,a3
 8000416:	c398                	sw	a4,0(a5)

    /* reset PLLSEL, PREDV0_LSB, PLLMF, USBFSPSC bits */
    
    RCU_CFG0 &= ~(RCU_CFG0_PLLSEL | RCU_CFG0_PREDV0_LSB | RCU_CFG0_PLLMF |
 8000418:	43d8                	lw	a4,4(a5)
 800041a:	df0106b7          	lui	a3,0xdf010
 800041e:	16fd                	addi	a3,a3,-1
 8000420:	8f75                	and	a4,a4,a3
 8000422:	c3d8                	sw	a4,4(a5)
                  RCU_CFG0_USBFSPSC | RCU_CFG0_PLLMF_4);
    RCU_CFG1 = 0x00000000U;
 8000424:	0207a623          	sw	zero,44(a5) # 4002102c <_sp+0x2001902c>

    /* Reset HXTALEN, CKMEN, PLLEN, PLL1EN and PLL2EN bits */
    RCU_CTL &= ~(RCU_CTL_PLLEN | RCU_CTL_PLL1EN | RCU_CTL_PLL2EN | RCU_CTL_CKMEN | RCU_CTL_HXTALEN);
 8000428:	4398                	lw	a4,0(a5)
 800042a:	eaf706b7          	lui	a3,0xeaf70
 800042e:	16fd                	addi	a3,a3,-1
 8000430:	8f75                	and	a4,a4,a3
 8000432:	c398                	sw	a4,0(a5)
    /* disable all interrupts */
    RCU_INT = 0x00FF0000U;
 8000434:	00ff0737          	lui	a4,0xff0
 8000438:	c798                	sw	a4,8(a5)
{
    uint32_t timeout   = 0U;
    uint32_t stab_flag = 0U;

    /* enable HXTAL */
    RCU_CTL |= RCU_CTL_HXTALEN;
 800043a:	4394                	lw	a3,0(a5)
 800043c:	6741                	lui	a4,0x10
 800043e:	8ed9                	or	a3,a3,a4
 8000440:	c394                	sw	a3,0(a5)
 8000442:	fff70793          	addi	a5,a4,-1 # ffff <__stack_size+0xefff>

    /* wait until HXTAL is stable or the startup time is longer than HXTAL_STARTUP_TIMEOUT */
    do{
        timeout++;
        stab_flag = (RCU_CTL & RCU_CTL_HXTALSTB);
 8000446:	40021737          	lui	a4,0x40021
 800044a:	4314                	lw	a3,0(a4)
    }while((0U == stab_flag) && (HXTAL_STARTUP_TIMEOUT != timeout));
 800044c:	00e69613          	slli	a2,a3,0xe
 8000450:	00064463          	bltz	a2,8000458 <SystemInit+0x70>
 8000454:	17fd                	addi	a5,a5,-1
 8000456:	fbf5                	bnez	a5,800044a <SystemInit+0x62>

    /* if fail */
    if(0U == (RCU_CTL & RCU_CTL_HXTALSTB)){
 8000458:	400217b7          	lui	a5,0x40021
 800045c:	4398                	lw	a4,0(a5)
 800045e:	00e71693          	slli	a3,a4,0xe
 8000462:	0006c363          	bltz	a3,8000468 <SystemInit+0x80>
        while(1){
        }
 8000466:	a001                	j	8000466 <SystemInit+0x7e>
    }

    /* HXTAL is stable */
    /* AHB = SYSCLK */
    RCU_CFG0 |= RCU_AHB_CKSYS_DIV1;
 8000468:	43d8                	lw	a4,4(a5)
    RCU_CFG0 |= RCU_APB2_CKAHB_DIV1;
    /* APB1 = AHB/2 */
    RCU_CFG0 |= RCU_APB1_CKAHB_DIV2;

    /* CK_PLL = (CK_PREDIV0) * 27 = 108 MHz */ 
    RCU_CFG0 &= ~(RCU_CFG0_PLLMF | RCU_CFG0_PLLMF_4);
 800046a:	dfc406b7          	lui	a3,0xdfc40
 800046e:	16fd                	addi	a3,a3,-1
    RCU_CFG0 |= RCU_AHB_CKSYS_DIV1;
 8000470:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= RCU_APB2_CKAHB_DIV1;
 8000472:	43d8                	lw	a4,4(a5)
 8000474:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= RCU_APB1_CKAHB_DIV2;
 8000476:	43d8                	lw	a4,4(a5)
 8000478:	40076713          	ori	a4,a4,1024
 800047c:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 &= ~(RCU_CFG0_PLLMF | RCU_CFG0_PLLMF_4);
 800047e:	43d8                	lw	a4,4(a5)
 8000480:	8f75                	and	a4,a4,a3
 8000482:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= (RCU_PLLSRC_HXTAL | RCU_PLL_MUL27);
 8000484:	43d8                	lw	a4,4(a5)
 8000486:	202906b7          	lui	a3,0x20290
 800048a:	8f55                	or	a4,a4,a3
 800048c:	c3d8                	sw	a4,4(a5)
		RCU_CTL |= RCU_CTL_PLL2EN;
		/* wait till PLL1 is ready */
		while(0U == (RCU_CTL & RCU_CTL_PLL2STB)){
		}
    }else if(HXTAL_VALUE==8000000){
		RCU_CFG1 &= ~(RCU_CFG1_PREDV0SEL | RCU_CFG1_PREDV1 | RCU_CFG1_PLL1MF | RCU_CFG1_PREDV0);
 800048e:	57d8                	lw	a4,44(a5)
 8000490:	76bd                	lui	a3,0xfffef
 8000492:	8f75                	and	a4,a4,a3
 8000494:	d7d8                	sw	a4,44(a5)
		RCU_CFG1 |= (RCU_PREDV0SRC_HXTAL | RCU_PREDV0_DIV2 | RCU_PREDV1_DIV2 | RCU_PLL1_MUL20 | RCU_PLL2_MUL20);
 8000496:	57d8                	lw	a4,44(a5)
 8000498:	66c1                	lui	a3,0x10
 800049a:	f1168693          	addi	a3,a3,-239 # ff11 <__stack_size+0xef11>
 800049e:	8f55                	or	a4,a4,a3
 80004a0:	d7d8                	sw	a4,44(a5)

		/* enable PLL1 */
		RCU_CTL |= RCU_CTL_PLL1EN;
 80004a2:	4398                	lw	a4,0(a5)
 80004a4:	040006b7          	lui	a3,0x4000
 80004a8:	8f55                	or	a4,a4,a3
 80004aa:	c398                	sw	a4,0(a5)
		/* wait till PLL1 is ready */
		while(0U == (RCU_CTL & RCU_CTL_PLL1STB)){
 80004ac:	400217b7          	lui	a5,0x40021
 80004b0:	4398                	lw	a4,0(a5)
 80004b2:	00471693          	slli	a3,a4,0x4
 80004b6:	fe06dde3          	bgez	a3,80004b0 <SystemInit+0xc8>
		}

		/* enable PLL2 */
		RCU_CTL |= RCU_CTL_PLL2EN;
 80004ba:	4398                	lw	a4,0(a5)
 80004bc:	100006b7          	lui	a3,0x10000
 80004c0:	8f55                	or	a4,a4,a3
 80004c2:	c398                	sw	a4,0(a5)
		/* wait till PLL1 is ready */
		while(0U == (RCU_CTL & RCU_CTL_PLL2STB)){
 80004c4:	400217b7          	lui	a5,0x40021
 80004c8:	4398                	lw	a4,0(a5)
 80004ca:	00271693          	slli	a3,a4,0x2
 80004ce:	fe06dde3          	bgez	a3,80004c8 <SystemInit+0xe0>
		}

    }
    /* enable PLL */
    RCU_CTL |= RCU_CTL_PLLEN;
 80004d2:	4398                	lw	a4,0(a5)
 80004d4:	010006b7          	lui	a3,0x1000
 80004d8:	8f55                	or	a4,a4,a3
 80004da:	c398                	sw	a4,0(a5)

    /* wait until PLL is stable */
    while(0U == (RCU_CTL & RCU_CTL_PLLSTB)){
 80004dc:	400217b7          	lui	a5,0x40021
 80004e0:	4398                	lw	a4,0(a5)
 80004e2:	00671693          	slli	a3,a4,0x6
 80004e6:	fe06dde3          	bgez	a3,80004e0 <SystemInit+0xf8>
    }

    /* select PLL as system clock */
    RCU_CFG0 &= ~RCU_CFG0_SCS;
 80004ea:	43d8                	lw	a4,4(a5)
 80004ec:	9b71                	andi	a4,a4,-4
 80004ee:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= RCU_CKSYSSRC_PLL;
 80004f0:	43d8                	lw	a4,4(a5)
 80004f2:	00276713          	ori	a4,a4,2
 80004f6:	c3d8                	sw	a4,4(a5)

    /* wait until PLL is selected as system clock */
    while(0U == (RCU_CFG0 & RCU_SCSS_PLL)){
 80004f8:	40021737          	lui	a4,0x40021
 80004fc:	435c                	lw	a5,4(a4)
 80004fe:	8ba1                	andi	a5,a5,8
 8000500:	dff5                	beqz	a5,80004fc <SystemInit+0x114>
}
 8000502:	8082                	ret

08000504 <_exit>:

#include "stub.h"


void _exit(int code)
{
 8000504:	7179                	addi	sp,sp,-48
  const char message[] = "\nProgram has exited with code:";
 8000506:	080005b7          	lui	a1,0x8000
{
 800050a:	d422                	sw	s0,40(sp)
  const char message[] = "\nProgram has exited with code:";
 800050c:	467d                	li	a2,31
{
 800050e:	842a                	mv	s0,a0
  const char message[] = "\nProgram has exited with code:";
 8000510:	28058593          	addi	a1,a1,640 # 8000280 <enable_mcycle_minstret+0x34>
 8000514:	850a                	mv	a0,sp
{
 8000516:	d606                	sw	ra,44(sp)
  const char message[] = "\nProgram has exited with code:";
 8000518:	00000097          	auipc	ra,0x0
 800051c:	386080e7          	jalr	902(ra) # 800089e <memcpy>

  write(STDERR_FILENO, message, sizeof(message) - 1);
 8000520:	4679                	li	a2,30
 8000522:	858a                	mv	a1,sp
 8000524:	4509                	li	a0,2
 8000526:	00000097          	auipc	ra,0x0
 800052a:	38e080e7          	jalr	910(ra) # 80008b4 <write>
  write_hex(STDERR_FILENO, code);
 800052e:	85a2                	mv	a1,s0
 8000530:	4509                	li	a0,2
 8000532:	00000097          	auipc	ra,0x0
 8000536:	01e080e7          	jalr	30(ra) # 8000550 <write_hex>
  write(STDERR_FILENO, "\n", 1);
 800053a:	080005b7          	lui	a1,0x8000
 800053e:	4605                	li	a2,1
 8000540:	2b058593          	addi	a1,a1,688 # 80002b0 <enable_mcycle_minstret+0x64>
 8000544:	4509                	li	a0,2
 8000546:	00000097          	auipc	ra,0x0
 800054a:	36e080e7          	jalr	878(ra) # 80008b4 <write>

  for (;;);
 800054e:	a001                	j	800054e <_exit+0x4a>

08000550 <write_hex>:

#include <stdint.h>
#include <unistd.h>

void write_hex(int fd, unsigned long int hex)
{
 8000550:	7179                	addi	sp,sp,-48
 8000552:	ce4e                	sw	s3,28(sp)
 8000554:	89ae                	mv	s3,a1
  uint8_t ii;
  uint8_t jj;
  char towrite;
  write(fd , "0x", 2);
 8000556:	080005b7          	lui	a1,0x8000
 800055a:	4609                	li	a2,2
 800055c:	2a058593          	addi	a1,a1,672 # 80002a0 <enable_mcycle_minstret+0x54>
{
 8000560:	d422                	sw	s0,40(sp)
 8000562:	d226                	sw	s1,36(sp)
 8000564:	d04a                	sw	s2,32(sp)
 8000566:	cc52                	sw	s4,24(sp)
 8000568:	ca56                	sw	s5,20(sp)
 800056a:	d606                	sw	ra,44(sp)
 800056c:	892a                	mv	s2,a0
  write(fd , "0x", 2);
 800056e:	4471                	li	s0,28
 8000570:	00000097          	auipc	ra,0x0
 8000574:	344080e7          	jalr	836(ra) # 80008b4 <write>
  for (ii = sizeof(unsigned long int) * 2 ; ii > 0; ii--) {
    jj = ii - 1;
    uint8_t digit = ((hex & (0xF << (jj*4))) >> (jj*4));
 8000578:	4a3d                	li	s4,15
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 800057a:	4aa5                	li	s5,9
  for (ii = sizeof(unsigned long int) * 2 ; ii > 0; ii--) {
 800057c:	54f1                	li	s1,-4
    uint8_t digit = ((hex & (0xF << (jj*4))) >> (jj*4));
 800057e:	008a17b3          	sll	a5,s4,s0
 8000582:	0137f7b3          	and	a5,a5,s3
 8000586:	0087d7b3          	srl	a5,a5,s0
 800058a:	0ff7f793          	andi	a5,a5,255
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 800058e:	02faec63          	bltu	s5,a5,80005c6 <write_hex+0x76>
 8000592:	03078793          	addi	a5,a5,48 # 40021030 <_sp+0x20019030>
 8000596:	0ff7f793          	andi	a5,a5,255
    write(fd, &towrite, 1);
 800059a:	4605                	li	a2,1
 800059c:	00f10593          	addi	a1,sp,15
 80005a0:	854a                	mv	a0,s2
 80005a2:	1471                	addi	s0,s0,-4
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 80005a4:	00f107a3          	sb	a5,15(sp)
    write(fd, &towrite, 1);
 80005a8:	00000097          	auipc	ra,0x0
 80005ac:	30c080e7          	jalr	780(ra) # 80008b4 <write>
  for (ii = sizeof(unsigned long int) * 2 ; ii > 0; ii--) {
 80005b0:	fc9417e3          	bne	s0,s1,800057e <write_hex+0x2e>
  }
}
 80005b4:	50b2                	lw	ra,44(sp)
 80005b6:	5422                	lw	s0,40(sp)
 80005b8:	5492                	lw	s1,36(sp)
 80005ba:	5902                	lw	s2,32(sp)
 80005bc:	49f2                	lw	s3,28(sp)
 80005be:	4a62                	lw	s4,24(sp)
 80005c0:	4ad2                	lw	s5,20(sp)
 80005c2:	6145                	addi	sp,sp,48
 80005c4:	8082                	ret
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 80005c6:	03778793          	addi	a5,a5,55
 80005ca:	b7f1                	j	8000596 <write_hex+0x46>

080005cc <eclic_init>:
{

  typedef volatile uint32_t vuint32_t;

  /* clear cfg register */
  *(volatile uint8_t*)(ECLIC_ADDR_BASE+ECLIC_CFG_OFFSET)=0;
 80005cc:	d20007b7          	lui	a5,0xd2000
 80005d0:	00078023          	sb	zero,0(a5) # d2000000 <_sp+0xb1ff8000>

  /* clear minthresh register */
  *(volatile uint8_t*)(ECLIC_ADDR_BASE+ECLIC_MTH_OFFSET)=0;
 80005d4:	000785a3          	sb	zero,11(a5)

  /* clear all IP/IE/ATTR/CTRL bits for all interrupt sources */
  vuint32_t * ptr;

  vuint32_t * base = (vuint32_t*)(ECLIC_ADDR_BASE + ECLIC_INT_IP_OFFSET);
  vuint32_t * upper = (vuint32_t*)(base + num_irq*4);
 80005d8:	0512                	slli	a0,a0,0x4
 80005da:	d20017b7          	lui	a5,0xd2001
 80005de:	953e                	add	a0,a0,a5

  for (ptr = base; ptr < upper; ptr=ptr+4){
 80005e0:	00a7e363          	bltu	a5,a0,80005e6 <eclic_init+0x1a>
    *ptr = 0;
  }
}
 80005e4:	8082                	ret
    *ptr = 0;
 80005e6:	0007a023          	sw	zero,0(a5) # d2001000 <_sp+0xb1ff9000>
  for (ptr = base; ptr < upper; ptr=ptr+4){
 80005ea:	07c1                	addi	a5,a5,16
 80005ec:	bfd5                	j	80005e0 <eclic_init+0x14>

080005ee <eclic_mode_enable>:
  uint32_t mtvec_value = read_csr(CSR_MTVEC);
  mtvec_value = mtvec_value & 0xFFFFFFC0;
  mtvec_value = mtvec_value | 0x00000003;
  write_csr(CSR_MTVEC,mtvec_value);
#elif defined ( __GNUC__ )
  uint32_t mtvec_value = read_csr(mtvec);
 80005ee:	305027f3          	csrr	a5,mtvec
  mtvec_value = mtvec_value & 0xFFFFFFC0;
 80005f2:	fc07f793          	andi	a5,a5,-64
  mtvec_value = mtvec_value | 0x00000003;
 80005f6:	0037e793          	ori	a5,a5,3
  write_csr(mtvec,mtvec_value);
 80005fa:	30579073          	csrw	mtvec,a5
#endif

}
 80005fe:	8082                	ret

08000600 <handle_nmi>:
#include "riscv_encoding.h"
#include "n200_func.h"

__attribute__((weak)) uintptr_t handle_nmi()
{
  write(1, "nmi\n", 5);
 8000600:	080005b7          	lui	a1,0x8000
{
 8000604:	1141                	addi	sp,sp,-16
  write(1, "nmi\n", 5);
 8000606:	4615                	li	a2,5
 8000608:	2a458593          	addi	a1,a1,676 # 80002a4 <enable_mcycle_minstret+0x58>
 800060c:	4505                	li	a0,1
{
 800060e:	c606                	sw	ra,12(sp)
  write(1, "nmi\n", 5);
 8000610:	00000097          	auipc	ra,0x0
 8000614:	2a4080e7          	jalr	676(ra) # 80008b4 <write>
  _exit(1);
 8000618:	4505                	li	a0,1
 800061a:	00000097          	auipc	ra,0x0
 800061e:	eea080e7          	jalr	-278(ra) # 8000504 <_exit>

08000622 <handle_trap>:
  return 0;
}


__attribute__((weak)) uintptr_t handle_trap(uintptr_t mcause, uintptr_t sp)
{
 8000622:	1141                	addi	sp,sp,-16
  if((mcause & 0xFFF) == 0xFFF) {
 8000624:	fff54793          	not	a5,a0
{
 8000628:	c422                	sw	s0,8(sp)
 800062a:	c606                	sw	ra,12(sp)
  if((mcause & 0xFFF) == 0xFFF) {
 800062c:	01479713          	slli	a4,a5,0x14
{
 8000630:	842a                	mv	s0,a0
  if((mcause & 0xFFF) == 0xFFF) {
 8000632:	e709                	bnez	a4,800063c <handle_trap+0x1a>
      handle_nmi();
 8000634:	00000097          	auipc	ra,0x0
 8000638:	fcc080e7          	jalr	-52(ra) # 8000600 <handle_nmi>
  }
  write(1, "trap\n", 5);
 800063c:	080005b7          	lui	a1,0x8000
 8000640:	4615                	li	a2,5
 8000642:	2ac58593          	addi	a1,a1,684 # 80002ac <enable_mcycle_minstret+0x60>
 8000646:	4505                	li	a0,1
 8000648:	00000097          	auipc	ra,0x0
 800064c:	26c080e7          	jalr	620(ra) # 80008b4 <write>
  //printf("In trap handler, the mcause is %d\n", mcause);
  //printf("In trap handler, the mepc is 0x%x\n", read_csr(mepc));
  //printf("In trap handler, the mtval is 0x%x\n", read_csr(mbadaddr));
  _exit(mcause);
 8000650:	8522                	mv	a0,s0
 8000652:	00000097          	auipc	ra,0x0
 8000656:	eb2080e7          	jalr	-334(ra) # 8000504 <_exit>

0800065a <_init>:
#include "debugger.h"
#endif

extern uint32_t disable_mcycle_minstret();
void _init()
{
 800065a:	1141                	addi	sp,sp,-16
 800065c:	c606                	sw	ra,12(sp)
	SystemInit();
 800065e:	00000097          	auipc	ra,0x0
 8000662:	d8a080e7          	jalr	-630(ra) # 80003e8 <SystemInit>

	//ECLIC init
	eclic_init(ECLIC_NUM_INTERRUPTS);
 8000666:	05700513          	li	a0,87
 800066a:	00000097          	auipc	ra,0x0
 800066e:	f62080e7          	jalr	-158(ra) # 80005cc <eclic_init>
	eclic_mode_enable();
 8000672:	00000097          	auipc	ra,0x0
 8000676:	f7c080e7          	jalr	-132(ra) # 80005ee <eclic_mode_enable>
#ifdef USE_SOFTWARE_DEBUGGER
	dbg_init();
#endif
	

}
 800067a:	40b2                	lw	ra,12(sp)
 800067c:	0141                	addi	sp,sp,16
	disable_mcycle_minstret();
 800067e:	00000317          	auipc	t1,0x0
 8000682:	bc830067          	jr	-1080(t1) # 8000246 <disable_mcycle_minstret>

08000686 <_fini>:

void _fini()
{
}
 8000686:	8082                	ret
	...

080006c0 <trap_entry>:
trap_entry:
  // Allocate the stack space
 // addi sp, sp, -19*REGBYTES

  // Save the caller saving registers (context)
  SAVE_CONTEXT
 80006c0:	715d                	addi	sp,sp,-80
 80006c2:	c006                	sw	ra,0(sp)
 80006c4:	c212                	sw	tp,4(sp)
 80006c6:	c416                	sw	t0,8(sp)
 80006c8:	c61a                	sw	t1,12(sp)
 80006ca:	c81e                	sw	t2,16(sp)
 80006cc:	ca2a                	sw	a0,20(sp)
 80006ce:	cc2e                	sw	a1,24(sp)
 80006d0:	ce32                	sw	a2,28(sp)
 80006d2:	d036                	sw	a3,32(sp)
 80006d4:	d23a                	sw	a4,36(sp)
 80006d6:	d43e                	sw	a5,40(sp)
 80006d8:	d642                	sw	a6,44(sp)
 80006da:	d846                	sw	a7,48(sp)
 80006dc:	da72                	sw	t3,52(sp)
 80006de:	dc76                	sw	t4,56(sp)
 80006e0:	de7a                	sw	t5,60(sp)
 80006e2:	c0fe                	sw	t6,64(sp)
  // Save the MEPC/Mstatus/Msubm reg
  SAVE_EPC_STATUS
 80006e4:	341022f3          	csrr	t0,mepc
 80006e8:	c096                	sw	t0,64(sp)
 80006ea:	300022f3          	csrr	t0,mstatus
 80006ee:	c296                	sw	t0,68(sp)
 80006f0:	7c4022f3          	csrr	t0,0x7c4
 80006f4:	c496                	sw	t0,72(sp)

     // Set the function argument
  csrr a0, mcause
 80006f6:	34202573          	csrr	a0,mcause
  mv a1, sp
 80006fa:	858a                	mv	a1,sp
     // Call the function
  call handle_trap
 80006fc:	00000097          	auipc	ra,0x0
 8000700:	f26080e7          	jalr	-218(ra) # 8000622 <handle_trap>

  // Restore the MEPC/Mstatus/Msubm reg
  RESTORE_EPC_STATUS
 8000704:	4286                	lw	t0,64(sp)
 8000706:	34129073          	csrw	mepc,t0
 800070a:	4296                	lw	t0,68(sp)
 800070c:	30029073          	csrw	mstatus,t0
 8000710:	42a6                	lw	t0,72(sp)
 8000712:	7c429073          	csrw	0x7c4,t0
  // Restore the caller saving registers (context)
  RESTORE_CONTEXT
 8000716:	4082                	lw	ra,0(sp)
 8000718:	4212                	lw	tp,4(sp)
 800071a:	42a2                	lw	t0,8(sp)
 800071c:	4332                	lw	t1,12(sp)
 800071e:	43c2                	lw	t2,16(sp)
 8000720:	4552                	lw	a0,20(sp)
 8000722:	45e2                	lw	a1,24(sp)
 8000724:	4672                	lw	a2,28(sp)
 8000726:	5682                	lw	a3,32(sp)
 8000728:	5712                	lw	a4,36(sp)
 800072a:	57a2                	lw	a5,40(sp)
 800072c:	5832                	lw	a6,44(sp)
 800072e:	58c2                	lw	a7,48(sp)
 8000730:	5e52                	lw	t3,52(sp)
 8000732:	5ee2                	lw	t4,56(sp)
 8000734:	5f72                	lw	t5,60(sp)
 8000736:	4f86                	lw	t6,64(sp)
 8000738:	6161                	addi	sp,sp,80

  // De-allocate the stack space
 // addi sp, sp, 19*REGBYTES
  // Return to regular code
  mret
 800073a:	30200073          	mret
 800073e:	0000                	unimp
 8000740:	0000                	unimp
	...

08000744 <irq_entry>:
.weak irq_entry
irq_entry: // -------------> This label will be set to MTVT2 register
  // Allocate the stack space
  
  //csrrw sp, mscratch, sp
  SAVE_CONTEXT// Save 16 regs
 8000744:	715d                	addi	sp,sp,-80
 8000746:	c006                	sw	ra,0(sp)
 8000748:	c212                	sw	tp,4(sp)
 800074a:	c416                	sw	t0,8(sp)
 800074c:	c61a                	sw	t1,12(sp)
 800074e:	c81e                	sw	t2,16(sp)
 8000750:	ca2a                	sw	a0,20(sp)
 8000752:	cc2e                	sw	a1,24(sp)
 8000754:	ce32                	sw	a2,28(sp)
 8000756:	d036                	sw	a3,32(sp)
 8000758:	d23a                	sw	a4,36(sp)
 800075a:	d43e                	sw	a5,40(sp)
 800075c:	d642                	sw	a6,44(sp)
 800075e:	d846                	sw	a7,48(sp)
 8000760:	da72                	sw	t3,52(sp)
 8000762:	dc76                	sw	t4,56(sp)
 8000764:	de7a                	sw	t5,60(sp)
 8000766:	c0fe                	sw	t6,64(sp)

  //------This special CSR read operation, which is actually use mcause as operand to directly store it to memory
  csrrwi  x0, CSR_PUSHMCAUSE, 17
 8000768:	7ee8d073          	csrwi	0x7ee,17
  //------This special CSR read operation, which is actually use mepc as operand to directly store it to memory
  csrrwi  x0, CSR_PUSHMEPC, 18
 800076c:	7ef95073          	csrwi	0x7ef,18
  //------This special CSR read operation, which is actually use Msubm as operand to directly store it to memory
  csrrwi  x0, CSR_PUSHMSUBM, 19
 8000770:	7eb9d073          	csrwi	0x7eb,19

08000774 <service_loop>:
 
service_loop:
  //------This special CSR read/write operation, which is actually Claim the CLIC to find its pending highest
  // ID, if the ID is not 0, then automatically enable the mstatus.MIE, and jump to its vector-entry-label, and
  // update the link register 
  csrrw ra, CSR_JALMNXTI, ra 
 8000774:	7ed090f3          	csrrw	ra,0x7ed,ra
  
  //RESTORE_CONTEXT_EXCPT_X5

  #---- Critical section with interrupts disabled -----------------------
  DISABLE_MIE # Disable interrupts 
 8000778:	30047073          	csrci	mstatus,8

  LOAD x5,  19*REGBYTES(sp)
 800077c:	42b6                	lw	t0,76(sp)
  csrw CSR_MSUBM, x5  
 800077e:	7c429073          	csrw	0x7c4,t0
  LOAD x5,  18*REGBYTES(sp)
 8000782:	42a6                	lw	t0,72(sp)
  csrw CSR_MEPC, x5  
 8000784:	34129073          	csrw	mepc,t0
  LOAD x5,  17*REGBYTES(sp)
 8000788:	4296                	lw	t0,68(sp)
  csrw CSR_MCAUSE, x5  
 800078a:	34229073          	csrw	mcause,t0


  RESTORE_CONTEXT
 800078e:	4082                	lw	ra,0(sp)
 8000790:	4212                	lw	tp,4(sp)
 8000792:	42a2                	lw	t0,8(sp)
 8000794:	4332                	lw	t1,12(sp)
 8000796:	43c2                	lw	t2,16(sp)
 8000798:	4552                	lw	a0,20(sp)
 800079a:	45e2                	lw	a1,24(sp)
 800079c:	4672                	lw	a2,28(sp)
 800079e:	5682                	lw	a3,32(sp)
 80007a0:	5712                	lw	a4,36(sp)
 80007a2:	57a2                	lw	a5,40(sp)
 80007a4:	5832                	lw	a6,44(sp)
 80007a6:	58c2                	lw	a7,48(sp)
 80007a8:	5e52                	lw	t3,52(sp)
 80007aa:	5ee2                	lw	t4,56(sp)
 80007ac:	5f72                	lw	t5,60(sp)
 80007ae:	4f86                	lw	t6,64(sp)
 80007b0:	6161                	addi	sp,sp,80
  //csrrw sp, mscratch, sp
  
  // Return to regular code
  mret
 80007b2:	30200073          	mret

080007b6 <atexit>:
 80007b6:	85aa                	mv	a1,a0
 80007b8:	4681                	li	a3,0
 80007ba:	4601                	li	a2,0
 80007bc:	4501                	li	a0,0
 80007be:	00000317          	auipc	t1,0x0
 80007c2:	14830067          	jr	328(t1) # 8000906 <__register_exitproc>

080007c6 <exit>:
 80007c6:	1141                	addi	sp,sp,-16
 80007c8:	c422                	sw	s0,8(sp)
 80007ca:	c606                	sw	ra,12(sp)
 80007cc:	00000797          	auipc	a5,0x0
 80007d0:	1c678793          	addi	a5,a5,454 # 8000992 <__call_exitprocs>
 80007d4:	842a                	mv	s0,a0
 80007d6:	c791                	beqz	a5,80007e2 <exit+0x1c>
 80007d8:	4581                	li	a1,0
 80007da:	00000097          	auipc	ra,0x0
 80007de:	1b8080e7          	jalr	440(ra) # 8000992 <__call_exitprocs>
 80007e2:	00000797          	auipc	a5,0x0
 80007e6:	2ba78793          	addi	a5,a5,698 # 8000a9c <_global_impure_ptr>
 80007ea:	4388                	lw	a0,0(a5)
 80007ec:	551c                	lw	a5,40(a0)
 80007ee:	c391                	beqz	a5,80007f2 <exit+0x2c>
 80007f0:	9782                	jalr	a5
 80007f2:	8522                	mv	a0,s0
 80007f4:	00000097          	auipc	ra,0x0
 80007f8:	d10080e7          	jalr	-752(ra) # 8000504 <_exit>

080007fc <__libc_fini_array>:
 80007fc:	1141                	addi	sp,sp,-16
 80007fe:	00000797          	auipc	a5,0x0
 8000802:	2a278793          	addi	a5,a5,674 # 8000aa0 <__fini_array_end>
 8000806:	c422                	sw	s0,8(sp)
 8000808:	00000417          	auipc	s0,0x0
 800080c:	29840413          	addi	s0,s0,664 # 8000aa0 <__fini_array_end>
 8000810:	8c1d                	sub	s0,s0,a5
 8000812:	c226                	sw	s1,4(sp)
 8000814:	c606                	sw	ra,12(sp)
 8000816:	8409                	srai	s0,s0,0x2
 8000818:	84be                	mv	s1,a5
 800081a:	e411                	bnez	s0,8000826 <__libc_fini_array+0x2a>
 800081c:	40b2                	lw	ra,12(sp)
 800081e:	4422                	lw	s0,8(sp)
 8000820:	4492                	lw	s1,4(sp)
 8000822:	0141                	addi	sp,sp,16
 8000824:	8082                	ret
 8000826:	147d                	addi	s0,s0,-1
 8000828:	00241793          	slli	a5,s0,0x2
 800082c:	97a6                	add	a5,a5,s1
 800082e:	439c                	lw	a5,0(a5)
 8000830:	9782                	jalr	a5
 8000832:	b7e5                	j	800081a <__libc_fini_array+0x1e>

08000834 <__libc_init_array>:
 8000834:	1141                	addi	sp,sp,-16
 8000836:	00000797          	auipc	a5,0x0
 800083a:	26a78793          	addi	a5,a5,618 # 8000aa0 <__fini_array_end>
 800083e:	c422                	sw	s0,8(sp)
 8000840:	00000417          	auipc	s0,0x0
 8000844:	26040413          	addi	s0,s0,608 # 8000aa0 <__fini_array_end>
 8000848:	8c1d                	sub	s0,s0,a5
 800084a:	c226                	sw	s1,4(sp)
 800084c:	c04a                	sw	s2,0(sp)
 800084e:	c606                	sw	ra,12(sp)
 8000850:	8409                	srai	s0,s0,0x2
 8000852:	4481                	li	s1,0
 8000854:	893e                	mv	s2,a5
 8000856:	02849663          	bne	s1,s0,8000882 <__libc_init_array+0x4e>
 800085a:	00000797          	auipc	a5,0x0
 800085e:	24678793          	addi	a5,a5,582 # 8000aa0 <__fini_array_end>
 8000862:	00000417          	auipc	s0,0x0
 8000866:	23e40413          	addi	s0,s0,574 # 8000aa0 <__fini_array_end>
 800086a:	8c1d                	sub	s0,s0,a5
 800086c:	8409                	srai	s0,s0,0x2
 800086e:	4481                	li	s1,0
 8000870:	893e                	mv	s2,a5
 8000872:	00849f63          	bne	s1,s0,8000890 <__libc_init_array+0x5c>
 8000876:	40b2                	lw	ra,12(sp)
 8000878:	4422                	lw	s0,8(sp)
 800087a:	4492                	lw	s1,4(sp)
 800087c:	4902                	lw	s2,0(sp)
 800087e:	0141                	addi	sp,sp,16
 8000880:	8082                	ret
 8000882:	00249793          	slli	a5,s1,0x2
 8000886:	97ca                	add	a5,a5,s2
 8000888:	439c                	lw	a5,0(a5)
 800088a:	0485                	addi	s1,s1,1
 800088c:	9782                	jalr	a5
 800088e:	b7e1                	j	8000856 <__libc_init_array+0x22>
 8000890:	00249793          	slli	a5,s1,0x2
 8000894:	97ca                	add	a5,a5,s2
 8000896:	439c                	lw	a5,0(a5)
 8000898:	0485                	addi	s1,s1,1
 800089a:	9782                	jalr	a5
 800089c:	bfd9                	j	8000872 <__libc_init_array+0x3e>

0800089e <memcpy>:
 800089e:	832a                	mv	t1,a0
 80008a0:	ca09                	beqz	a2,80008b2 <memcpy+0x14>
 80008a2:	00058383          	lb	t2,0(a1)
 80008a6:	00730023          	sb	t2,0(t1)
 80008aa:	167d                	addi	a2,a2,-1
 80008ac:	0305                	addi	t1,t1,1
 80008ae:	0585                	addi	a1,a1,1
 80008b0:	fa6d                	bnez	a2,80008a2 <memcpy+0x4>
 80008b2:	8082                	ret

080008b4 <write>:
 80008b4:	17fff797          	auipc	a5,0x17fff
 80008b8:	7ac78793          	addi	a5,a5,1964 # 20000060 <_impure_ptr>
 80008bc:	86b2                	mv	a3,a2
 80008be:	862e                	mv	a2,a1
 80008c0:	85aa                	mv	a1,a0
 80008c2:	4388                	lw	a0,0(a5)
 80008c4:	00000317          	auipc	t1,0x0
 80008c8:	00830067          	jr	8(t1) # 80008cc <_write_r>

080008cc <_write_r>:
 80008cc:	1141                	addi	sp,sp,-16
 80008ce:	c422                	sw	s0,8(sp)
 80008d0:	842a                	mv	s0,a0
 80008d2:	852e                	mv	a0,a1
 80008d4:	85b2                	mv	a1,a2
 80008d6:	8636                	mv	a2,a3
 80008d8:	18000797          	auipc	a5,0x18000
 80008dc:	8207a023          	sw	zero,-2016(a5) # 200000f8 <errno>
 80008e0:	c606                	sw	ra,12(sp)
 80008e2:	00000097          	auipc	ra,0x0
 80008e6:	178080e7          	jalr	376(ra) # 8000a5a <_write>
 80008ea:	57fd                	li	a5,-1
 80008ec:	00f51963          	bne	a0,a5,80008fe <_write_r+0x32>
 80008f0:	18000797          	auipc	a5,0x18000
 80008f4:	80878793          	addi	a5,a5,-2040 # 200000f8 <errno>
 80008f8:	439c                	lw	a5,0(a5)
 80008fa:	c391                	beqz	a5,80008fe <_write_r+0x32>
 80008fc:	c01c                	sw	a5,0(s0)
 80008fe:	40b2                	lw	ra,12(sp)
 8000900:	4422                	lw	s0,8(sp)
 8000902:	0141                	addi	sp,sp,16
 8000904:	8082                	ret

08000906 <__register_exitproc>:
 8000906:	17fff797          	auipc	a5,0x17fff
 800090a:	76278793          	addi	a5,a5,1890 # 20000068 <_global_atexit>
 800090e:	439c                	lw	a5,0(a5)
 8000910:	8e2a                	mv	t3,a0
 8000912:	e78d                	bnez	a5,800093c <__register_exitproc+0x36>
 8000914:	17fff717          	auipc	a4,0x17fff
 8000918:	75870713          	addi	a4,a4,1880 # 2000006c <_global_atexit0>
 800091c:	17fff797          	auipc	a5,0x17fff
 8000920:	74e7a623          	sw	a4,1868(a5) # 20000068 <_global_atexit>
 8000924:	f7fff517          	auipc	a0,0xf7fff
 8000928:	6dc50513          	addi	a0,a0,1756 # 0 <__dbg_stack_size>
 800092c:	87ba                	mv	a5,a4
 800092e:	c519                	beqz	a0,800093c <__register_exitproc+0x36>
 8000930:	411c                	lw	a5,0(a0)
 8000932:	17fff517          	auipc	a0,0x17fff
 8000936:	7cf52123          	sw	a5,1986(a0) # 200000f4 <_global_atexit0+0x88>
 800093a:	87ba                	mv	a5,a4
 800093c:	43d8                	lw	a4,4(a5)
 800093e:	487d                	li	a6,31
 8000940:	557d                	li	a0,-1
 8000942:	04e84763          	blt	a6,a4,8000990 <__register_exitproc+0x8a>
 8000946:	020e0e63          	beqz	t3,8000982 <__register_exitproc+0x7c>
 800094a:	0887a803          	lw	a6,136(a5)
 800094e:	04080163          	beqz	a6,8000990 <__register_exitproc+0x8a>
 8000952:	00271893          	slli	a7,a4,0x2
 8000956:	98c2                	add	a7,a7,a6
 8000958:	00c8a023          	sw	a2,0(a7)
 800095c:	10082303          	lw	t1,256(a6)
 8000960:	4605                	li	a2,1
 8000962:	00e61633          	sll	a2,a2,a4
 8000966:	00c36333          	or	t1,t1,a2
 800096a:	10682023          	sw	t1,256(a6)
 800096e:	08d8a023          	sw	a3,128(a7)
 8000972:	4689                	li	a3,2
 8000974:	00de1763          	bne	t3,a3,8000982 <__register_exitproc+0x7c>
 8000978:	10482683          	lw	a3,260(a6)
 800097c:	8e55                	or	a2,a2,a3
 800097e:	10c82223          	sw	a2,260(a6)
 8000982:	00170693          	addi	a3,a4,1
 8000986:	070a                	slli	a4,a4,0x2
 8000988:	c3d4                	sw	a3,4(a5)
 800098a:	97ba                	add	a5,a5,a4
 800098c:	c78c                	sw	a1,8(a5)
 800098e:	4501                	li	a0,0
 8000990:	8082                	ret

08000992 <__call_exitprocs>:
 8000992:	7179                	addi	sp,sp,-48
 8000994:	cc52                	sw	s4,24(sp)
 8000996:	ca56                	sw	s5,20(sp)
 8000998:	c85a                	sw	s6,16(sp)
 800099a:	c65e                	sw	s7,12(sp)
 800099c:	d606                	sw	ra,44(sp)
 800099e:	d422                	sw	s0,40(sp)
 80009a0:	d226                	sw	s1,36(sp)
 80009a2:	d04a                	sw	s2,32(sp)
 80009a4:	ce4e                	sw	s3,28(sp)
 80009a6:	c462                	sw	s8,8(sp)
 80009a8:	8b2a                	mv	s6,a0
 80009aa:	8a2e                	mv	s4,a1
 80009ac:	17fffa97          	auipc	s5,0x17fff
 80009b0:	6bca8a93          	addi	s5,s5,1724 # 20000068 <_global_atexit>
 80009b4:	4b85                	li	s7,1
 80009b6:	000aa403          	lw	s0,0(s5)
 80009ba:	c811                	beqz	s0,80009ce <__call_exitprocs+0x3c>
 80009bc:	4044                	lw	s1,4(s0)
 80009be:	08842983          	lw	s3,136(s0)
 80009c2:	fff48913          	addi	s2,s1,-1
 80009c6:	048a                	slli	s1,s1,0x2
 80009c8:	94a2                	add	s1,s1,s0
 80009ca:	00095e63          	bgez	s2,80009e6 <__call_exitprocs+0x54>
 80009ce:	50b2                	lw	ra,44(sp)
 80009d0:	5422                	lw	s0,40(sp)
 80009d2:	5492                	lw	s1,36(sp)
 80009d4:	5902                	lw	s2,32(sp)
 80009d6:	49f2                	lw	s3,28(sp)
 80009d8:	4a62                	lw	s4,24(sp)
 80009da:	4ad2                	lw	s5,20(sp)
 80009dc:	4b42                	lw	s6,16(sp)
 80009de:	4bb2                	lw	s7,12(sp)
 80009e0:	4c22                	lw	s8,8(sp)
 80009e2:	6145                	addi	sp,sp,48
 80009e4:	8082                	ret
 80009e6:	000a0e63          	beqz	s4,8000a02 <__call_exitprocs+0x70>
 80009ea:	00099563          	bnez	s3,80009f4 <__call_exitprocs+0x62>
 80009ee:	197d                	addi	s2,s2,-1
 80009f0:	14f1                	addi	s1,s1,-4
 80009f2:	bfe1                	j	80009ca <__call_exitprocs+0x38>
 80009f4:	00291793          	slli	a5,s2,0x2
 80009f8:	97ce                	add	a5,a5,s3
 80009fa:	0807a783          	lw	a5,128(a5)
 80009fe:	ff4798e3          	bne	a5,s4,80009ee <__call_exitprocs+0x5c>
 8000a02:	4058                	lw	a4,4(s0)
 8000a04:	40dc                	lw	a5,4(s1)
 8000a06:	177d                	addi	a4,a4,-1
 8000a08:	03271863          	bne	a4,s2,8000a38 <__call_exitprocs+0xa6>
 8000a0c:	01242223          	sw	s2,4(s0)
 8000a10:	dff9                	beqz	a5,80009ee <__call_exitprocs+0x5c>
 8000a12:	00442c03          	lw	s8,4(s0)
 8000a16:	00098863          	beqz	s3,8000a26 <__call_exitprocs+0x94>
 8000a1a:	1009a683          	lw	a3,256(s3)
 8000a1e:	012b9733          	sll	a4,s7,s2
 8000a22:	8ef9                	and	a3,a3,a4
 8000a24:	ee89                	bnez	a3,8000a3e <__call_exitprocs+0xac>
 8000a26:	9782                	jalr	a5
 8000a28:	4058                	lw	a4,4(s0)
 8000a2a:	000aa783          	lw	a5,0(s5)
 8000a2e:	f98714e3          	bne	a4,s8,80009b6 <__call_exitprocs+0x24>
 8000a32:	faf40ee3          	beq	s0,a5,80009ee <__call_exitprocs+0x5c>
 8000a36:	b741                	j	80009b6 <__call_exitprocs+0x24>
 8000a38:	0004a223          	sw	zero,4(s1)
 8000a3c:	bfd1                	j	8000a10 <__call_exitprocs+0x7e>
 8000a3e:	00291693          	slli	a3,s2,0x2
 8000a42:	96ce                	add	a3,a3,s3
 8000a44:	428c                	lw	a1,0(a3)
 8000a46:	1049a683          	lw	a3,260(s3)
 8000a4a:	8f75                	and	a4,a4,a3
 8000a4c:	e701                	bnez	a4,8000a54 <__call_exitprocs+0xc2>
 8000a4e:	855a                	mv	a0,s6
 8000a50:	9782                	jalr	a5
 8000a52:	bfd9                	j	8000a28 <__call_exitprocs+0x96>
 8000a54:	852e                	mv	a0,a1
 8000a56:	9782                	jalr	a5
 8000a58:	bfc1                	j	8000a28 <__call_exitprocs+0x96>

08000a5a <_write>:
 8000a5a:	1141                	addi	sp,sp,-16
 8000a5c:	c606                	sw	ra,12(sp)
 8000a5e:	c422                	sw	s0,8(sp)
 8000a60:	4681                	li	a3,0
 8000a62:	4701                	li	a4,0
 8000a64:	4781                	li	a5,0
 8000a66:	04000893          	li	a7,64
 8000a6a:	00000073          	ecall
 8000a6e:	842a                	mv	s0,a0
 8000a70:	00055a63          	bgez	a0,8000a84 <_write+0x2a>
 8000a74:	40800433          	neg	s0,s0
 8000a78:	00000097          	auipc	ra,0x0
 8000a7c:	016080e7          	jalr	22(ra) # 8000a8e <__errno>
 8000a80:	c100                	sw	s0,0(a0)
 8000a82:	547d                	li	s0,-1
 8000a84:	8522                	mv	a0,s0
 8000a86:	40b2                	lw	ra,12(sp)
 8000a88:	4422                	lw	s0,8(sp)
 8000a8a:	0141                	addi	sp,sp,16
 8000a8c:	8082                	ret

08000a8e <__errno>:
 8000a8e:	17fff797          	auipc	a5,0x17fff
 8000a92:	5d278793          	addi	a5,a5,1490 # 20000060 <_impure_ptr>
 8000a96:	4388                	lw	a0,0(a5)
 8000a98:	8082                	ret

build/gd32vf103.elf:     file format elf32-littleriscv
build/gd32vf103.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x0800015c

Program Header:
    LOAD off    0x00001000 vaddr 0x08000000 paddr 0x08000000 align 2**12
         filesz 0x00000aa0 memsz 0x00000aa0 flags r-x
    LOAD off    0x00002000 vaddr 0x20000000 paddr 0x08000aa0 align 2**12
         filesz 0x00000068 memsz 0x00000068 flags rw-
    LOAD off    0x00002068 vaddr 0x20000068 paddr 0x20000068 align 2**12
         filesz 0x00000000 memsz 0x00000094 flags rw-
    LOAD off    0x00003000 vaddr 0x20007000 paddr 0x200000fc align 2**12
         filesz 0x00000000 memsz 0x00001000 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         00000254  08000000  08000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .ilalign      00000000  08000254  08000254  00002068  2**0
                  CONTENTS
  2 .text         0000081a  08000280  08000280  00001280  2**6
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .sdata2._global_impure_ptr 00000004  08000a9c  08000a9c  00001a9c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .lalign       00000000  08000aa0  08000aa0  00002068  2**0
                  CONTENTS
  5 .dalign       00000000  20000000  20000000  00002068  2**0
                  CONTENTS
  6 .data         00000068  20000000  08000aa0  00002000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .bss          00000094  20000068  20000068  00002068  2**2
                  ALLOC
  8 .stack        00001000  20007000  200000fc  00003000  2**0
                  ALLOC
  9 .debug_info   00004f7d  00000000  00000000  00002068  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 00001197  00000000  00000000  00006fe5  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc    00001f8c  00000000  00000000  0000817c  2**0
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 00000460  00000000  00000000  0000a108  2**3
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 000004f8  00000000  00000000  0000a568  2**3
                  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00004bb3  00000000  00000000  0000aa60  2**0
                  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    00001d43  00000000  00000000  0000f613  2**0
                  CONTENTS, READONLY, DEBUGGING
 16 .comment      00000028  00000000  00000000  00011356  2**0
                  CONTENTS, READONLY
 17 .riscv.attributes 0000002b  00000000  00000000  0001137e  2**0
                  CONTENTS, READONLY
 18 .debug_frame  00000864  00000000  00000000  000113ac  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
08000000 l    d  .init	00000000 .init
08000254 l    d  .ilalign	00000000 .ilalign
08000280 l    d  .text	00000000 .text
08000a9c l    d  .sdata2._global_impure_ptr	00000000 .sdata2._global_impure_ptr
08000aa0 l    d  .lalign	00000000 .lalign
20000000 l    d  .dalign	00000000 .dalign
20000000 l    d  .data	00000000 .data
20000068 l    d  .bss	00000000 .bss
20007000 l    d  .stack	00000000 .stack
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_loc	00000000 .debug_loc
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .riscv.attributes	00000000 .riscv.attributes
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    df *ABS*	00000000 build/start.o
08000000 l       .init	00000000 vector_base
08000182 l       .init	00000000 _start0800
00000000 l    df *ABS*	00000000 _exit.c
00000000 l    df *ABS*	00000000 write_hex.c
00000000 l    df *ABS*	00000000 handlers.c
00000000 l    df *ABS*	00000000 main.c
00000000 l    df *ABS*	00000000 gd32vf103_gpio.c
00000000 l    df *ABS*	00000000 gd32vf103_rcu.c
00000000 l    df *ABS*	00000000 system_gd32vf103.c
00000000 l    df *ABS*	00000000 n200_func.c
00000000 l    df *ABS*	00000000 init.c
00000000 l    df *ABS*	00000000 build/entry.o
08000774 l       .text	00000000 service_loop
00000000 l    df *ABS*	00000000 atexit.c
00000000 l    df *ABS*	00000000 exit.c
00000000 l    df *ABS*	00000000 fini.c
00000000 l    df *ABS*	00000000 init.c
00000000 l    df *ABS*	00000000 syswrite.c
00000000 l    df *ABS*	00000000 writer.c
00000000 l    df *ABS*	00000000 __atexit.c
2000006c l     O .bss	0000008c _global_atexit0
00000000 l    df *ABS*	00000000 __call_atexit.c
00000000 l    df *ABS*	00000000 sys_write.c
00000000 l    df *ABS*	00000000 errno.c
00000000 l    df *ABS*	00000000 impure.c
20000000 l     O .data	00000060 impure_data
00000000 l    df *ABS*	00000000 
08000aa0 l       .sdata2._global_impure_ptr	00000000 __fini_array_end
08000aa0 l       .sdata2._global_impure_ptr	00000000 __fini_array_start
08000aa0 l       .sdata2._global_impure_ptr	00000000 __init_array_end
08000aa0 l       .sdata2._global_impure_ptr	00000000 __preinit_array_end
08000aa0 l       .sdata2._global_impure_ptr	00000000 __init_array_start
08000aa0 l       .sdata2._global_impure_ptr	00000000 __preinit_array_start
20000860 g       .data	00000000 __global_pointer$
08000a8e g     F .text	0000000c __errno
200000f8 g     O .bss	00000004 errno
00001000 g       *ABS*	00000000 __stack_size
0800089e g     F .text	00000016 memcpy
08000622  w    F .text	00000038 handle_trap
08000744  w      .text	00000000 irq_entry
20007000 g       .stack	00000000 _heap_end
08000a9c g     O .sdata2._global_impure_ptr	00000004 _global_impure_ptr
08000834 g     F .text	0000006a __libc_init_array
0800065a g     F .text	0000002c _init
080007fc g     F .text	00000038 __libc_fini_array
08000600  w    F .text	00000022 handle_nmi
080008b4 g     F .text	00000018 write
08000550 g     F .text	0000007c write_hex
20000068 g     O .bss	00000004 _global_atexit
08000992 g     F .text	000000c8 __call_exitprocs
20008000 g       .stack	00000000 _sp
0800015c g     F .init	00000000 _start
080003d0 g     F .text	00000018 rcu_periph_clock_enable
0800024c g       .init	00000000 enable_mcycle_minstret
08000906 g     F .text	0000008c __register_exitproc
20000068 g       .bss	00000000 __bss_start
080002b4 g     F .text	0000006c main
080006c0  w      .text	00000000 trap_entry
08000246 g       .init	00000000 disable_mcycle_minstret
080005ee g     F .text	00000012 eclic_mode_enable
080003c8 g     F .text	00000008 gpio_input_port_get
080003c4 g     F .text	00000004 gpio_port_write
080003e8 g     F .text	0000011c SystemInit
08000686 g     F .text	00000002 _fini
00000000 g       *ABS*	00000000 __dbg_stack_size
080007b6 g     F .text	00000010 atexit
080008cc g     F .text	0000003a _write_r
20000060 g     O .data	00000004 _impure_ptr
20000000 g       .dalign	00000000 _data
08000a5a g     F .text	00000034 _write
20000068 g       .bss	00000000 _edata
20000100 g       .bss	00000000 _end
08000aa0 g       .lalign	00000000 _data_lma
080007c6 g     F .text	00000036 exit
080005cc g     F .text	00000022 eclic_init
08000504 g     F .text	0000004c _exit
08000320 g     F .text	000000a4 gpio_init



Disassembly of section .init:

08000000 <vector_base>:
    .weak  CAN1_RX1_IRQHandler
    .weak  CAN1_EWMC_IRQHandler
    .weak  USBFS_IRQHandler

vector_base:
    j _start
 8000000:	aab1                	j	800015c <_start>
 8000002:	0001                	nop
	...

0800015c <_start>:
	.globl _start
	.type _start,@function

_start:

	csrc CSR_MSTATUS, MSTATUS_MIE
 800015c:	30047073          	csrci	mstatus,8
	/* Jump to logical address first to ensure correct operation of RAM region  */
    la		a0,	_start
 8000160:	00000517          	auipc	a0,0x0
 8000164:	ffc50513          	addi	a0,a0,-4 # 800015c <_start>
    li		a1,	1
 8000168:	4585                	li	a1,1
	slli	a1,	a1, 29
 800016a:	05f6                	slli	a1,a1,0x1d
    bleu	a1, a0, _start0800
 800016c:	00b57b63          	bgeu	a0,a1,8000182 <_start0800>
    srli	a1,	a1, 2
 8000170:	8189                	srli	a1,a1,0x2
    bleu	a1, a0, _start0800
 8000172:	00b57863          	bgeu	a0,a1,8000182 <_start0800>
    la		a0,	_start0800
 8000176:	00000517          	auipc	a0,0x0
 800017a:	00c50513          	addi	a0,a0,12 # 8000182 <_start0800>
    add		a0, a0, a1
 800017e:	952e                	add	a0,a0,a1
	jr      a0
 8000180:	8502                	jr	a0

08000182 <_start0800>:

_start0800:

    /* Set the the NMI base to share with mtvec by setting CSR_MMISC_CTL */
    li t0, 0x200
 8000182:	20000293          	li	t0,512
    csrs CSR_MMISC_CTL, t0
 8000186:	7d02a073          	csrs	0x7d0,t0

	/* Intial the mtvt*/
    la t0, vector_base
 800018a:	00000297          	auipc	t0,0x0
 800018e:	e7628293          	addi	t0,t0,-394 # 8000000 <vector_base>
    csrw CSR_MTVT, t0
 8000192:	30729073          	csrw	mtvt,t0

	/* Intial the mtvt2 and enable it*/
    la t0, irq_entry
 8000196:	00000297          	auipc	t0,0x0
 800019a:	5ae28293          	addi	t0,t0,1454 # 8000744 <irq_entry>
    csrw CSR_MTVT2, t0
 800019e:	7ec29073          	csrw	0x7ec,t0
    csrs CSR_MTVT2, 0x1
 80001a2:	7ec0e073          	csrsi	0x7ec,1

    /* Intial the CSR MTVEC for the Trap ane NMI base addr*/
    la t0, trap_entry
 80001a6:	00000297          	auipc	t0,0x0
 80001aa:	51a28293          	addi	t0,t0,1306 # 80006c0 <trap_entry>
    csrw CSR_MTVEC, t0
 80001ae:	30529073          	csrw	mtvec,t0
	csrw fcsr, x0
#endif

.option push
.option norelax
	la gp, __global_pointer$
 80001b2:	18000197          	auipc	gp,0x18000
 80001b6:	6ae18193          	addi	gp,gp,1710 # 20000860 <__global_pointer$>
.option pop
	la sp, _sp
 80001ba:	18008117          	auipc	sp,0x18008
 80001be:	e4610113          	addi	sp,sp,-442 # 20008000 <_sp>

	/* Load data section */
	la a0, _data_lma
 80001c2:	00001517          	auipc	a0,0x1
 80001c6:	8de50513          	addi	a0,a0,-1826 # 8000aa0 <__fini_array_end>
	la a1, _data
 80001ca:	18000597          	auipc	a1,0x18000
 80001ce:	e3658593          	addi	a1,a1,-458 # 20000000 <_data>
	la a2, _edata
 80001d2:	18000617          	auipc	a2,0x18000
 80001d6:	e9660613          	addi	a2,a2,-362 # 20000068 <_global_atexit>
	bgeu a1, a2, 2f
 80001da:	00c5fa63          	bgeu	a1,a2,80001ee <_start0800+0x6c>
1:
	lw t0, (a0)
 80001de:	00052283          	lw	t0,0(a0)
	sw t0, (a1)
 80001e2:	0055a023          	sw	t0,0(a1)
	addi a0, a0, 4
 80001e6:	0511                	addi	a0,a0,4
	addi a1, a1, 4
 80001e8:	0591                	addi	a1,a1,4
	bltu a1, a2, 1b
 80001ea:	fec5eae3          	bltu	a1,a2,80001de <_start0800+0x5c>
2:
	/* Clear bss section */
	la a0, __bss_start
 80001ee:	18000517          	auipc	a0,0x18000
 80001f2:	e7a50513          	addi	a0,a0,-390 # 20000068 <_global_atexit>
	la a1, _end
 80001f6:	18000597          	auipc	a1,0x18000
 80001fa:	f0a58593          	addi	a1,a1,-246 # 20000100 <_end>
	bgeu a0, a1, 2f
 80001fe:	00b57763          	bgeu	a0,a1,800020c <_start0800+0x8a>
1:
	sw zero, (a0)
 8000202:	00052023          	sw	zero,0(a0)
	addi a0, a0, 4
 8000206:	0511                	addi	a0,a0,4
	bltu a0, a1, 1b
 8000208:	feb56de3          	bltu	a0,a1,8000202 <_start0800+0x80>
2:
	/*enable mcycle_minstret*/
    csrci CSR_MCOUNTINHIBIT, 0x5
 800020c:	3202f073          	csrci	mucounteren,5
	/* Call global constructors */
	la a0, __libc_fini_array
 8000210:	00000517          	auipc	a0,0x0
 8000214:	5ec50513          	addi	a0,a0,1516 # 80007fc <__libc_fini_array>
	call atexit
 8000218:	00000097          	auipc	ra,0x0
 800021c:	59e080e7          	jalr	1438(ra) # 80007b6 <atexit>
	call __libc_init_array
 8000220:	00000097          	auipc	ra,0x0
 8000224:	614080e7          	jalr	1556(ra) # 8000834 <__libc_init_array>


	/* argc = argv = 0 */
	call _init
 8000228:	00000097          	auipc	ra,0x0
 800022c:	432080e7          	jalr	1074(ra) # 800065a <_init>
	li a0, 0
 8000230:	4501                	li	a0,0
	li a1, 0
 8000232:	4581                	li	a1,0
	call main
 8000234:	00000097          	auipc	ra,0x0
 8000238:	080080e7          	jalr	128(ra) # 80002b4 <main>
	tail exit
 800023c:	00000317          	auipc	t1,0x0
 8000240:	58a30067          	jr	1418(t1) # 80007c6 <exit>

1:
	j 1b
 8000244:	a001                	j	8000244 <_start0800+0xc2>

08000246 <disable_mcycle_minstret>:
	
	.global disable_mcycle_minstret
disable_mcycle_minstret:
        csrsi CSR_MCOUNTINHIBIT, 0x5
 8000246:	3202e073          	csrsi	mucounteren,5
	ret
 800024a:	8082                	ret

0800024c <enable_mcycle_minstret>:

	.global enable_mcycle_minstret
enable_mcycle_minstret:
        csrci CSR_MCOUNTINHIBIT, 0x5
 800024c:	3202f073          	csrci	mucounteren,5
	ret
 8000250:	8082                	ret
	...

Disassembly of section .text:

08000280 <main-0x34>:
 8000280:	500a                	0x500a
 8000282:	6f72                	flw	ft10,28(sp)
 8000284:	6d617267          	0x6d617267
 8000288:	6820                	flw	fs0,80(s0)
 800028a:	7361                	lui	t1,0xffff8
 800028c:	6520                	flw	fs0,72(a0)
 800028e:	6978                	flw	fa4,84(a0)
 8000290:	6574                	flw	fa3,76(a0)
 8000292:	2064                	fld	fs1,192(s0)
 8000294:	68746977          	0x68746977
 8000298:	6320                	flw	fs0,64(a4)
 800029a:	3a65646f          	jal	s0,8056640 <__fini_array_end+0x55ba0>
 800029e:	0000                	unimp
 80002a0:	7830                	flw	fa2,112(s0)
 80002a2:	0000                	unimp
 80002a4:	6d6e                	flw	fs10,216(sp)
 80002a6:	0a69                	addi	s4,s4,26
 80002a8:	0000                	unimp
 80002aa:	0000                	unimp
 80002ac:	7274                	flw	fa3,100(a2)
 80002ae:	7061                	c.lui	zero,0xffff8
 80002b0:	000a                	c.slli	zero,0x2
	...

080002b4 <main>:
*/

#include "gd32vf103.h"
#define BITMASK 0xFFFFFFF8

int main(){
 80002b4:	1101                	addi	sp,sp,-32
	uint32_t port = 0;
	uint32_t count = 0;
	rcu_periph_clock_enable(RCU_GPIOB);
 80002b6:	60300513          	li	a0,1539
int main(){
 80002ba:	ce06                	sw	ra,28(sp)
 80002bc:	cc22                	sw	s0,24(sp)
 80002be:	ca26                	sw	s1,20(sp)
 80002c0:	c84a                	sw	s2,16(sp)
	gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);
 80002c2:	40011437          	lui	s0,0x40011
	rcu_periph_clock_enable(RCU_GPIOB);
 80002c6:	00000097          	auipc	ra,0x0
 80002ca:	10a080e7          	jalr	266(ra) # 80003d0 <rcu_periph_clock_enable>
	gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);
 80002ce:	c0040513          	addi	a0,s0,-1024 # 40010c00 <_sp+0x20008c00>
 80002d2:	469d                	li	a3,7
 80002d4:	460d                	li	a2,3
 80002d6:	45c1                	li	a1,16
	while(1){
		count += 1;
		port = gpio_input_port_get(GPIOB);
		gpio_port_write(GPIOB, (port & BITMASK) | (count & (~BITMASK)));
		for(volatile int i = 0; i < 1000000; i++);
 80002d8:	000f4937          	lui	s2,0xf4
	gpio_init(GPIOB, GPIO_MODE_OUT_PP, GPIO_OSPEED_50MHZ, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);
 80002dc:	00000097          	auipc	ra,0x0
 80002e0:	044080e7          	jalr	68(ra) # 8000320 <gpio_init>
	uint32_t count = 0;
 80002e4:	4481                	li	s1,0
		port = gpio_input_port_get(GPIOB);
 80002e6:	c0040413          	addi	s0,s0,-1024
		for(volatile int i = 0; i < 1000000; i++);
 80002ea:	23f90913          	addi	s2,s2,575 # f423f <__stack_size+0xf323f>
		port = gpio_input_port_get(GPIOB);
 80002ee:	8522                	mv	a0,s0
 80002f0:	00000097          	auipc	ra,0x0
 80002f4:	0d8080e7          	jalr	216(ra) # 80003c8 <gpio_input_port_get>
		count += 1;
 80002f8:	0485                	addi	s1,s1,1
		gpio_port_write(GPIOB, (port & BITMASK) | (count & (~BITMASK)));
 80002fa:	9961                	andi	a0,a0,-8
 80002fc:	0074f593          	andi	a1,s1,7
 8000300:	8dc9                	or	a1,a1,a0
 8000302:	05c2                	slli	a1,a1,0x10
 8000304:	81c1                	srli	a1,a1,0x10
 8000306:	8522                	mv	a0,s0
 8000308:	00000097          	auipc	ra,0x0
 800030c:	0bc080e7          	jalr	188(ra) # 80003c4 <gpio_port_write>
		for(volatile int i = 0; i < 1000000; i++);
 8000310:	c602                	sw	zero,12(sp)
 8000312:	47b2                	lw	a5,12(sp)
 8000314:	fcf94de3          	blt	s2,a5,80002ee <main+0x3a>
 8000318:	47b2                	lw	a5,12(sp)
 800031a:	0785                	addi	a5,a5,1
 800031c:	c63e                	sw	a5,12(sp)
 800031e:	bfd5                	j	8000312 <main+0x5e>

08000320 <gpio_init>:

    /* GPIO mode configuration */
    temp_mode = (uint32_t) (mode & ((uint32_t) 0x0FU));

    /* GPIO speed configuration */
    if (((uint32_t) 0x00U) != ((uint32_t) mode & ((uint32_t) 0x10U))) {
 8000320:	0105f793          	andi	a5,a1,16
    temp_mode = (uint32_t) (mode & ((uint32_t) 0x0FU));
 8000324:	00f5f893          	andi	a7,a1,15
    if (((uint32_t) 0x00U) != ((uint32_t) mode & ((uint32_t) 0x10U))) {
 8000328:	c399                	beqz	a5,800032e <gpio_init+0xe>
        /* output mode max speed:10MHz,2MHz,50MHz */
        temp_mode |= (uint32_t) speed;
 800032a:	00c8e8b3          	or	a7,a7,a2
{
 800032e:	4781                	li	a5,0
    }

    /* configure the eight low port pins with GPIO_CTL0 */
    for (i = 0U; i < 8U; i++) {
        if ((1U << i) & pin) {
 8000330:	4e05                	li	t3,1
            reg = GPIO_CTL0(gpio_periph);

            /* clear the specified pin mode bits */
            reg &= ~GPIO_MODE_MASK(i);
 8000332:	4ebd                	li	t4,15
            /* set the specified pin mode bits */
            reg |= GPIO_MODE_SET(i, temp_mode);

            /* set IPD or IPU */
            if (GPIO_MODE_IPD == mode) {
 8000334:	02800f13          	li	t5,40
                /* reset the corresponding OCTL bit */
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
            } else {
                /* set the corresponding OCTL bit */
                if (GPIO_MODE_IPU == mode) {
 8000338:	04800f93          	li	t6,72
    for (i = 0U; i < 8U; i++) {
 800033c:	4321                	li	t1,8
        if ((1U << i) & pin) {
 800033e:	00fe1633          	sll	a2,t3,a5
 8000342:	8e75                	and	a2,a2,a3
 8000344:	c21d                	beqz	a2,800036a <gpio_init+0x4a>
            reg = GPIO_CTL0(gpio_periph);
 8000346:	00279713          	slli	a4,a5,0x2
 800034a:	00052283          	lw	t0,0(a0)
            reg &= ~GPIO_MODE_MASK(i);
 800034e:	00ee9833          	sll	a6,t4,a4
 8000352:	fff84813          	not	a6,a6
 8000356:	00587833          	and	a6,a6,t0
            reg |= GPIO_MODE_SET(i, temp_mode);
 800035a:	00e89733          	sll	a4,a7,a4
 800035e:	01076733          	or	a4,a4,a6
            if (GPIO_MODE_IPD == mode) {
 8000362:	05e59963          	bne	a1,t5,80003b4 <gpio_init+0x94>
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
 8000366:	c950                	sw	a2,20(a0)
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
                }
            }
            /* set GPIO_CTL0 register */
            GPIO_CTL0(gpio_periph) = reg;
 8000368:	c118                	sw	a4,0(a0)
 800036a:	0785                	addi	a5,a5,1
    for (i = 0U; i < 8U; i++) {
 800036c:	fc6799e3          	bne	a5,t1,800033e <gpio_init+0x1e>
        }
    }
    /* configure the eight high port pins with GPIO_CTL1 */
    for (i = 8U; i < 16U; i++) {
        if ((1U << i) & pin) {
 8000370:	4e05                	li	t3,1
            reg = GPIO_CTL1(gpio_periph);

            /* clear the specified pin mode bits */
            reg &= ~GPIO_MODE_MASK(i - 8U);
 8000372:	4ebd                	li	t4,15
            /* set the specified pin mode bits */
            reg |= GPIO_MODE_SET(i - 8U, temp_mode);

            /* set IPD or IPU */
            if (GPIO_MODE_IPD == mode) {
 8000374:	02800f13          	li	t5,40
                /* reset the corresponding OCTL bit */
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
            } else {
                /* set the corresponding OCTL bit */
                if (GPIO_MODE_IPU == mode) {
 8000378:	04800f93          	li	t6,72
    for (i = 8U; i < 16U; i++) {
 800037c:	4341                	li	t1,16
        if ((1U << i) & pin) {
 800037e:	00fe1633          	sll	a2,t3,a5
 8000382:	8e75                	and	a2,a2,a3
 8000384:	c605                	beqz	a2,80003ac <gpio_init+0x8c>
            reg &= ~GPIO_MODE_MASK(i - 8U);
 8000386:	00279713          	slli	a4,a5,0x2
 800038a:	1701                	addi	a4,a4,-32
            reg = GPIO_CTL1(gpio_periph);
 800038c:	00452283          	lw	t0,4(a0)
            reg &= ~GPIO_MODE_MASK(i - 8U);
 8000390:	00ee9833          	sll	a6,t4,a4
 8000394:	fff84813          	not	a6,a6
 8000398:	00587833          	and	a6,a6,t0
            reg |= GPIO_MODE_SET(i - 8U, temp_mode);
 800039c:	00e89733          	sll	a4,a7,a4
 80003a0:	01076733          	or	a4,a4,a6
            if (GPIO_MODE_IPD == mode) {
 80003a4:	01e59c63          	bne	a1,t5,80003bc <gpio_init+0x9c>
                GPIO_BC(gpio_periph) = (uint32_t) ((1U << i) & pin);
 80003a8:	c950                	sw	a2,20(a0)
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
                }
            }
            /* set GPIO_CTL1 register */
            GPIO_CTL1(gpio_periph) = reg;
 80003aa:	c158                	sw	a4,4(a0)
 80003ac:	0785                	addi	a5,a5,1
    for (i = 8U; i < 16U; i++) {
 80003ae:	fc6798e3          	bne	a5,t1,800037e <gpio_init+0x5e>
        }
    }
}
 80003b2:	8082                	ret
                if (GPIO_MODE_IPU == mode) {
 80003b4:	fbf59ae3          	bne	a1,t6,8000368 <gpio_init+0x48>
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
 80003b8:	c910                	sw	a2,16(a0)
 80003ba:	b77d                	j	8000368 <gpio_init+0x48>
                if (GPIO_MODE_IPU == mode) {
 80003bc:	fff597e3          	bne	a1,t6,80003aa <gpio_init+0x8a>
                    GPIO_BOP(gpio_periph) = (uint32_t) ((1U << i) & pin);
 80003c0:	c910                	sw	a2,16(a0)
 80003c2:	b7e5                	j	80003aa <gpio_init+0x8a>

080003c4 <gpio_port_write>:
    \param[out] none
    \retval     none
*/
void gpio_port_write(uint32_t gpio_periph, uint16_t data)
{
    GPIO_OCTL(gpio_periph) = (uint32_t) data;
 80003c4:	c54c                	sw	a1,12(a0)
}
 80003c6:	8082                	ret

080003c8 <gpio_input_port_get>:
    \param[out] none
    \retval     input status of gpio all pins
*/
uint16_t gpio_input_port_get(uint32_t gpio_periph)
{
    return (uint16_t) (GPIO_ISTAT(gpio_periph));
 80003c8:	4508                	lw	a0,8(a0)
}
 80003ca:	0542                	slli	a0,a0,0x10
 80003cc:	8141                	srli	a0,a0,0x10
 80003ce:	8082                	ret

080003d0 <rcu_periph_clock_enable>:
    \param[out] none
    \retval     none
*/
void rcu_periph_clock_enable(rcu_periph_enum periph)
{
    RCU_REG_VAL(periph) |= BIT(RCU_BIT_POS(periph));
 80003d0:	400217b7          	lui	a5,0x40021
 80003d4:	00655713          	srli	a4,a0,0x6
 80003d8:	973e                	add	a4,a4,a5
 80003da:	4314                	lw	a3,0(a4)
 80003dc:	4785                	li	a5,1
 80003de:	00a797b3          	sll	a5,a5,a0
 80003e2:	8fd5                	or	a5,a5,a3
 80003e4:	c31c                	sw	a5,0(a4)
}
 80003e6:	8082                	ret

080003e8 <SystemInit>:
*/
void SystemInit(void)
{
    /* reset the RCC clock configuration to the default reset state */
    /* enable IRC8M */
    RCU_CTL |= RCU_CTL_IRC8MEN;
 80003e8:	400217b7          	lui	a5,0x40021
 80003ec:	4398                	lw	a4,0(a5)
    
    /* reset SCS, AHBPSC, APB1PSC, APB2PSC, ADCPSC, CKOUT0SEL bits */
    RCU_CFG0 &= ~(RCU_CFG0_SCS | RCU_CFG0_AHBPSC | RCU_CFG0_APB1PSC | RCU_CFG0_APB2PSC |
 80003ee:	e0ff06b7          	lui	a3,0xe0ff0
 80003f2:	06b1                	addi	a3,a3,12
    RCU_CTL |= RCU_CTL_IRC8MEN;
 80003f4:	00176713          	ori	a4,a4,1
 80003f8:	c398                	sw	a4,0(a5)
    RCU_CFG0 &= ~(RCU_CFG0_SCS | RCU_CFG0_AHBPSC | RCU_CFG0_APB1PSC | RCU_CFG0_APB2PSC |
 80003fa:	43d8                	lw	a4,4(a5)
 80003fc:	8f75                	and	a4,a4,a3
 80003fe:	c3d8                	sw	a4,4(a5)
                  RCU_CFG0_ADCPSC | RCU_CFG0_ADCPSC_2 | RCU_CFG0_CKOUT0SEL);

    /* reset HXTALEN, CKMEN, PLLEN bits */
    RCU_CTL &= ~(RCU_CTL_HXTALEN | RCU_CTL_CKMEN | RCU_CTL_PLLEN);
 8000400:	4398                	lw	a4,0(a5)
 8000402:	fef706b7          	lui	a3,0xfef70
 8000406:	16fd                	addi	a3,a3,-1
 8000408:	8f75                	and	a4,a4,a3
 800040a:	c398                	sw	a4,0(a5)

    /* Reset HXTALBPS bit */
    RCU_CTL &= ~(RCU_CTL_HXTALBPS);
 800040c:	4398                	lw	a4,0(a5)
 800040e:	fffc06b7          	lui	a3,0xfffc0
 8000412:	16fd                	addi	a3,a3,-1
 8000414:	8f75                	and	a4,a4,a3
 8000416:	c398                	sw	a4,0(a5)

    /* reset PLLSEL, PREDV0_LSB, PLLMF, USBFSPSC bits */
    
    RCU_CFG0 &= ~(RCU_CFG0_PLLSEL | RCU_CFG0_PREDV0_LSB | RCU_CFG0_PLLMF |
 8000418:	43d8                	lw	a4,4(a5)
 800041a:	df0106b7          	lui	a3,0xdf010
 800041e:	16fd                	addi	a3,a3,-1
 8000420:	8f75                	and	a4,a4,a3
 8000422:	c3d8                	sw	a4,4(a5)
                  RCU_CFG0_USBFSPSC | RCU_CFG0_PLLMF_4);
    RCU_CFG1 = 0x00000000U;
 8000424:	0207a623          	sw	zero,44(a5) # 4002102c <_sp+0x2001902c>

    /* Reset HXTALEN, CKMEN, PLLEN, PLL1EN and PLL2EN bits */
    RCU_CTL &= ~(RCU_CTL_PLLEN | RCU_CTL_PLL1EN | RCU_CTL_PLL2EN | RCU_CTL_CKMEN | RCU_CTL_HXTALEN);
 8000428:	4398                	lw	a4,0(a5)
 800042a:	eaf706b7          	lui	a3,0xeaf70
 800042e:	16fd                	addi	a3,a3,-1
 8000430:	8f75                	and	a4,a4,a3
 8000432:	c398                	sw	a4,0(a5)
    /* disable all interrupts */
    RCU_INT = 0x00FF0000U;
 8000434:	00ff0737          	lui	a4,0xff0
 8000438:	c798                	sw	a4,8(a5)
{
    uint32_t timeout   = 0U;
    uint32_t stab_flag = 0U;

    /* enable HXTAL */
    RCU_CTL |= RCU_CTL_HXTALEN;
 800043a:	4394                	lw	a3,0(a5)
 800043c:	6741                	lui	a4,0x10
 800043e:	8ed9                	or	a3,a3,a4
 8000440:	c394                	sw	a3,0(a5)
 8000442:	fff70793          	addi	a5,a4,-1 # ffff <__stack_size+0xefff>

    /* wait until HXTAL is stable or the startup time is longer than HXTAL_STARTUP_TIMEOUT */
    do{
        timeout++;
        stab_flag = (RCU_CTL & RCU_CTL_HXTALSTB);
 8000446:	40021737          	lui	a4,0x40021
 800044a:	4314                	lw	a3,0(a4)
    }while((0U == stab_flag) && (HXTAL_STARTUP_TIMEOUT != timeout));
 800044c:	00e69613          	slli	a2,a3,0xe
 8000450:	00064463          	bltz	a2,8000458 <SystemInit+0x70>
 8000454:	17fd                	addi	a5,a5,-1
 8000456:	fbf5                	bnez	a5,800044a <SystemInit+0x62>

    /* if fail */
    if(0U == (RCU_CTL & RCU_CTL_HXTALSTB)){
 8000458:	400217b7          	lui	a5,0x40021
 800045c:	4398                	lw	a4,0(a5)
 800045e:	00e71693          	slli	a3,a4,0xe
 8000462:	0006c363          	bltz	a3,8000468 <SystemInit+0x80>
        while(1){
        }
 8000466:	a001                	j	8000466 <SystemInit+0x7e>
    }

    /* HXTAL is stable */
    /* AHB = SYSCLK */
    RCU_CFG0 |= RCU_AHB_CKSYS_DIV1;
 8000468:	43d8                	lw	a4,4(a5)
    RCU_CFG0 |= RCU_APB2_CKAHB_DIV1;
    /* APB1 = AHB/2 */
    RCU_CFG0 |= RCU_APB1_CKAHB_DIV2;

    /* CK_PLL = (CK_PREDIV0) * 27 = 108 MHz */ 
    RCU_CFG0 &= ~(RCU_CFG0_PLLMF | RCU_CFG0_PLLMF_4);
 800046a:	dfc406b7          	lui	a3,0xdfc40
 800046e:	16fd                	addi	a3,a3,-1
    RCU_CFG0 |= RCU_AHB_CKSYS_DIV1;
 8000470:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= RCU_APB2_CKAHB_DIV1;
 8000472:	43d8                	lw	a4,4(a5)
 8000474:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= RCU_APB1_CKAHB_DIV2;
 8000476:	43d8                	lw	a4,4(a5)
 8000478:	40076713          	ori	a4,a4,1024
 800047c:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 &= ~(RCU_CFG0_PLLMF | RCU_CFG0_PLLMF_4);
 800047e:	43d8                	lw	a4,4(a5)
 8000480:	8f75                	and	a4,a4,a3
 8000482:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= (RCU_PLLSRC_HXTAL | RCU_PLL_MUL27);
 8000484:	43d8                	lw	a4,4(a5)
 8000486:	202906b7          	lui	a3,0x20290
 800048a:	8f55                	or	a4,a4,a3
 800048c:	c3d8                	sw	a4,4(a5)
		RCU_CTL |= RCU_CTL_PLL2EN;
		/* wait till PLL1 is ready */
		while(0U == (RCU_CTL & RCU_CTL_PLL2STB)){
		}
    }else if(HXTAL_VALUE==8000000){
		RCU_CFG1 &= ~(RCU_CFG1_PREDV0SEL | RCU_CFG1_PREDV1 | RCU_CFG1_PLL1MF | RCU_CFG1_PREDV0);
 800048e:	57d8                	lw	a4,44(a5)
 8000490:	76bd                	lui	a3,0xfffef
 8000492:	8f75                	and	a4,a4,a3
 8000494:	d7d8                	sw	a4,44(a5)
		RCU_CFG1 |= (RCU_PREDV0SRC_HXTAL | RCU_PREDV0_DIV2 | RCU_PREDV1_DIV2 | RCU_PLL1_MUL20 | RCU_PLL2_MUL20);
 8000496:	57d8                	lw	a4,44(a5)
 8000498:	66c1                	lui	a3,0x10
 800049a:	f1168693          	addi	a3,a3,-239 # ff11 <__stack_size+0xef11>
 800049e:	8f55                	or	a4,a4,a3
 80004a0:	d7d8                	sw	a4,44(a5)

		/* enable PLL1 */
		RCU_CTL |= RCU_CTL_PLL1EN;
 80004a2:	4398                	lw	a4,0(a5)
 80004a4:	040006b7          	lui	a3,0x4000
 80004a8:	8f55                	or	a4,a4,a3
 80004aa:	c398                	sw	a4,0(a5)
		/* wait till PLL1 is ready */
		while(0U == (RCU_CTL & RCU_CTL_PLL1STB)){
 80004ac:	400217b7          	lui	a5,0x40021
 80004b0:	4398                	lw	a4,0(a5)
 80004b2:	00471693          	slli	a3,a4,0x4
 80004b6:	fe06dde3          	bgez	a3,80004b0 <SystemInit+0xc8>
		}

		/* enable PLL2 */
		RCU_CTL |= RCU_CTL_PLL2EN;
 80004ba:	4398                	lw	a4,0(a5)
 80004bc:	100006b7          	lui	a3,0x10000
 80004c0:	8f55                	or	a4,a4,a3
 80004c2:	c398                	sw	a4,0(a5)
		/* wait till PLL1 is ready */
		while(0U == (RCU_CTL & RCU_CTL_PLL2STB)){
 80004c4:	400217b7          	lui	a5,0x40021
 80004c8:	4398                	lw	a4,0(a5)
 80004ca:	00271693          	slli	a3,a4,0x2
 80004ce:	fe06dde3          	bgez	a3,80004c8 <SystemInit+0xe0>
		}

    }
    /* enable PLL */
    RCU_CTL |= RCU_CTL_PLLEN;
 80004d2:	4398                	lw	a4,0(a5)
 80004d4:	010006b7          	lui	a3,0x1000
 80004d8:	8f55                	or	a4,a4,a3
 80004da:	c398                	sw	a4,0(a5)

    /* wait until PLL is stable */
    while(0U == (RCU_CTL & RCU_CTL_PLLSTB)){
 80004dc:	400217b7          	lui	a5,0x40021
 80004e0:	4398                	lw	a4,0(a5)
 80004e2:	00671693          	slli	a3,a4,0x6
 80004e6:	fe06dde3          	bgez	a3,80004e0 <SystemInit+0xf8>
    }

    /* select PLL as system clock */
    RCU_CFG0 &= ~RCU_CFG0_SCS;
 80004ea:	43d8                	lw	a4,4(a5)
 80004ec:	9b71                	andi	a4,a4,-4
 80004ee:	c3d8                	sw	a4,4(a5)
    RCU_CFG0 |= RCU_CKSYSSRC_PLL;
 80004f0:	43d8                	lw	a4,4(a5)
 80004f2:	00276713          	ori	a4,a4,2
 80004f6:	c3d8                	sw	a4,4(a5)

    /* wait until PLL is selected as system clock */
    while(0U == (RCU_CFG0 & RCU_SCSS_PLL)){
 80004f8:	40021737          	lui	a4,0x40021
 80004fc:	435c                	lw	a5,4(a4)
 80004fe:	8ba1                	andi	a5,a5,8
 8000500:	dff5                	beqz	a5,80004fc <SystemInit+0x114>
}
 8000502:	8082                	ret

08000504 <_exit>:

#include "stub.h"


void _exit(int code)
{
 8000504:	7179                	addi	sp,sp,-48
  const char message[] = "\nProgram has exited with code:";
 8000506:	080005b7          	lui	a1,0x8000
{
 800050a:	d422                	sw	s0,40(sp)
  const char message[] = "\nProgram has exited with code:";
 800050c:	467d                	li	a2,31
{
 800050e:	842a                	mv	s0,a0
  const char message[] = "\nProgram has exited with code:";
 8000510:	28058593          	addi	a1,a1,640 # 8000280 <enable_mcycle_minstret+0x34>
 8000514:	850a                	mv	a0,sp
{
 8000516:	d606                	sw	ra,44(sp)
  const char message[] = "\nProgram has exited with code:";
 8000518:	00000097          	auipc	ra,0x0
 800051c:	386080e7          	jalr	902(ra) # 800089e <memcpy>

  write(STDERR_FILENO, message, sizeof(message) - 1);
 8000520:	4679                	li	a2,30
 8000522:	858a                	mv	a1,sp
 8000524:	4509                	li	a0,2
 8000526:	00000097          	auipc	ra,0x0
 800052a:	38e080e7          	jalr	910(ra) # 80008b4 <write>
  write_hex(STDERR_FILENO, code);
 800052e:	85a2                	mv	a1,s0
 8000530:	4509                	li	a0,2
 8000532:	00000097          	auipc	ra,0x0
 8000536:	01e080e7          	jalr	30(ra) # 8000550 <write_hex>
  write(STDERR_FILENO, "\n", 1);
 800053a:	080005b7          	lui	a1,0x8000
 800053e:	4605                	li	a2,1
 8000540:	2b058593          	addi	a1,a1,688 # 80002b0 <enable_mcycle_minstret+0x64>
 8000544:	4509                	li	a0,2
 8000546:	00000097          	auipc	ra,0x0
 800054a:	36e080e7          	jalr	878(ra) # 80008b4 <write>

  for (;;);
 800054e:	a001                	j	800054e <_exit+0x4a>

08000550 <write_hex>:

#include <stdint.h>
#include <unistd.h>

void write_hex(int fd, unsigned long int hex)
{
 8000550:	7179                	addi	sp,sp,-48
 8000552:	ce4e                	sw	s3,28(sp)
 8000554:	89ae                	mv	s3,a1
  uint8_t ii;
  uint8_t jj;
  char towrite;
  write(fd , "0x", 2);
 8000556:	080005b7          	lui	a1,0x8000
 800055a:	4609                	li	a2,2
 800055c:	2a058593          	addi	a1,a1,672 # 80002a0 <enable_mcycle_minstret+0x54>
{
 8000560:	d422                	sw	s0,40(sp)
 8000562:	d226                	sw	s1,36(sp)
 8000564:	d04a                	sw	s2,32(sp)
 8000566:	cc52                	sw	s4,24(sp)
 8000568:	ca56                	sw	s5,20(sp)
 800056a:	d606                	sw	ra,44(sp)
 800056c:	892a                	mv	s2,a0
  write(fd , "0x", 2);
 800056e:	4471                	li	s0,28
 8000570:	00000097          	auipc	ra,0x0
 8000574:	344080e7          	jalr	836(ra) # 80008b4 <write>
  for (ii = sizeof(unsigned long int) * 2 ; ii > 0; ii--) {
    jj = ii - 1;
    uint8_t digit = ((hex & (0xF << (jj*4))) >> (jj*4));
 8000578:	4a3d                	li	s4,15
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 800057a:	4aa5                	li	s5,9
  for (ii = sizeof(unsigned long int) * 2 ; ii > 0; ii--) {
 800057c:	54f1                	li	s1,-4
    uint8_t digit = ((hex & (0xF << (jj*4))) >> (jj*4));
 800057e:	008a17b3          	sll	a5,s4,s0
 8000582:	0137f7b3          	and	a5,a5,s3
 8000586:	0087d7b3          	srl	a5,a5,s0
 800058a:	0ff7f793          	andi	a5,a5,255
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 800058e:	02faec63          	bltu	s5,a5,80005c6 <write_hex+0x76>
 8000592:	03078793          	addi	a5,a5,48 # 40021030 <_sp+0x20019030>
 8000596:	0ff7f793          	andi	a5,a5,255
    write(fd, &towrite, 1);
 800059a:	4605                	li	a2,1
 800059c:	00f10593          	addi	a1,sp,15
 80005a0:	854a                	mv	a0,s2
 80005a2:	1471                	addi	s0,s0,-4
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 80005a4:	00f107a3          	sb	a5,15(sp)
    write(fd, &towrite, 1);
 80005a8:	00000097          	auipc	ra,0x0
 80005ac:	30c080e7          	jalr	780(ra) # 80008b4 <write>
  for (ii = sizeof(unsigned long int) * 2 ; ii > 0; ii--) {
 80005b0:	fc9417e3          	bne	s0,s1,800057e <write_hex+0x2e>
  }
}
 80005b4:	50b2                	lw	ra,44(sp)
 80005b6:	5422                	lw	s0,40(sp)
 80005b8:	5492                	lw	s1,36(sp)
 80005ba:	5902                	lw	s2,32(sp)
 80005bc:	49f2                	lw	s3,28(sp)
 80005be:	4a62                	lw	s4,24(sp)
 80005c0:	4ad2                	lw	s5,20(sp)
 80005c2:	6145                	addi	sp,sp,48
 80005c4:	8082                	ret
    towrite = digit < 0xA ? ('0' + digit) : ('A' +  (digit - 0xA));
 80005c6:	03778793          	addi	a5,a5,55
 80005ca:	b7f1                	j	8000596 <write_hex+0x46>

080005cc <eclic_init>:
{

  typedef volatile uint32_t vuint32_t;

  /* clear cfg register */
  *(volatile uint8_t*)(ECLIC_ADDR_BASE+ECLIC_CFG_OFFSET)=0;
 80005cc:	d20007b7          	lui	a5,0xd2000
 80005d0:	00078023          	sb	zero,0(a5) # d2000000 <_sp+0xb1ff8000>

  /* clear minthresh register */
  *(volatile uint8_t*)(ECLIC_ADDR_BASE+ECLIC_MTH_OFFSET)=0;
 80005d4:	000785a3          	sb	zero,11(a5)

  /* clear all IP/IE/ATTR/CTRL bits for all interrupt sources */
  vuint32_t * ptr;

  vuint32_t * base = (vuint32_t*)(ECLIC_ADDR_BASE + ECLIC_INT_IP_OFFSET);
  vuint32_t * upper = (vuint32_t*)(base + num_irq*4);
 80005d8:	0512                	slli	a0,a0,0x4
 80005da:	d20017b7          	lui	a5,0xd2001
 80005de:	953e                	add	a0,a0,a5

  for (ptr = base; ptr < upper; ptr=ptr+4){
 80005e0:	00a7e363          	bltu	a5,a0,80005e6 <eclic_init+0x1a>
    *ptr = 0;
  }
}
 80005e4:	8082                	ret
    *ptr = 0;
 80005e6:	0007a023          	sw	zero,0(a5) # d2001000 <_sp+0xb1ff9000>
  for (ptr = base; ptr < upper; ptr=ptr+4){
 80005ea:	07c1                	addi	a5,a5,16
 80005ec:	bfd5                	j	80005e0 <eclic_init+0x14>

080005ee <eclic_mode_enable>:
  uint32_t mtvec_value = read_csr(CSR_MTVEC);
  mtvec_value = mtvec_value & 0xFFFFFFC0;
  mtvec_value = mtvec_value | 0x00000003;
  write_csr(CSR_MTVEC,mtvec_value);
#elif defined ( __GNUC__ )
  uint32_t mtvec_value = read_csr(mtvec);
 80005ee:	305027f3          	csrr	a5,mtvec
  mtvec_value = mtvec_value & 0xFFFFFFC0;
 80005f2:	fc07f793          	andi	a5,a5,-64
  mtvec_value = mtvec_value | 0x00000003;
 80005f6:	0037e793          	ori	a5,a5,3
  write_csr(mtvec,mtvec_value);
 80005fa:	30579073          	csrw	mtvec,a5
#endif

}
 80005fe:	8082                	ret

08000600 <handle_nmi>:
#include "riscv_encoding.h"
#include "n200_func.h"

__attribute__((weak)) uintptr_t handle_nmi()
{
  write(1, "nmi\n", 5);
 8000600:	080005b7          	lui	a1,0x8000
{
 8000604:	1141                	addi	sp,sp,-16
  write(1, "nmi\n", 5);
 8000606:	4615                	li	a2,5
 8000608:	2a458593          	addi	a1,a1,676 # 80002a4 <enable_mcycle_minstret+0x58>
 800060c:	4505                	li	a0,1
{
 800060e:	c606                	sw	ra,12(sp)
  write(1, "nmi\n", 5);
 8000610:	00000097          	auipc	ra,0x0
 8000614:	2a4080e7          	jalr	676(ra) # 80008b4 <write>
  _exit(1);
 8000618:	4505                	li	a0,1
 800061a:	00000097          	auipc	ra,0x0
 800061e:	eea080e7          	jalr	-278(ra) # 8000504 <_exit>

08000622 <handle_trap>:
  return 0;
}


__attribute__((weak)) uintptr_t handle_trap(uintptr_t mcause, uintptr_t sp)
{
 8000622:	1141                	addi	sp,sp,-16
  if((mcause & 0xFFF) == 0xFFF) {
 8000624:	fff54793          	not	a5,a0
{
 8000628:	c422                	sw	s0,8(sp)
 800062a:	c606                	sw	ra,12(sp)
  if((mcause & 0xFFF) == 0xFFF) {
 800062c:	01479713          	slli	a4,a5,0x14
{
 8000630:	842a                	mv	s0,a0
  if((mcause & 0xFFF) == 0xFFF) {
 8000632:	e709                	bnez	a4,800063c <handle_trap+0x1a>
      handle_nmi();
 8000634:	00000097          	auipc	ra,0x0
 8000638:	fcc080e7          	jalr	-52(ra) # 8000600 <handle_nmi>
  }
  write(1, "trap\n", 5);
 800063c:	080005b7          	lui	a1,0x8000
 8000640:	4615                	li	a2,5
 8000642:	2ac58593          	addi	a1,a1,684 # 80002ac <enable_mcycle_minstret+0x60>
 8000646:	4505                	li	a0,1
 8000648:	00000097          	auipc	ra,0x0
 800064c:	26c080e7          	jalr	620(ra) # 80008b4 <write>
  //printf("In trap handler, the mcause is %d\n", mcause);
  //printf("In trap handler, the mepc is 0x%x\n", read_csr(mepc));
  //printf("In trap handler, the mtval is 0x%x\n", read_csr(mbadaddr));
  _exit(mcause);
 8000650:	8522                	mv	a0,s0
 8000652:	00000097          	auipc	ra,0x0
 8000656:	eb2080e7          	jalr	-334(ra) # 8000504 <_exit>

0800065a <_init>:
#include "debugger.h"
#endif

extern uint32_t disable_mcycle_minstret();
void _init()
{
 800065a:	1141                	addi	sp,sp,-16
 800065c:	c606                	sw	ra,12(sp)
	SystemInit();
 800065e:	00000097          	auipc	ra,0x0
 8000662:	d8a080e7          	jalr	-630(ra) # 80003e8 <SystemInit>

	//ECLIC init
	eclic_init(ECLIC_NUM_INTERRUPTS);
 8000666:	05700513          	li	a0,87
 800066a:	00000097          	auipc	ra,0x0
 800066e:	f62080e7          	jalr	-158(ra) # 80005cc <eclic_init>
	eclic_mode_enable();
 8000672:	00000097          	auipc	ra,0x0
 8000676:	f7c080e7          	jalr	-132(ra) # 80005ee <eclic_mode_enable>
#ifdef USE_SOFTWARE_DEBUGGER
	dbg_init();
#endif
	

}
 800067a:	40b2                	lw	ra,12(sp)
 800067c:	0141                	addi	sp,sp,16
	disable_mcycle_minstret();
 800067e:	00000317          	auipc	t1,0x0
 8000682:	bc830067          	jr	-1080(t1) # 8000246 <disable_mcycle_minstret>

08000686 <_fini>:

void _fini()
{
}
 8000686:	8082                	ret
	...

080006c0 <trap_entry>:
trap_entry:
  // Allocate the stack space
 // addi sp, sp, -19*REGBYTES

  // Save the caller saving registers (context)
  SAVE_CONTEXT
 80006c0:	715d                	addi	sp,sp,-80
 80006c2:	c006                	sw	ra,0(sp)
 80006c4:	c212                	sw	tp,4(sp)
 80006c6:	c416                	sw	t0,8(sp)
 80006c8:	c61a                	sw	t1,12(sp)
 80006ca:	c81e                	sw	t2,16(sp)
 80006cc:	ca2a                	sw	a0,20(sp)
 80006ce:	cc2e                	sw	a1,24(sp)
 80006d0:	ce32                	sw	a2,28(sp)
 80006d2:	d036                	sw	a3,32(sp)
 80006d4:	d23a                	sw	a4,36(sp)
 80006d6:	d43e                	sw	a5,40(sp)
 80006d8:	d642                	sw	a6,44(sp)
 80006da:	d846                	sw	a7,48(sp)
 80006dc:	da72                	sw	t3,52(sp)
 80006de:	dc76                	sw	t4,56(sp)
 80006e0:	de7a                	sw	t5,60(sp)
 80006e2:	c0fe                	sw	t6,64(sp)
  // Save the MEPC/Mstatus/Msubm reg
  SAVE_EPC_STATUS
 80006e4:	341022f3          	csrr	t0,mepc
 80006e8:	c096                	sw	t0,64(sp)
 80006ea:	300022f3          	csrr	t0,mstatus
 80006ee:	c296                	sw	t0,68(sp)
 80006f0:	7c4022f3          	csrr	t0,0x7c4
 80006f4:	c496                	sw	t0,72(sp)

     // Set the function argument
  csrr a0, mcause
 80006f6:	34202573          	csrr	a0,mcause
  mv a1, sp
 80006fa:	858a                	mv	a1,sp
     // Call the function
  call handle_trap
 80006fc:	00000097          	auipc	ra,0x0
 8000700:	f26080e7          	jalr	-218(ra) # 8000622 <handle_trap>

  // Restore the MEPC/Mstatus/Msubm reg
  RESTORE_EPC_STATUS
 8000704:	4286                	lw	t0,64(sp)
 8000706:	34129073          	csrw	mepc,t0
 800070a:	4296                	lw	t0,68(sp)
 800070c:	30029073          	csrw	mstatus,t0
 8000710:	42a6                	lw	t0,72(sp)
 8000712:	7c429073          	csrw	0x7c4,t0
  // Restore the caller saving registers (context)
  RESTORE_CONTEXT
 8000716:	4082                	lw	ra,0(sp)
 8000718:	4212                	lw	tp,4(sp)
 800071a:	42a2                	lw	t0,8(sp)
 800071c:	4332                	lw	t1,12(sp)
 800071e:	43c2                	lw	t2,16(sp)
 8000720:	4552                	lw	a0,20(sp)
 8000722:	45e2                	lw	a1,24(sp)
 8000724:	4672                	lw	a2,28(sp)
 8000726:	5682                	lw	a3,32(sp)
 8000728:	5712                	lw	a4,36(sp)
 800072a:	57a2                	lw	a5,40(sp)
 800072c:	5832                	lw	a6,44(sp)
 800072e:	58c2                	lw	a7,48(sp)
 8000730:	5e52                	lw	t3,52(sp)
 8000732:	5ee2                	lw	t4,56(sp)
 8000734:	5f72                	lw	t5,60(sp)
 8000736:	4f86                	lw	t6,64(sp)
 8000738:	6161                	addi	sp,sp,80

  // De-allocate the stack space
 // addi sp, sp, 19*REGBYTES
  // Return to regular code
  mret
 800073a:	30200073          	mret
 800073e:	0000                	unimp
 8000740:	0000                	unimp
	...

08000744 <irq_entry>:
.weak irq_entry
irq_entry: // -------------> This label will be set to MTVT2 register
  // Allocate the stack space
  
  //csrrw sp, mscratch, sp
  SAVE_CONTEXT// Save 16 regs
 8000744:	715d                	addi	sp,sp,-80
 8000746:	c006                	sw	ra,0(sp)
 8000748:	c212                	sw	tp,4(sp)
 800074a:	c416                	sw	t0,8(sp)
 800074c:	c61a                	sw	t1,12(sp)
 800074e:	c81e                	sw	t2,16(sp)
 8000750:	ca2a                	sw	a0,20(sp)
 8000752:	cc2e                	sw	a1,24(sp)
 8000754:	ce32                	sw	a2,28(sp)
 8000756:	d036                	sw	a3,32(sp)
 8000758:	d23a                	sw	a4,36(sp)
 800075a:	d43e                	sw	a5,40(sp)
 800075c:	d642                	sw	a6,44(sp)
 800075e:	d846                	sw	a7,48(sp)
 8000760:	da72                	sw	t3,52(sp)
 8000762:	dc76                	sw	t4,56(sp)
 8000764:	de7a                	sw	t5,60(sp)
 8000766:	c0fe                	sw	t6,64(sp)

  //------This special CSR read operation, which is actually use mcause as operand to directly store it to memory
  csrrwi  x0, CSR_PUSHMCAUSE, 17
 8000768:	7ee8d073          	csrwi	0x7ee,17
  //------This special CSR read operation, which is actually use mepc as operand to directly store it to memory
  csrrwi  x0, CSR_PUSHMEPC, 18
 800076c:	7ef95073          	csrwi	0x7ef,18
  //------This special CSR read operation, which is actually use Msubm as operand to directly store it to memory
  csrrwi  x0, CSR_PUSHMSUBM, 19
 8000770:	7eb9d073          	csrwi	0x7eb,19

08000774 <service_loop>:
 
service_loop:
  //------This special CSR read/write operation, which is actually Claim the CLIC to find its pending highest
  // ID, if the ID is not 0, then automatically enable the mstatus.MIE, and jump to its vector-entry-label, and
  // update the link register 
  csrrw ra, CSR_JALMNXTI, ra 
 8000774:	7ed090f3          	csrrw	ra,0x7ed,ra
  
  //RESTORE_CONTEXT_EXCPT_X5

  #---- Critical section with interrupts disabled -----------------------
  DISABLE_MIE # Disable interrupts 
 8000778:	30047073          	csrci	mstatus,8

  LOAD x5,  19*REGBYTES(sp)
 800077c:	42b6                	lw	t0,76(sp)
  csrw CSR_MSUBM, x5  
 800077e:	7c429073          	csrw	0x7c4,t0
  LOAD x5,  18*REGBYTES(sp)
 8000782:	42a6                	lw	t0,72(sp)
  csrw CSR_MEPC, x5  
 8000784:	34129073          	csrw	mepc,t0
  LOAD x5,  17*REGBYTES(sp)
 8000788:	4296                	lw	t0,68(sp)
  csrw CSR_MCAUSE, x5  
 800078a:	34229073          	csrw	mcause,t0


  RESTORE_CONTEXT
 800078e:	4082                	lw	ra,0(sp)
 8000790:	4212                	lw	tp,4(sp)
 8000792:	42a2                	lw	t0,8(sp)
 8000794:	4332                	lw	t1,12(sp)
 8000796:	43c2                	lw	t2,16(sp)
 8000798:	4552                	lw	a0,20(sp)
 800079a:	45e2                	lw	a1,24(sp)
 800079c:	4672                	lw	a2,28(sp)
 800079e:	5682                	lw	a3,32(sp)
 80007a0:	5712                	lw	a4,36(sp)
 80007a2:	57a2                	lw	a5,40(sp)
 80007a4:	5832                	lw	a6,44(sp)
 80007a6:	58c2                	lw	a7,48(sp)
 80007a8:	5e52                	lw	t3,52(sp)
 80007aa:	5ee2                	lw	t4,56(sp)
 80007ac:	5f72                	lw	t5,60(sp)
 80007ae:	4f86                	lw	t6,64(sp)
 80007b0:	6161                	addi	sp,sp,80
  //csrrw sp, mscratch, sp
  
  // Return to regular code
  mret
 80007b2:	30200073          	mret

080007b6 <atexit>:
 80007b6:	85aa                	mv	a1,a0
 80007b8:	4681                	li	a3,0
 80007ba:	4601                	li	a2,0
 80007bc:	4501                	li	a0,0
 80007be:	00000317          	auipc	t1,0x0
 80007c2:	14830067          	jr	328(t1) # 8000906 <__register_exitproc>

080007c6 <exit>:
 80007c6:	1141                	addi	sp,sp,-16
 80007c8:	c422                	sw	s0,8(sp)
 80007ca:	c606                	sw	ra,12(sp)
 80007cc:	00000797          	auipc	a5,0x0
 80007d0:	1c678793          	addi	a5,a5,454 # 8000992 <__call_exitprocs>
 80007d4:	842a                	mv	s0,a0
 80007d6:	c791                	beqz	a5,80007e2 <exit+0x1c>
 80007d8:	4581                	li	a1,0
 80007da:	00000097          	auipc	ra,0x0
 80007de:	1b8080e7          	jalr	440(ra) # 8000992 <__call_exitprocs>
 80007e2:	00000797          	auipc	a5,0x0
 80007e6:	2ba78793          	addi	a5,a5,698 # 8000a9c <_global_impure_ptr>
 80007ea:	4388                	lw	a0,0(a5)
 80007ec:	551c                	lw	a5,40(a0)
 80007ee:	c391                	beqz	a5,80007f2 <exit+0x2c>
 80007f0:	9782                	jalr	a5
 80007f2:	8522                	mv	a0,s0
 80007f4:	00000097          	auipc	ra,0x0
 80007f8:	d10080e7          	jalr	-752(ra) # 8000504 <_exit>

080007fc <__libc_fini_array>:
 80007fc:	1141                	addi	sp,sp,-16
 80007fe:	00000797          	auipc	a5,0x0
 8000802:	2a278793          	addi	a5,a5,674 # 8000aa0 <__fini_array_end>
 8000806:	c422                	sw	s0,8(sp)
 8000808:	00000417          	auipc	s0,0x0
 800080c:	29840413          	addi	s0,s0,664 # 8000aa0 <__fini_array_end>
 8000810:	8c1d                	sub	s0,s0,a5
 8000812:	c226                	sw	s1,4(sp)
 8000814:	c606                	sw	ra,12(sp)
 8000816:	8409                	srai	s0,s0,0x2
 8000818:	84be                	mv	s1,a5
 800081a:	e411                	bnez	s0,8000826 <__libc_fini_array+0x2a>
 800081c:	40b2                	lw	ra,12(sp)
 800081e:	4422                	lw	s0,8(sp)
 8000820:	4492                	lw	s1,4(sp)
 8000822:	0141                	addi	sp,sp,16
 8000824:	8082                	ret
 8000826:	147d                	addi	s0,s0,-1
 8000828:	00241793          	slli	a5,s0,0x2
 800082c:	97a6                	add	a5,a5,s1
 800082e:	439c                	lw	a5,0(a5)
 8000830:	9782                	jalr	a5
 8000832:	b7e5                	j	800081a <__libc_fini_array+0x1e>

08000834 <__libc_init_array>:
 8000834:	1141                	addi	sp,sp,-16
 8000836:	00000797          	auipc	a5,0x0
 800083a:	26a78793          	addi	a5,a5,618 # 8000aa0 <__fini_array_end>
 800083e:	c422                	sw	s0,8(sp)
 8000840:	00000417          	auipc	s0,0x0
 8000844:	26040413          	addi	s0,s0,608 # 8000aa0 <__fini_array_end>
 8000848:	8c1d                	sub	s0,s0,a5
 800084a:	c226                	sw	s1,4(sp)
 800084c:	c04a                	sw	s2,0(sp)
 800084e:	c606                	sw	ra,12(sp)
 8000850:	8409                	srai	s0,s0,0x2
 8000852:	4481                	li	s1,0
 8000854:	893e                	mv	s2,a5
 8000856:	02849663          	bne	s1,s0,8000882 <__libc_init_array+0x4e>
 800085a:	00000797          	auipc	a5,0x0
 800085e:	24678793          	addi	a5,a5,582 # 8000aa0 <__fini_array_end>
 8000862:	00000417          	auipc	s0,0x0
 8000866:	23e40413          	addi	s0,s0,574 # 8000aa0 <__fini_array_end>
 800086a:	8c1d                	sub	s0,s0,a5
 800086c:	8409                	srai	s0,s0,0x2
 800086e:	4481                	li	s1,0
 8000870:	893e                	mv	s2,a5
 8000872:	00849f63          	bne	s1,s0,8000890 <__libc_init_array+0x5c>
 8000876:	40b2                	lw	ra,12(sp)
 8000878:	4422                	lw	s0,8(sp)
 800087a:	4492                	lw	s1,4(sp)
 800087c:	4902                	lw	s2,0(sp)
 800087e:	0141                	addi	sp,sp,16
 8000880:	8082                	ret
 8000882:	00249793          	slli	a5,s1,0x2
 8000886:	97ca                	add	a5,a5,s2
 8000888:	439c                	lw	a5,0(a5)
 800088a:	0485                	addi	s1,s1,1
 800088c:	9782                	jalr	a5
 800088e:	b7e1                	j	8000856 <__libc_init_array+0x22>
 8000890:	00249793          	slli	a5,s1,0x2
 8000894:	97ca                	add	a5,a5,s2
 8000896:	439c                	lw	a5,0(a5)
 8000898:	0485                	addi	s1,s1,1
 800089a:	9782                	jalr	a5
 800089c:	bfd9                	j	8000872 <__libc_init_array+0x3e>

0800089e <memcpy>:
 800089e:	832a                	mv	t1,a0
 80008a0:	ca09                	beqz	a2,80008b2 <memcpy+0x14>
 80008a2:	00058383          	lb	t2,0(a1)
 80008a6:	00730023          	sb	t2,0(t1)
 80008aa:	167d                	addi	a2,a2,-1
 80008ac:	0305                	addi	t1,t1,1
 80008ae:	0585                	addi	a1,a1,1
 80008b0:	fa6d                	bnez	a2,80008a2 <memcpy+0x4>
 80008b2:	8082                	ret

080008b4 <write>:
 80008b4:	17fff797          	auipc	a5,0x17fff
 80008b8:	7ac78793          	addi	a5,a5,1964 # 20000060 <_impure_ptr>
 80008bc:	86b2                	mv	a3,a2
 80008be:	862e                	mv	a2,a1
 80008c0:	85aa                	mv	a1,a0
 80008c2:	4388                	lw	a0,0(a5)
 80008c4:	00000317          	auipc	t1,0x0
 80008c8:	00830067          	jr	8(t1) # 80008cc <_write_r>

080008cc <_write_r>:
 80008cc:	1141                	addi	sp,sp,-16
 80008ce:	c422                	sw	s0,8(sp)
 80008d0:	842a                	mv	s0,a0
 80008d2:	852e                	mv	a0,a1
 80008d4:	85b2                	mv	a1,a2
 80008d6:	8636                	mv	a2,a3
 80008d8:	18000797          	auipc	a5,0x18000
 80008dc:	8207a023          	sw	zero,-2016(a5) # 200000f8 <errno>
 80008e0:	c606                	sw	ra,12(sp)
 80008e2:	00000097          	auipc	ra,0x0
 80008e6:	178080e7          	jalr	376(ra) # 8000a5a <_write>
 80008ea:	57fd                	li	a5,-1
 80008ec:	00f51963          	bne	a0,a5,80008fe <_write_r+0x32>
 80008f0:	18000797          	auipc	a5,0x18000
 80008f4:	80878793          	addi	a5,a5,-2040 # 200000f8 <errno>
 80008f8:	439c                	lw	a5,0(a5)
 80008fa:	c391                	beqz	a5,80008fe <_write_r+0x32>
 80008fc:	c01c                	sw	a5,0(s0)
 80008fe:	40b2                	lw	ra,12(sp)
 8000900:	4422                	lw	s0,8(sp)
 8000902:	0141                	addi	sp,sp,16
 8000904:	8082                	ret

08000906 <__register_exitproc>:
 8000906:	17fff797          	auipc	a5,0x17fff
 800090a:	76278793          	addi	a5,a5,1890 # 20000068 <_global_atexit>
 800090e:	439c                	lw	a5,0(a5)
 8000910:	8e2a                	mv	t3,a0
 8000912:	e78d                	bnez	a5,800093c <__register_exitproc+0x36>
 8000914:	17fff717          	auipc	a4,0x17fff
 8000918:	75870713          	addi	a4,a4,1880 # 2000006c <_global_atexit0>
 800091c:	17fff797          	auipc	a5,0x17fff
 8000920:	74e7a623          	sw	a4,1868(a5) # 20000068 <_global_atexit>
 8000924:	f7fff517          	auipc	a0,0xf7fff
 8000928:	6dc50513          	addi	a0,a0,1756 # 0 <__dbg_stack_size>
 800092c:	87ba                	mv	a5,a4
 800092e:	c519                	beqz	a0,800093c <__register_exitproc+0x36>
 8000930:	411c                	lw	a5,0(a0)
 8000932:	17fff517          	auipc	a0,0x17fff
 8000936:	7cf52123          	sw	a5,1986(a0) # 200000f4 <_global_atexit0+0x88>
 800093a:	87ba                	mv	a5,a4
 800093c:	43d8                	lw	a4,4(a5)
 800093e:	487d                	li	a6,31
 8000940:	557d                	li	a0,-1
 8000942:	04e84763          	blt	a6,a4,8000990 <__register_exitproc+0x8a>
 8000946:	020e0e63          	beqz	t3,8000982 <__register_exitproc+0x7c>
 800094a:	0887a803          	lw	a6,136(a5)
 800094e:	04080163          	beqz	a6,8000990 <__register_exitproc+0x8a>
 8000952:	00271893          	slli	a7,a4,0x2
 8000956:	98c2                	add	a7,a7,a6
 8000958:	00c8a023          	sw	a2,0(a7)
 800095c:	10082303          	lw	t1,256(a6)
 8000960:	4605                	li	a2,1
 8000962:	00e61633          	sll	a2,a2,a4
 8000966:	00c36333          	or	t1,t1,a2
 800096a:	10682023          	sw	t1,256(a6)
 800096e:	08d8a023          	sw	a3,128(a7)
 8000972:	4689                	li	a3,2
 8000974:	00de1763          	bne	t3,a3,8000982 <__register_exitproc+0x7c>
 8000978:	10482683          	lw	a3,260(a6)
 800097c:	8e55                	or	a2,a2,a3
 800097e:	10c82223          	sw	a2,260(a6)
 8000982:	00170693          	addi	a3,a4,1
 8000986:	070a                	slli	a4,a4,0x2
 8000988:	c3d4                	sw	a3,4(a5)
 800098a:	97ba                	add	a5,a5,a4
 800098c:	c78c                	sw	a1,8(a5)
 800098e:	4501                	li	a0,0
 8000990:	8082                	ret

08000992 <__call_exitprocs>:
 8000992:	7179                	addi	sp,sp,-48
 8000994:	cc52                	sw	s4,24(sp)
 8000996:	ca56                	sw	s5,20(sp)
 8000998:	c85a                	sw	s6,16(sp)
 800099a:	c65e                	sw	s7,12(sp)
 800099c:	d606                	sw	ra,44(sp)
 800099e:	d422                	sw	s0,40(sp)
 80009a0:	d226                	sw	s1,36(sp)
 80009a2:	d04a                	sw	s2,32(sp)
 80009a4:	ce4e                	sw	s3,28(sp)
 80009a6:	c462                	sw	s8,8(sp)
 80009a8:	8b2a                	mv	s6,a0
 80009aa:	8a2e                	mv	s4,a1
 80009ac:	17fffa97          	auipc	s5,0x17fff
 80009b0:	6bca8a93          	addi	s5,s5,1724 # 20000068 <_global_atexit>
 80009b4:	4b85                	li	s7,1
 80009b6:	000aa403          	lw	s0,0(s5)
 80009ba:	c811                	beqz	s0,80009ce <__call_exitprocs+0x3c>
 80009bc:	4044                	lw	s1,4(s0)
 80009be:	08842983          	lw	s3,136(s0)
 80009c2:	fff48913          	addi	s2,s1,-1
 80009c6:	048a                	slli	s1,s1,0x2
 80009c8:	94a2                	add	s1,s1,s0
 80009ca:	00095e63          	bgez	s2,80009e6 <__call_exitprocs+0x54>
 80009ce:	50b2                	lw	ra,44(sp)
 80009d0:	5422                	lw	s0,40(sp)
 80009d2:	5492                	lw	s1,36(sp)
 80009d4:	5902                	lw	s2,32(sp)
 80009d6:	49f2                	lw	s3,28(sp)
 80009d8:	4a62                	lw	s4,24(sp)
 80009da:	4ad2                	lw	s5,20(sp)
 80009dc:	4b42                	lw	s6,16(sp)
 80009de:	4bb2                	lw	s7,12(sp)
 80009e0:	4c22                	lw	s8,8(sp)
 80009e2:	6145                	addi	sp,sp,48
 80009e4:	8082                	ret
 80009e6:	000a0e63          	beqz	s4,8000a02 <__call_exitprocs+0x70>
 80009ea:	00099563          	bnez	s3,80009f4 <__call_exitprocs+0x62>
 80009ee:	197d                	addi	s2,s2,-1
 80009f0:	14f1                	addi	s1,s1,-4
 80009f2:	bfe1                	j	80009ca <__call_exitprocs+0x38>
 80009f4:	00291793          	slli	a5,s2,0x2
 80009f8:	97ce                	add	a5,a5,s3
 80009fa:	0807a783          	lw	a5,128(a5)
 80009fe:	ff4798e3          	bne	a5,s4,80009ee <__call_exitprocs+0x5c>
 8000a02:	4058                	lw	a4,4(s0)
 8000a04:	40dc                	lw	a5,4(s1)
 8000a06:	177d                	addi	a4,a4,-1
 8000a08:	03271863          	bne	a4,s2,8000a38 <__call_exitprocs+0xa6>
 8000a0c:	01242223          	sw	s2,4(s0)
 8000a10:	dff9                	beqz	a5,80009ee <__call_exitprocs+0x5c>
 8000a12:	00442c03          	lw	s8,4(s0)
 8000a16:	00098863          	beqz	s3,8000a26 <__call_exitprocs+0x94>
 8000a1a:	1009a683          	lw	a3,256(s3)
 8000a1e:	012b9733          	sll	a4,s7,s2
 8000a22:	8ef9                	and	a3,a3,a4
 8000a24:	ee89                	bnez	a3,8000a3e <__call_exitprocs+0xac>
 8000a26:	9782                	jalr	a5
 8000a28:	4058                	lw	a4,4(s0)
 8000a2a:	000aa783          	lw	a5,0(s5)
 8000a2e:	f98714e3          	bne	a4,s8,80009b6 <__call_exitprocs+0x24>
 8000a32:	faf40ee3          	beq	s0,a5,80009ee <__call_exitprocs+0x5c>
 8000a36:	b741                	j	80009b6 <__call_exitprocs+0x24>
 8000a38:	0004a223          	sw	zero,4(s1)
 8000a3c:	bfd1                	j	8000a10 <__call_exitprocs+0x7e>
 8000a3e:	00291693          	slli	a3,s2,0x2
 8000a42:	96ce                	add	a3,a3,s3
 8000a44:	428c                	lw	a1,0(a3)
 8000a46:	1049a683          	lw	a3,260(s3)
 8000a4a:	8f75                	and	a4,a4,a3
 8000a4c:	e701                	bnez	a4,8000a54 <__call_exitprocs+0xc2>
 8000a4e:	855a                	mv	a0,s6
 8000a50:	9782                	jalr	a5
 8000a52:	bfd9                	j	8000a28 <__call_exitprocs+0x96>
 8000a54:	852e                	mv	a0,a1
 8000a56:	9782                	jalr	a5
 8000a58:	bfc1                	j	8000a28 <__call_exitprocs+0x96>

08000a5a <_write>:
 8000a5a:	1141                	addi	sp,sp,-16
 8000a5c:	c606                	sw	ra,12(sp)
 8000a5e:	c422                	sw	s0,8(sp)
 8000a60:	4681                	li	a3,0
 8000a62:	4701                	li	a4,0
 8000a64:	4781                	li	a5,0
 8000a66:	04000893          	li	a7,64
 8000a6a:	00000073          	ecall
 8000a6e:	842a                	mv	s0,a0
 8000a70:	00055a63          	bgez	a0,8000a84 <_write+0x2a>
 8000a74:	40800433          	neg	s0,s0
 8000a78:	00000097          	auipc	ra,0x0
 8000a7c:	016080e7          	jalr	22(ra) # 8000a8e <__errno>
 8000a80:	c100                	sw	s0,0(a0)
 8000a82:	547d                	li	s0,-1
 8000a84:	8522                	mv	a0,s0
 8000a86:	40b2                	lw	ra,12(sp)
 8000a88:	4422                	lw	s0,8(sp)
 8000a8a:	0141                	addi	sp,sp,16
 8000a8c:	8082                	ret

08000a8e <__errno>:
 8000a8e:	17fff797          	auipc	a5,0x17fff
 8000a92:	5d278793          	addi	a5,a5,1490 # 20000060 <_impure_ptr>
 8000a96:	4388                	lw	a0,0(a5)
 8000a98:	8082                	ret
