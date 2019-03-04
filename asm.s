EOF: equ 0xffffffffffffffff
ERROR: equ 0xffffffffffffffff
NULL: equ 0x0000000000000000
SPACE: equ 0x0000000000000020
CR: equ 0x000000000000000d
LF: equ 0x000000000000000a
PLUS: equ 0x000000000000002b
MINUS: equ 0x000000000000002d
MULT: equ 0x000000000000002a
DIV: equ 0x000000000000002f
ESC: equ 0x000000000000001b
CONOUT: equ 0x0000000000000001
CONIN: equ 0x0000000000000002
NaN: equ 0x8000000000000000
STACK_SIZE: equ 0x0000000000002ee0
FILE_SIZE: equ 0x0000000000000010
TCB_SIZE: equ 0x0000000000000080
STATUS: equ 0x0000000000000000
CMD_LINE: equ 0x0000000000000008
START: equ 0x0000000000000010
SIZE: equ 0x0000000000000018
STACK: equ 0x0000000000000020
INDEV: equ 0x0000000000000028
OUTDEV: equ 0x0000000000000030
MESSAGE: equ 0x0000000000000038
CLIENT: equ 0x0000000000000040
RCX: equ 0x0000000000000048
RDX: equ 0x0000000000000050
RDI: equ 0x0000000000000058
RSI: equ 0x0000000000000060
NEXT_TCB: equ 0x0000000000000068
PREV_TCB: equ 0x0000000000000070
SP: equ 0x0000000000000078
RUN: equ 0x0000000000000001
STOP: equ 0x0000000000000000
SYNC: equ 0x0000000000000000
CREATE_TASK: equ 0x0000000000000001
EXIT_TASK: equ 0x0000000000000002
DELETE_TASK: equ 0x0000000000000003
RUN_TASK: equ 0x0000000000000004
GO_TASK: equ 0x0000000000000005
WAIT_TASK: equ 0x0000000000000006
STOP_TASK: equ 0x0000000000000007
SEND_MESSAGE: equ 0x0000000000000008
GET_MESSAGE: equ 0x0000000000000009
EXIT_PROCESS: equ 0x000000000000000a
_WIDE: equ 0x000000000000000b
_NALLOW: equ 0x000000000000000c
GETC: equ 0x000000000000000d
_READ: equ 0x000000000000000e
PUTC: equ 0x000000000000000f
_WRITE: equ 0x0000000000000010
WOPEN: equ 0x0000000000000011
ROPEN: equ 0x0000000000000012
OPEN: equ 0x0000000000000013
RCLOSE: equ 0x0000000000000014
WCLOSE: equ 0x0000000000000015
DELETE: equ 0x0000000000000016
VOL_OPEN: equ 0x0000000000000017
VOL_CLOSE: equ 0x0000000000000018
VOL_READ: equ 0x0000000000000019
FPRINTS: equ 0x000000000000001a
FPRINTD: equ 0x000000000000001b
FNL: equ 0x000000000000001c
FINPUTS: equ 0x000000000000001d
STRCMP: equ 0x000000000000001e
STRCPY: equ 0x000000000000001f
STRCAT: equ 0x0000000000000021
STRSTR: equ 0x0000000000000022
STRLEN: equ 0x0000000000000023
ATOI: equ 0x0000000000000024
ITOA: equ 0x0000000000000025
BIN: equ 0x0000000000000026
OCT: equ 0x0000000000000027
DEC: equ 0x0000000000000028
HEX: equ 0x0000000000000029
ABS: equ 0x000000000000002a
PALLOC: equ 0x000000000000002b
PFREE: equ 0x000000000000002c
MALLOC: equ 0x000000000000002d
FREE: equ 0x000000000000002e
LOAD: equ 0x000000000000002f
LOCATE_PROTOCOL: equ 0x0000000000000030
CLS: equ 0x0000000000000064
LOCATE: equ 0x0000000000000065
CURSOR: equ 0x0000000000000066
INKEY: equ 0x0000000000000067
GETCH: equ 0x0000000000000068
PUTCH: equ 0x0000000000000069
WPUTS: equ 0x000000000000006a
__sys_table: equ 0x000000000040a5e8
__boot_service: equ 0x000000000040a628
__critical: equ 0x000000000040a6f0
__stack_p: equ 0x000000000040a6f8
__int_enable: equ 0x000000000040a700
__int_busy: equ 0x000000000040a708
__sys_nest: equ 0x000000000040a710
time: equ 0x000000000040a720
SYS_CALL: equ 0x000000000040a728
SYS_EXT: equ 0x000000000040a730
tasks: equ 0x000000000040a738
present_task: equ 0x000000000040a740
__stack_top: equ 0x000000000040a748
tcb0: equ 0x000000000040a750
cmd_buf: equ 0x000000000040aa60
argc: equ 0x000000000040ad60
argv: equ 0x000000000040ad68
__prog_start: equ 0x000000000040ae48
__xxmain1:
 jmp __xxmain2
 align 8
__tcb:
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
 long 0
sync:
 r13=SYNC
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
create_task:
 r13=CREATE_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
exit_task:
 r13=EXIT_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
delete_task:
 r13=DELETE_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
run_task:
 r13=RUN_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
go_task:
 r13=GO_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
wait_task:
 r13=WAIT_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
stop_task:
 r13=STOP_TASK
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
send_message:
 r13=SEND_MESSAGE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
get_message:
 r13=GET_MESSAGE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
exit_process:
 r13=EXIT_PROCESS
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
_wide:
 r13=_WIDE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
_nallow:
 r13=_NALLOW
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
getc:
 r13=GETC
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
_read:
 r13=_READ
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
putc:
 r13=PUTC
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
_write:
 r13=_WRITE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
wopen:
 r13=WOPEN
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
ropen:
 r13=ROPEN
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
open:
 r13=OPEN
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
rclose:
 r13=RCLOSE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
wclose:
 r13=WCLOSE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
delete:
 r13=DELETE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
vol_open:
 r13=VOL_OPEN
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
vol_close:
 r13=VOL_CLOSE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
vol_read:
 r13=VOL_READ
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
fprints:
 r13=FPRINTS
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
fprintd:
 r13=FPRINTD
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
fnl:
 r13=FNL
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
finputs:
 r13=FINPUTS
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
strcmp:
 r13=STRCMP
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
strcpy:
 r13=STRCPY
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
strcat:
 r13=STRCAT
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
strstr:
 r13=STRSTR
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
strlen:
 r13=STRLEN
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
atoi:
 r13=ATOI
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
itoa:
 r13=ITOA
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
bin:
 r13=BIN
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
oct:
 r13=OCT
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
dec:
 r13=DEC
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
hex:
 r13=HEX
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
abs:
 r13=ABS
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
palloc:
 r13=PALLOC
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
pfree:
 r13=PFREE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
malloc:
 r13=MALLOC
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
free:
 r13=FREE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
load:
 r13=LOAD
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
locate_protocol:
 r13=LOCATE_PROTOCOL
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
cls:
 r13=CLS
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
locate:
 r13=LOCATE
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
cursor:
 r13=CURSOR
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
inkey:
 r13=INKEY
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
getch:
 r13=GETCH
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
putch:
 r13=PUTCH
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
wputs:
 r13=WPUTS
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+28
 (rax)=r15
 rax=SYS_CALL
 rax=(rax)
 jmp (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
putchar:
 rdx=rsi
 rsi=rdi
 rax=&stdout
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp putc
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
nl:
 rdx=rsi
 rsi=rdi
 rax=&stdout
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp fnl
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
prints:
 rdx=rsi
 rsi=rdi
 rax=&stdout
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp fprints
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
printd:
 rdx=rsi
 rsi=rdi
 rax=&stdout
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp fprintd
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
getchar:
 rdx=rsi
 rsi=rdi
 rax=&stdin
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp getc
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
inputs:
 rdx=rsi
 rsi=rdi
 rax=&stdin
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp finputs
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
restore:
 rax=&read_p
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
read:
 rdx=rsi
 rsi=rdi
 rax=&read_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=8
 rdi+=rsi
 rax=&read_p
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=-1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&read_p
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
__xxmain2:
 rdx=rsi
 rsi=rdi
 rdi=CONIN
 rax=&stdin
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=CONOUT
 rax=&stdout
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=INDEV/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&present_task
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&_indev
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=OUTDEV/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&present_task
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&_outdev
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&_indev
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz __xxmain3
 rdx=rsi
 rsi=rdi
 rax=&_indev
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=_infile
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp ropen
 rax=&_f
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&_f
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jz L327
 rdx=rsi
 rsi=rdi
 rdi=_infile
 rax=&stdin
 (rax)=rdi
L327:
__xxmain3:
 rdx=rsi
 rsi=rdi
 rax=&_outdev
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz __xxmain4
 rdx=rsi
 rsi=rdi
 rax=&_outdev
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=_outfile
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp wopen
 rax=&_f
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&_f
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jz L331
 rdx=rsi
 rsi=rdi
 rdi=_outfile
 rax=&stdout
 (rax)=rdi
L331:
__xxmain4:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp main
 rdx=rsi
 rsi=rdi
 rax=&stdin
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp rclose
 rdx=rsi
 rsi=rdi
 rax=&stdout
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp wclose
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp exit_process
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
MOUSE_X: equ 0
MOUSE_Y: equ 4
MOUSE_LEFT: equ 12
MOUSE_RIGHT: equ 13
MOUSE_SENSIVITY: equ 6000
MAX_MOUSE_SPEED: equ 10
CURSOR_SIZE: equ 16
FONT_WIDTH: equ 14
FONT_HEIGHT: equ 18
main:
 rdx=rsi
 rsi=rdi
 rdi=graphic_guid
 rdx=rsi
 rsi=rdi
 rdi=graphic_protocol
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp locate_protocol
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&graphic_protocol
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&set_mode
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&graphic_protocol
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&graphic_mode
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&graphic_mode
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&graphic_info
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&graphic_mode
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&graphic_base
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rcx=&graphic_info
 rcx=(rcx)
 rcx+=rax
 eax=(rcx)
 ext eax
 rdi=rax
 rax=&screen_width
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rcx=&graphic_info
 rcx=(rcx)
 rcx+=rax
 eax=(rcx)
 ext eax
 rdi=rax
 rax=&screen_height
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=pointer_guid
 rdx=rsi
 rsi=rdi
 rdi=pointer_protocol
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp locate_protocol
 rdx=rsi
 rsi=rdi
 rax=0
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&pointer_protocol
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&mouse_reset
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&pointer_protocol
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&mouse_get_state
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp malloc
 rax=&copy_area
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&copy_area
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L382
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L382:
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 rdx=rsi
 rsi=rdi
 rdi=FONT_HEIGHT
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=256
 rax=rdi
 mul rsi
 rdi=rax
 rax=&tt
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp malloc
 rax=&font_area
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&font_area
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L384
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L384:
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=8
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&tt
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=0
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&font_area
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp load_cursor
 rax=&k
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L393
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L393:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp load_font
 rax=&k
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L395
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L395:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp load_wallpaper
 rdx=rsi
 rsi=rdi
 rdi=0xffffff
 rax=&color
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&mouse_mode
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=MAX_MOUSE_SPEED-1
 rax=&mouse_speed
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&mouse_x
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&mouse_y
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp init_mouse
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp save_cursor_area
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_cursor
loop:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp get_mouse_state
 rax=&k
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jlt exit
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz skip
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp restore_cursor_area
 rdx=rsi
 rsi=rdi
 rax=&mouse_x
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&mouse_dx
 rdi=(rax)
 rdi+=rsi
 rax=&mouse_x
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&mouse_y
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&mouse_dy
 rdi=(rax)
 rdi+=rsi
 rax=&mouse_y
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&mouse_x
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L413
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&mouse_x
 (rax)=rdi
L413:
 rdx=rsi
 rsi=rdi
 rax=&mouse_x
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rsi-rdi
 jlt L414
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_x
 (rax)=rdi
L414:
 rdx=rsi
 rsi=rdi
 rax=&mouse_y
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L415
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&mouse_y
 (rax)=rdi
L415:
 rdx=rsi
 rsi=rdi
 rax=&mouse_y
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rsi-rdi
 jlt L416
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_y
 (rax)=rdi
L416:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp save_cursor_area
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_cursor
skip:
 jmp loop
exit:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp cls
 rdx=rsi
 rsi=rdi
 rax=&copy_area
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp free
 rdx=rsi
 rsi=rdi
 rax=&font_area
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp free
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
init_screen:
 rcx=graphic_protocol
 rcx=(rcx)
 rdx=rdi
 rax=set_mode
 rax=(rax)
 call (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
init_mouse:
 rcx=pointer_protocol
 rcx=(rcx)
 rdx=0
 rax=mouse_reset
 rax=(rax)
 call (rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
get_mouse_state:
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&mouse_left
 (rax)=rdi
 rax=&mouse_right
 (rax)=rdi
 rax=&mouse_dx
 (rax)=rdi
 rax=&mouse_dy
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp inkey
 rax=&k
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=262144
 rsi-rdi
 jnz L460
 rdx=rsi
 rsi=rdi
 rdi=-1
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L460:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=7
 rsi-rdi
 jnz L461
 rdx=rsi
 rsi=rdi
 rdi=1
 rdx=rsi
 rsi=rdi
 rax=&mouse_mode
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_mode
 (rax)=rdi
L461:
 rdx=rsi
 rsi=rdi
 rax=&mouse_mode
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz get_keyboad_mouse
 rcx=pointer_protocol
 rcx=(rcx)
 rdx=mouse_data
 rax=mouse_get_state
 rax=(rax)
 call (rax)
 rdi=rax
 rax=&k
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L471
 rdx=rsi
 rsi=rdi
 rdi=0
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L471:
 rdx=rsi
 rsi=rdi
 rax=&mouse_data+MOUSE_X
 eax=(rax)
 ext eax
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=MOUSE_SENSIVITY
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&mouse_dx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&mouse_data+MOUSE_Y
 eax=(rax)
 ext eax
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=MOUSE_SENSIVITY
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&mouse_dy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&mouse_data+MOUSE_LEFT
 al=(rax)
 ext al
 rdi=rax
 rax=&mouse_left
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&mouse_data+MOUSE_RIGHT
 al=(rax)
 ext al
 rdi=rax
 rax=&mouse_right
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
get_keyboad_mouse:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L481
 rdx=rsi
 rsi=rdi
 rdi=0
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L481:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L482
 rdx=rsi
 rsi=rdi
 rdi=0
 rdx=rsi
 rsi=rdi
 rax=&mouse_speed
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_dy
 (rax)=rdi
L482:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=2
 rsi-rdi
 jnz L483
 rdx=rsi
 rsi=rdi
 rax=&mouse_speed
 rdi=(rax)
 rax=&mouse_dy
 (rax)=rdi
L483:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=3
 rsi-rdi
 jnz L484
 rdx=rsi
 rsi=rdi
 rax=&mouse_speed
 rdi=(rax)
 rax=&mouse_dx
 (rax)=rdi
L484:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rsi-rdi
 jnz L485
 rdx=rsi
 rsi=rdi
 rdi=0
 rdx=rsi
 rsi=rdi
 rax=&mouse_speed
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_dx
 (rax)=rdi
L485:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=6
 rsi-rdi
 jnz L486
 rdx=rsi
 rsi=rdi
 rdi=MAX_MOUSE_SPEED
 rdx=rsi
 rsi=rdi
 rax=&mouse_speed
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_speed
 (rax)=rdi
L486:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=8
 rsi-rdi
 jnz L487
 rdx=rsi
 rsi=rdi
 rdi=MAX_MOUSE_SPEED
 rdx=rsi
 rsi=rdi
 rax=&mouse_speed
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&mouse_speed
 (rax)=rdi
L487:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=2097152
 rsi-rdi
 jnz L488
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&mouse_left
 (rax)=rdi
L488:
 rdx=rsi
 rsi=rdi
 rax=&k
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=851968
 rsi-rdi
 jnz L489
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&mouse_right
 (rax)=rdi
L489:
 rdx=rsi
 rsi=rdi
 rdi=1
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
save_cursor_area:
 rdx=rsi
 rsi=rdi
 rax=&mouse_x
 rdi=(rax)
 rax=&x0
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE-1
 rdi+=rsi
 rax=&x1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rsi-rdi
 jlt L496
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&x1
 (rax)=rdi
L496:
 rdx=rsi
 rsi=rdi
 rax=&mouse_y
 rdi=(rax)
 rax=&y0
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE-1
 rdi+=rsi
 rax=&y1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rsi-rdi
 jlt L498
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&y1
 (rax)=rdi
L498:
 rdx=rsi
 rsi=rdi
 rdi=mouse_cursor_area
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y0
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y1
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x0
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x1
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&pp
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&qq
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
restore_cursor_area:
 rdx=rsi
 rsi=rdi
 rdi=mouse_cursor_area
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y0
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y1
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x0
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x1
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&pp
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
draw_cursor:
 rdx=rsi
 rsi=rdi
 rax=&mouse_x
 rdi=(rax)
 rax=&x2
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE-1
 rdi+=rsi
 rax=&x3
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x3
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rsi-rdi
 jlt L528
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&x3
 (rax)=rdi
L528:
 rdx=rsi
 rsi=rdi
 rax=&mouse_y
 rdi=(rax)
 rax=&y2
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE-1
 rdi+=rsi
 rax=&y3
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y3
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rsi-rdi
 jlt L530
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&y3
 (rax)=rdi
L530:
 rdx=rsi
 rsi=rdi
 rax=&y2
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&y3
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x2
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&x3
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&y2
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=&x2
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=mouse_cursor
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=0xff000000
 rdi&=rsi
 rax=&tt
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L538
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&pp
 rax=(rax)
 rcx=rdi
 (rax)=ecx
L538:
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
load_cursor:
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE
 rdx=rsi
 rsi=rdi
 rdi=CURSOR_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=S3
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp ropen
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz L548
 rdx=rsi
 rsi=rdi
 rdi=-1
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L548:
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=mouse_cursor
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp _read
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp rclose
 rdx=rsi
 rsi=rdi
 rdi=0
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
load_font:
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 rdx=rsi
 rsi=rdi
 rdi=FONT_HEIGHT
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=256
 rax=rdi
 mul rsi
 rdi=rax
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=S4
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp ropen
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz L558
 rdx=rsi
 rsi=rdi
 rdi=-1
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L558:
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&font_area
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp _read
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp rclose
 rdx=rsi
 rsi=rdi
 rdi=0
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
load_wallpaper:
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=S5
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp ropen
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz L568
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L568:
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp _read
 rdx=rsi
 rsi=rdi
 rdi=fp
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp rclose
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
set_color:
 rax=&color
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
get_color:
 rdx=rsi
 rsi=rdi
 rax=&color
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
draw_point:
 rax=&py
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&px
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&color
 rdi=(rax)
 rax=&pp
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
get_point:
 rax=&py
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&px
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&pp
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
DrawLine:
 rax=&al
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&al
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&al
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&al
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&al
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy1
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp line
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
line:
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&tx
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp abs
 rax=&rx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&ty
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp abs
 rax=&ry
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rsi-rdi
 jlt line_y
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jnz L616
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L616:
line_x:
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&rx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L621
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&rx
 (rax)=rdi
L621:
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ix
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rax=&ix+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&ix+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ix+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdi+=rsi
 rax=&ry
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ix+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ix+16
 rdi=(rax)
 rdi+=rsi
 rax=&ix
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ix+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
line_y:
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ry
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L630
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&ry
 (rax)=rdi
L630:
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&iy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rax=&iy+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&iy+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&iy+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdi+=rsi
 rax=&rx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 exg rdi,rsi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&iy+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&iy+16
 rdi=(rax)
 rdi+=rsi
 rax=&iy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&iy+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
DrawRect:
 rax=&ar
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ar
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ar
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ar
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ar
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy1
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp rect
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
FillRect:
 rax=&arf
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy1
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp rect
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&arf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp paint
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
rect:
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&rx
 (rax)=rdi
 rax=&ry
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rsi-rdi
 jge L662
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&ry
 (rax)=rdi
L662:
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jge L663
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&rx
 (rax)=rdi
L663:
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&ix
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&ix+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&ix+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ix+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ix+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ix+16
 rdi=(rax)
 rdi+=rsi
 rax=&ix
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ix+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&iy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&iy+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&iy+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&iy+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&iy+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&iy+16
 rdi=(rax)
 rdi+=rsi
 rax=&iy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&iy+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
DrawCircle:
 rax=&ac
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ac
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ac
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ac
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ac
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy1
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp circle
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
FillCircle:
 rax=&acf
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy1
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp circle
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&acf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp paint
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
circle:
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&vx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&vy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&vx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&vy1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jge L699
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 exg rdi,rsi
 rax=&gx
 (rax)=rdi
 exg rdi,rsi
 rax=&gx1
 (rax)=rdi
L699:
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rsi-rdi
 jge L700
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 exg rdi,rsi
 rax=&gy
 (rax)=rdi
 exg rdi,rsi
 rax=&gy1
 (rax)=rdi
L700:
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&px
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&py
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&qx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L704
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp line
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L704:
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rdx=rsi
 rsi=rdi
 rdi=2
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&qy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L706
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp line
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L706:
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 rax=&gy1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=TABLE_N
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&cos2table
 rcx+=rax
 rdi=(rcx)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=32767
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdi+=rsi
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&sin2table
 rcx+=rax
 rdi=(rcx)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=32767
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 rdi+=rsi
 rax=&gy
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp line
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&gy1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&vx1
 rdi=(rax)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&vy1
 rdi=(rax)
 rax=&gy1
 (rax)=rdi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
DrawTriangle:
 rax=&at
 (rax)=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rdi=48
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp DrawLine
 rax=6
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=5
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rdi=48
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp DrawLine
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=6
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=5
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&at
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rdi=48
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp DrawLine
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
FillTriangle:
 rax=&atf
 (rax)=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rdi=48
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp DrawLine
 rax=6
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=5
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rdi=48
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp DrawLine
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=6
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rax=5
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 rdi=48
 rax=__stack_p
 rcx=(rax)
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 rcx--
 (rax)=rcx
 (rcx)=rdi
 rdi=rcx
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp DrawLine
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=5
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=3
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=6
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&atf
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=3
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp paint
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
paint:
Q_SIZE: equ 4096
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&put_p
 (rax)=rdi
 rax=&get_p
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&co
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&color
 rdi=(rax)
 rsi-rdi
 jnz L752
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L752:
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp put_pset
paint1:
 rdx=rsi
 rsi=rdi
 rax=&get_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&put_p
 rdi=(rax)
 rsi-rdi
 jnz L756
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L756:
 rdx=rsi
 rsi=rdi
 rcx=&get_p
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&q_buf
 rcx+=rax
 rdi=(rcx)
 rax=&vx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&get_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&get_p
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rcx=&get_p
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&q_buf
 rcx+=rax
 rdi=(rcx)
 rax=&vy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&get_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&get_p
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&get_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=Q_SIZE
 rsi-rdi
 jlt L761
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&get_p
 (rax)=rdi
L761:
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp put_pset
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp put_pset
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 exg rdi,rsi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp put_pset
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 exg rdi,rsi
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp put_pset
 jmp paint1
put_pset:
 rax=&qy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&qx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L773
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L773:
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rsi-rdi
 jlt L774
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L774:
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L775
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L775:
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rsi-rdi
 jlt L776
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L776:
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp get_point
 rax=&co
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&co
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&color
 rdi=(rax)
 rsi-rdi
 jnz L778
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L778:
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 rcx=&put_p
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&q_buf
 rcx+=rax
 (rcx)=rdi
 rdx=rsi
 rsi=rdi
 rax=&put_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&put_p
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 rcx=&put_p
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&q_buf
 rcx+=rax
 (rcx)=rdi
 rdx=rsi
 rsi=rdi
 rax=&put_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&put_p
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&put_p
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=Q_SIZE
 rsi-rdi
 jlt L784
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&put_p
 (rax)=rdi
L784:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
GCopy:
 rax=&ap
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ap
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ap
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=3
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ap
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=4
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&ap
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=&gy1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rsi-rdi
 jlt L793
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gx1
 (rax)=rdi
L793:
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rsi-rdi
 jlt L794
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gy1
 (rax)=rdi
L794:
 rdx=rsi
 rsi=rdi
 rax=&copy_area
 rdi=(rax)
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&qq
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&qq
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&pp
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&qq
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 rcx=(rax)
 r15=(rcx)
 r14=8(rcx)
 rcx+=r14
 (rax)=rcx
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 jmp (rax)
gpaste:
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&gx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&copy_area
 rdi=(rax)
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&rx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L816
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L816:
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&ry
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L819
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L819:
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rdi+=rsi
 rax=&gx1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rdi+=rsi
 rax=&gy1
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rsi-rdi
 jlt L823
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gx1
 (rax)=rdi
L823:
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rsi-rdi
 jlt L824
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gy1
 (rax)=rdi
L824:
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&pp
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
draw_string:
 rax=&ss
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&py
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&px
 (rax)=rdi
draw_string1:
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L840
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
L840:
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_font
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 rdi+=rsi
 rax=&px
 (rax)=rdi
 rcx=&ss
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp draw_string1
draw_font:
 rax=&pp
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&ty
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rax=&tx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rdi=FONT_HEIGHT
 rax=rdi
 mul rsi
 rdi=rax
 rdx=rsi
 rsi=rdi
 rax=&font_area
 rdi=(rax)
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH-1
 rdi+=rsi
 rax=&rx
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=FONT_HEIGHT-1
 rdi+=rsi
 rax=&ty
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L855
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 r15=$+18
 (rax)=r15
 jmp draw_point
L855:
 rcx=&qq
 rax=(rcx)
 rax++
 (rcx)=rax
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+73
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 r14=0
 rax=__critical
 (rax)=r14
 rax=r15
 rax=-8(rax)
 jmp (rax)
 align 8
graphic_guid:
 long 0x4a3823dc9042a9de
 long 0x6a5180d0de7afb96
pointer_guid:
 long 0x11d50b7531878c87
 long 0x4dc13f2790004f9a
TABLE_N: equ 256
sin2table:
 long 0
 long 804
 long 1607
 long 2410
 long 3211
 long 4011
 long 4807
 long 5601
 long 6392
 long 7179
 long 7961
 long 8739
 long 9511
 long 10278
 long 11038
 long 11792
 long 12539
 long 13278
 long 14009
 long 14732
 long 15446
 long 16150
 long 16845
 long 17530
 long 18204
 long 18867
 long 19519
 long 20159
 long 20787
 long 21402
 long 22004
 long 22594
 long 23169
 long 23731
 long 24278
 long 24811
 long 25329
 long 25831
 long 26318
 long 26789
 long 27244
 long 27683
 long 28105
 long 28510
 long 28897
 long 29268
 long 29621
 long 29955
 long 30272
 long 30571
 long 30851
 long 31113
 long 31356
 long 31580
 long 31785
 long 31970
 long 32137
 long 32284
 long 32412
 long 32520
 long 32609
 long 32678
 long 32727
 long 32757
cos2table:
 long 32767
 long 32757
 long 32727
 long 32678
 long 32609
 long 32520
 long 32412
 long 32284
 long 32137
 long 31970
 long 31785
 long 31580
 long 31356
 long 31113
 long 30851
 long 30571
 long 30272
 long 29955
 long 29621
 long 29268
 long 28897
 long 28510
 long 28105
 long 27683
 long 27244
 long 26789
 long 26318
 long 25831
 long 25329
 long 24811
 long 24278
 long 23731
 long 23169
 long 22594
 long 22004
 long 21402
 long 20787
 long 20159
 long 19519
 long 18867
 long 18204
 long 17530
 long 16845
 long 16150
 long 15446
 long 14732
 long 14009
 long 13278
 long 12539
 long 11792
 long 11038
 long 10278
 long 9511
 long 8739
 long 7961
 long 7179
 long 6392
 long 5601
 long 4807
 long 4011
 long 3211
 long 2410
 long 1607
 long 804
 long 0
 long -805
 long -1608
 long -2411
 long -3212
 long -4012
 long -4808
 long -5602
 long -6393
 long -7180
 long -7962
 long -8740
 long -9512
 long -10279
 long -11039
 long -11793
 long -12540
 long -13279
 long -14010
 long -14733
 long -15447
 long -16151
 long -16846
 long -17531
 long -18205
 long -18868
 long -19520
 long -20160
 long -20788
 long -21403
 long -22005
 long -22595
 long -23170
 long -23732
 long -24279
 long -24812
 long -25330
 long -25832
 long -26319
 long -26790
 long -27245
 long -27684
 long -28106
 long -28511
 long -28898
 long -29269
 long -29622
 long -29956
 long -30273
 long -30572
 long -30852
 long -31114
 long -31357
 long -31581
 long -31786
 long -31971
 long -32138
 long -32285
 long -32413
 long -32521
 long -32610
 long -32679
 long -32728
 long -32758
 long -32767
 long -32758
 long -32728
 long -32679
 long -32610
 long -32521
 long -32413
 long -32285
 long -32138
 long -31971
 long -31786
 long -31581
 long -31357
 long -31114
 long -30852
 long -30572
 long -30273
 long -29956
 long -29622
 long -29269
 long -28898
 long -28511
 long -28106
 long -27684
 long -27245
 long -26790
 long -26319
 long -25832
 long -25330
 long -24812
 long -24279
 long -23732
 long -23170
 long -22595
 long -22005
 long -21403
 long -20788
 long -20160
 long -19520
 long -18868
 long -18205
 long -17531
 long -16846
 long -16151
 long -15447
 long -14733
 long -14010
 long -13279
 long -12540
 long -11793
 long -11039
 long -10279
 long -9512
 long -8740
 long -7962
 long -7180
 long -6393
 long -5602
 long -4808
 long -4012
 long -3212
 long -2411
 long -1608
 long -805
 long -1
 long 804
 long 1607
 long 2410
 long 3211
 long 4011
 long 4807
 long 5601
 long 6392
 long 7179
 long 7961
 long 8739
 long 9511
 long 10278
 long 11038
 long 11792
 long 12539
 long 13278
 long 14009
 long 14732
 long 15446
 long 16150
 long 16845
 long 17530
 long 18204
 long 18867
 long 19519
 long 20159
 long 20787
 long 21402
 long 22004
 long 22594
 long 23169
 long 23731
 long 24278
 long 24811
 long 25329
 long 25831
 long 26318
 long 26789
 long 27244
 long 27683
 long 28105
 long 28510
 long 28897
 long 29268
 long 29621
 long 29955
 long 30272
 long 30571
 long 30851
 long 31113
 long 31356
 long 31580
 long 31785
 long 31970
 long 32137
 long 32284
 long 32412
 long 32520
 long 32609
 long 32678
 long 32727
 long 32757
 long 32767
  align 8
S1:
  byte 115
  byte 116
  byte 100
  byte 105
  byte 111
  byte 46
  byte 98
  byte 97
  byte 115
  byte 101
  byte 0
S2:
  byte 115
  byte 116
  byte 100
  byte 105
  byte 111
  byte 46
  byte 114
  byte 104
  byte 0
S3:
  byte 99
  byte 117
  byte 114
  byte 115
  byte 111
  byte 114
  byte 46
  byte 100
  byte 97
  byte 116
  byte 0
S4:
  byte 102
  byte 111
  byte 110
  byte 116
  byte 46
  byte 100
  byte 97
  byte 116
  byte 0
S5:
  byte 119
  byte 97
  byte 108
  byte 108
  byte 112
  byte 97
  byte 112
  byte 101
  byte 114
  byte 46
  byte 100
  byte 97
  byte 116
  byte 0
  align 8
 align 8
read_p: memory 8
 align 8
_indev: memory 8
_outdev: memory 8
stdin: memory 8
stdout: memory 8
_f: memory 8
 align 8
_infile: memory FILE_SIZE
_outfile: memory FILE_SIZE
 align 8
graphic_protocol: memory 8
 align 8
pointer_protocol: memory 8
 align 8
graphic_mode: memory 8
graphic_info: memory 8
graphic_base: memory 8
 align 8
set_mode: memory 8
screen_width: memory 8
screen_height: memory 8
color: memory 8
co: memory 8
 align 8
mouse_reset: memory 8
mouse_get_state: memory 8
 align 8
mouse_x: memory 8
mouse_y: memory 8
mouse_left: memory 8
mouse_right: memory 8
mouse_mode: memory 8
mouse_speed: memory 8
 align 8
mouse_dx: memory 8
mouse_dy: memory 8
copy_area: memory 8
font_area: memory 8
k: memory 8
 align 8
mouse_cursor: memory 1024
mouse_cursor_area: memory 1024
mouse_data: memory 16
 align 8
ii: memory 32
jj: memory 32
ix: memory 32
iy: memory 32
 align 8
x0: memory 8
y0: memory 8
x1: memory 8
y1: memory 8
pp: memory 8
qq: memory 8
 align 8
x2: memory 8
x3: memory 8
y2: memory 8
y3: memory 8
ss: memory 8
tt: memory 8
 align 8
px: memory 8
py: memory 8
qx: memory 8
qy: memory 8
 align 8
tx: memory 8
ty: memory 8
rx: memory 8
ry: memory 8
 align 8
vx: memory 8
vy: memory 8
vx1: memory 8
vy1: memory 8
flg: memory 8
 align 8
gx: memory 8
gx1: memory 8
gx2: memory 8
gx3: memory 8
gx4: memory 8
 align 8
gy: memory 8
gy1: memory 8
gy2: memory 8
gy3: memory 8
gy4: memory 8
 align 8
fp: memory FILE_SIZE
 align 8
al: memory 8
 align 8
ar: memory 8
 align 8
arf: memory 8
 align 8
ac: memory 8
 align 8
acf: memory 8
 align 8
at: memory 8
 align 8
atf: memory 8
 align 8
q_buf: memory Q_SIZE*8
 align 8
put_p: memory 8
get_p: memory 8
 align 8
ap: memory 8
