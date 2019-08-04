EOF: = 0xffffffffffffffff
ERROR: = 0xffffffffffffffff
NULL: = 0x0000000000000000
SPACE: = 0x0000000000000020
CR: = 0x000000000000000d
LF: = 0x000000000000000a
PLUS: = 0x000000000000002b
MINUS: = 0x000000000000002d
MULT: = 0x000000000000002a
DIV: = 0x000000000000002f
ESC: = 0x000000000000001b
CONOUT: = 0x0000000000000001
CONIN: = 0x0000000000000002
NaN: = 0x8000000000000000
FILE_SIZE: = 0x0000000000000010
VOL_SIZE: = 0x0000000000000400
VOL_FP: = 0x0000000000000000
FILE_FP: = 0x0000000000000008
VOL_CLOSE0: = 0x0000000000000010
VOL_READ0: = 0x0000000000000020
FILE_OPEN: = 0x0000000000000008
FILE_CLOSE: = 0x0000000000000010
FILE_DELETE: = 0x0000000000000018
FILE_READ: = 0x0000000000000020
FILE_WRITE: = 0x0000000000000028
FILE_SET_POS: = 0x0000000000000030
FILE_GET_POS: = 0x0000000000000038
FILE_GET_INFO: = 0x0000000000000040
FILE_SET_INFO: = 0x0000000000000048
FILE_FLUSH: = 0x0000000000000050
TCB_SIZE: = 0x0000000000000080
STATUS: = 0x0000000000000000
CMD_LINE: = 0x0000000000000008
START: = 0x0000000000000010
SIZE: = 0x0000000000000018
STACK: = 0x0000000000000020
INDEV: = 0x0000000000000028
OUTDEV: = 0x0000000000000030
MESSAGE: = 0x0000000000000038
CLIENT: = 0x0000000000000040
RCX: = 0x0000000000000048
RDX: = 0x0000000000000050
RDI: = 0x0000000000000058
RSI: = 0x0000000000000060
NEXT_TCB: = 0x0000000000000068
PREV_TCB: = 0x0000000000000070
SP: = 0x0000000000000078
RUN: = 0x0000000000000000
READY: = 0x0000000000000001
WAIT: = 0x0000000000000002
dprint: = 0x0000000000401640
SYNC: = 0x0000000000000000
CREATE_TASK: = 0x0000000000000001
EXIT_TASK: = 0x0000000000000002
KILL_TASK: = 0x0000000000000003
RUN_TASK: = 0x0000000000000004
STOP_TASK: = 0x0000000000000005
WAIT_TASK: = 0x0000000000000006
GO_TASK: = 0x0000000000000007
RET_TASK: = 0x0000000000000008
SEND_MESSAGE: = 0x0000000000000009
GET_MESSAGE: = 0x000000000000000a
EXIT_PROCESS: = 0x000000000000000b
_WIDE: = 0x000000000000000c
_NALLOW: = 0x000000000000000d
GETC: = 0x000000000000000e
_READ: = 0x000000000000000f
PUTC: = 0x0000000000000010
_WRITE: = 0x0000000000000011
WOPEN: = 0x0000000000000012
ROPEN: = 0x0000000000000013
OPEN: = 0x0000000000000014
RCLOSE: = 0x0000000000000015
WCLOSE: = 0x0000000000000016
DELETE: = 0x0000000000000017
VOL_OPEN: = 0x0000000000000018
VOL_CLOSE: = 0x0000000000000019
VOL_READ: = 0x000000000000001a
FPRINTS: = 0x000000000000001b
FPRINTD: = 0x000000000000001c
FNL: = 0x000000000000001d
FINPUTS: = 0x000000000000001e
STRCMP: = 0x000000000000001f
STRNCMP: = 0x0000000000000020
STRCPY: = 0x0000000000000021
STRNCPY: = 0x0000000000000022
STRCAT: = 0x0000000000000023
STRNCAT: = 0x0000000000000024
STRSTR: = 0x0000000000000025
STRLEN: = 0x0000000000000026
ATOI: = 0x0000000000000027
ITOA: = 0x0000000000000028
BIN: = 0x0000000000000029
OCT: = 0x000000000000002a
DEC: = 0x000000000000002b
HEX: = 0x000000000000002c
ABS: = 0x000000000000002d
PALLOC: = 0x000000000000002e
PFREE: = 0x000000000000002f
MALLOC: = 0x0000000000000030
FREE: = 0x0000000000000031
LOAD: = 0x0000000000000032
EXEC_COMMAND: = 0x0000000000000033
LOCATE_PROTOCOL: = 0x0000000000000034
CLS: = 0x0000000000000064
LOCATE: = 0x0000000000000065
CURSOR: = 0x0000000000000066
INKEY: = 0x0000000000000067
GETCH: = 0x0000000000000068
PUTCH: = 0x0000000000000069
WPUTS: = 0x000000000000006a
__sys_table: = 0x000000000040c570
__boot_service: = 0x000000000040c5b0
__critical: = 0x000000000040c680
__stack_p: = 0x000000000040c688
__int_enable: = 0x000000000040c690
__int_busy: = 0x000000000040c698
__sys_nest: = 0x000000000040c6a0
time: = 0x000000000040c6b0
SYS_CALL: = 0x000000000040c6b8
SYS_EXT: = 0x000000000040c6c0
tasks: = 0x000000000040c6c8
present_task: = 0x000000000040c6d0
__stack_top: = 0x000000000040c6d8
tcb0: = 0x000000000040c6e0
cmd_buf: = 0x000000000040c870
argc: = 0x000000000040cb70
argv: = 0x000000000040cb78
__prog_start: = 0x000000000040cde8
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
kill_task:
 r13=KILL_TASK
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
ret_task:
 r13=RET_TASK
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
strncmp:
 r13=STRNCMP
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
strncpy:
 r13=STRNCPY
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
strncat:
 r13=STRNCAT
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
exec_command:
 r13=EXEC_COMMAND
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&read_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=8
 rdi+=rsi
 rax=&read_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
wait:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&time
 rdi=(rax)
 rdi+=rsi
 rax=&_time_limit
 (rax)=rdi
__wait1:
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
 jmp sync
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_time_limit
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&time
 rdi=(rax)
 rsi-rdi
 jge __wait1
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=CONIN
 rax=&stdin
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=CONOUT
 rax=&stdout
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_indev
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz __xxmain3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_indev
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_f
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jz L357
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_infile
 rax=&stdin
 (rax)=rdi
L357:
__xxmain3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_outdev
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz __xxmain4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_outdev
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&_f
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jz L361
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_outfile
 rax=&stdout
 (rax)=rdi
L361:
__xxmain4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=CMD_LINE
 rcx=&present_task
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=66
 rsi-rdi
 jnz L363
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S3
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
 jmp prints
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
 jmp nl
L363:
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=CMD_LINE
 rcx=&present_task
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=70
 rsi-rdi
 jnz L367
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=CLIENT/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&present_task
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
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
 jmp run_task
L367:
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
Component.subclass: = 0x0000000000000000
Component.type: = 0x0000000000000008
Component.parent: = 0x0000000000000010
Component.top_child: = 0x0000000000000018
Component.end_child: = 0x0000000000000020
Component.next: = 0x0000000000000028
Component.prev: = 0x0000000000000030
Component.look_and_feel: = 0x0000000000000038
Component.status: = 0x0000000000000040
Component.is_visible: = 0x0000000000000048
Component.is_focusable: = 0x0000000000000050
Component.is_painting: = 0x0000000000000058
Component.foreground: = 0x0000000000000060
Component.background: = 0x0000000000000068
Component.border: = 0x0000000000000070
Component.x: = 0x0000000000000078
Component.y: = 0x0000000000000080
Component.width: = 0x0000000000000088
Component.height: = 0x0000000000000090
Component.left: = 0x0000000000000098
Component.top: = 0x00000000000000a0
Component.right: = 0x00000000000000a8
Component.bottom: = 0x00000000000000b0
Component.SIZE: = 0x00000000000000b8
TYPE_OTHER: = 0x0000000000000000
TYPE_LABEL: = 0x0000000000000001
TYPE_BUTTON: = 0x0000000000000002
TYPE_CHECKBOX: = 0x0000000000000003
TYPE_RADIOBUTTON: = 0x0000000000000004
TYPE_HSCROLLBAR: = 0x0000000000000005
TYPE_VSCROLLBAR: = 0x0000000000000006
TYPE_TEXTFIELD: = 0x0000000000000007
TYPE_TEXTAREA: = 0x0000000000000008
TYPE_WINDOW: = 0x0000000000000009
TYPE_DESKTOP: = 0x000000000000000a
TYPE_MENU: = 0x000000000000000b
TYPE_LIST: = 0x000000000000000c
TYPE_TABLE: = 0x000000000000000d
create_component: = 0x00000000004115da
remove_component: = 0x0000000000411f39
repaint: = 0x0000000000413eec
NULL_BORDER: = 0x0000000000000000
LINE_BORDER: = 0x0000000000000001
RAISED_BORDER: = 0x0000000000000002
LOWERD_BORDER: = 0x0000000000000003
is_visible: = 0x00000000004163dc
set_visible: = 0x0000000000416c0f
is_on_rectangle: = 0x0000000000416e00
is_on_component: = 0x0000000000417254
pop_up_component: = 0x0000000000418366
set_bounds: = 0x000000000041888e
request_focus: = 0x0000000000418cc0
no_operation: = 0x0000000000418f5a
Label.subclass: = 0x0000000000000000
Label.text: = 0x0000000000000008
Label.paint: = 0x0000000000000010
Label.component: = 0x0000000000000020
Label.SIZE: = 0x00000000000000d8
create_label: = 0x0000000000418ff8
set_label_text: = 0x0000000000419b1b
Button.subclass: = 0x0000000000000000
Button.text: = 0x0000000000000008
Button.imagefile: = 0x0000000000000010
Button.image: = 0x0000000000000018
Button.command: = 0x0000000000000020
Button.lclicked: = 0x0000000000000028
Button.lclicked2: = 0x0000000000000030
Button.rclicked: = 0x0000000000000038
Button.paint: = 0x0000000000000040
Button.component: = 0x0000000000000050
Button.SIZE: = 0x0000000000000108
create_button: = 0x0000000000419cd0
set_button_lclicked: = 0x000000000041af42
set_button_lclicked2: = 0x000000000041b022
set_button_rclicked: = 0x000000000041b102
set_button_text: = 0x000000000041b1e2
set_button_image: = 0x000000000041b35a
CheckBox.subclass: = 0x0000000000000000
CheckBox.is_selected: = 0x0000000000000008
CheckBox.changed: = 0x0000000000000010
CheckBox.paint: = 0x0000000000000018
CheckBox.component: = 0x0000000000000028
CheckBox.SIZE: = 0x00000000000000e0
create_checkbox: = 0x000000000041b510
set_checkbox_changed: = 0x000000000041c49d
RadioButton.subclass: = 0x0000000000000000
RadioButton.is_selected: = 0x0000000000000008
RadioButton.changed: = 0x0000000000000010
RadioButton.paint: = 0x0000000000000018
RadioButton.component: = 0x0000000000000028
RadioButton.SIZE: = 0x00000000000000e0
create_radiobutton: = 0x000000000041c5b8
set_radiobutton_changed: = 0x000000000041d8f1
HScrollBar.subclass: = 0x0000000000000000
HScrollBar.value: = 0x0000000000000008
HScrollBar.min: = 0x0000000000000010
HScrollBar.max: = 0x0000000000000018
HScrollBar.handle_size: = 0x0000000000000020
HScrollBar.changed: = 0x0000000000000028
HScrollBar.paint: = 0x0000000000000030
HScrollBar.component: = 0x0000000000000040
HScrollBar.SIZE: = 0x00000000000000f8
create_hscrollbar: = 0x000000000041da10
set_hscrollbar_changed: = 0x000000000041ef1a
VScrollBar.subclass: = 0x0000000000000000
VScrollBar.value: = 0x0000000000000008
VScrollBar.min: = 0x0000000000000010
VScrollBar.max: = 0x0000000000000018
VScrollBar.handle_size: = 0x0000000000000020
VScrollBar.changed: = 0x0000000000000028
VScrollBar.paint: = 0x0000000000000030
VScrollBar.component: = 0x0000000000000040
VScrollBar.SIZE: = 0x00000000000000f8
create_vscrollbar: = 0x000000000041f038
set_vscrollbar_changed: = 0x0000000000420522
TextField.subclass: = 0x0000000000000000
TextField.text: = 0x0000000000000008
TextField.display_pos: = 0x0000000000000010
TextField.edit_pos: = 0x0000000000000018
TextField.input: = 0x0000000000000020
TextField.paint: = 0x0000000000000028
TextField.component: = 0x0000000000000038
TextField.SIZE: = 0x00000000000000f0
create_textfield: = 0x0000000000420640
set_textfield_text: = 0x00000000004233f2
set_color: = 0x000000000042607b
get_color: = 0x00000000004260e8
_disp: = 0x000000000042616a
gcls: = 0x00000000004263d3
draw_point: = 0x00000000004265c1
get_point: = 0x00000000004267ea
draw_line: = 0x0000000000426960
fill_rect: = 0x000000000042755b
draw_rect: = 0x0000000000427b5a
fill_circle: = 0x000000000042835a
draw_circle: = 0x00000000004284d2
fill_triangle: = 0x0000000000429082
draw_triangle: = 0x000000000042934a
paint: = 0x00000000004297c2
put_pset: = 0x0000000000429fe0
draw_image: = 0x000000000042a63b
copy_image: = 0x000000000042ad70
paste_image: = 0x000000000042b52a
load_image: = 0x000000000042b617
save_image: = 0x000000000042bd28
draw_string: = 0x000000000042c35c
draw_font: = 0x000000000042c79f
COLOR_BLACK: = 0x0000000000000000
COLOR_WHITE: = 0x0000000000ffffff
COLOR_RED: = 0x0000000000ff0000
COLOR_BLUE: = 0x00000000000000ff
COLOR_GREEN: = 0x00000000000021c0
COLOR_MOSGREEN: = 0x0000000000308060
COLOR_GRAY: = 0x0000000000808080
COLOR_LIGHT_GRAY: = 0x0000000000c0c0c0
COLOR_CLEAR: = 0x00000000ff000000
TRUE: = 0x0000000000000001
FALSE: = 0x0000000000000000
FONT_WIDTH: = 0x000000000000000e
FONT_HEIGHT: = 0x0000000000000012
ESC_KEY: = 0x0000000000000017
CTRL_D_KEY: = 0x0000000000040000
DEL_KEY: = 0x0000000000000008
UP_KEY: = 0x0000000000000001
DOWN_KEY: = 0x0000000000000002
RIGHT_KEY: = 0x0000000000000003
LEFT_KEY: = 0x0000000000000004
INS_KEY: = 0x0000000000000007
BS_KEY: = 0x0000000000080000
SPACE_KEY: = 0x0000000000200000
ENTER_KEY: = 0x00000000000d0000
END_KEY: = 0x0000000000000006
PGDN_KEY: = 0x000000000000000a
Desktop.image: = 0x0000000000000000
Desktop.lclicked: = 0x0000000000000008
Desktop.rclicked: = 0x0000000000000010
Desktop.paint: = 0x0000000000000018
Desktop.component: = 0x0000000000000020
Desktop.SIZE: = 0x00000000000000d8
paint_desktop: = 0x000000000042e16f
Window.subclass: = 0x0000000000000000
Window.title: = 0x0000000000000010
Window.state: = 0x0000000000000018
Window.resizable: = 0x0000000000000020
Window.height: = 0x0000000000000028
Window.keyinput: = 0x0000000000000030
Window.lclicked: = 0x0000000000000038
Window.rclicked: = 0x0000000000000040
Window.resized: = 0x0000000000000048
Window.minimized: = 0x0000000000000050
Window.normalized: = 0x0000000000000058
Window.paint: = 0x0000000000000060
Window.removed: = 0x0000000000000068
Window.close_button: = 0x0000000000000070
Window.component: = 0x0000000000000178
Window.SIZE: = 0x0000000000000230
create_window: = 0x0000000000434af0
set_window_title: = 0x00000000004389da
set_window_icon: = 0x0000000000438aba
set_window_resizable: = 0x0000000000438b9a
show_desktop_menu: = 0x000000000043959a
show_icon_menu: = 0x000000000043aeab
create_property_sheet: = 0x000000000043bfd9
show_property_sheet: = 0x000000000043d52d
TextArea.subclass: = 0x0000000000000000
TextArea.text: = 0x0000000000000008
TextArea.line: = 0x0000000000000010
TextArea.size: = 0x0000000000000018
TextArea.lines: = 0x0000000000000020
TextArea.edit_pos: = 0x0000000000000028
TextArea.display_pos: = 0x0000000000000030
TextArea.edit_line: = 0x0000000000000038
TextArea.display_line: = 0x0000000000000040
TextArea.paint: = 0x0000000000000048
TextArea.component: = 0x0000000000000058
TextArea.hscrollbar: = 0x0000000000000110
TextArea.vscrollbar: = 0x0000000000000208
TextArea.SIZE: = 0x0000000000000300
create_textarea: = 0x000000000043e878
set_textarea_text: = 0x00000000004447bc
Filer.SIZE: = 0x00000000000001f8
create_filer: = 0x0000000000444da7
update_filer: = 0x000000000044736b
set_filer_open_action: = 0x0000000000447cb3
get_file_command: = 0x000000000044f3a5
get_file_icon: = 0x000000000044f705
get_file_type: = 0x000000000044f8a0
get_file_extention: = 0x000000000044fdf9
show_open_dialog: = 0x000000000045178e
show_save_dialog: = 0x00000000004517b2
show_xfiler: = 0x00000000004527fa
graphic_base: = 0x0000000000455260
screen_width: = 0x0000000000455270
screen_height: = 0x0000000000455278
mouse_x: = 0x00000000004552a0
mouse_y: = 0x00000000004552a8
copy_area: = 0x00000000004552f0
font_area: = 0x00000000004552f8
gui_is_running: = 0x0000000000455308
key_code: = 0x0000000000455318
key_mask: = 0x0000000000455320
desktop: = 0x000000000045e070
 = 0
Program.prev: += 8
Program.next: += 8
Program.lineno: += 8
Program.label: += 8
Program.text: += 8
Program.SIZE: += 0
 = 0
Value.type: += 8
Value.data: += 8
Value.SIZE: += 0
 = 0
Variable.name: += 8
Variable.dimension: += 8
Variable.dim: += 8
Variable.dim1: += 8
Variable.dim2: += 8
Variable.dim3: += 8
Variable.dim4: += 8
Variable.dim5: += 8
Variable.dim6: += 8
Variable.dim7: += 8
Variable.dim8: += 8
Variable.dim9: += 8
Variable.value: += 8
Variable.prev: += 8
Variable.next: += 8
Variable.SIZE: += 0
 = 0
_ForStack.var: += 8
_ForStack.limit: += 8
_ForStack.step: += 8
_ForStack.program: += 8
_ForStack.token_p: += 8
_ForStack.SIZE: += 0
 = 0
_GosubStack.program: += 8
_GosubStack.token_p: += 8
_GosubStack.SIZE: += 0
 = 0
_Command.keyword: += 8
_Command.func: += 8
_Command.SIZE: += 0
 = 0
_Function.keyword: += 8
_Function.func: += 8
_Function.SIZE: += 0
Command:
 long S4
 long cmd_run
 long S5
 long cmd_if
 long S6
 long cmd_for
 long S7
 long cmd_next
 long S8
 long cmd_goto
 long S9
 long cmd_gosub
 long S10
 long cmd_return
 long S11
 long cmd_print
 long S12
 long cmd_input
 long S13
 long cmd_clear
 long S14
 long cmd_pset
 long S15
 long cmd_cls
 long S16
 long cmd_line
 long S17
 long cmd_locate
 long S18
 long cmd_dim
 long S19
 long cmd_open
 long S20
 long cmd_close
 long S21
 long cmd_box
 long S22
 long cmd_boxf
 long S23
 long cmd_circle
 long S24
 long cmd_circlef
 long S26
 long cmd_exec
 long S27
 long cmd_wait
 long S28
 long cmd_image
 long S29
 long cmd_save
 long S30
 long cmd_edit
 long S31
 long cmd_load
 long S32
 long cmd_new
 long S34
 long cmd_end
 long S35
 long cmd_list
 long S36
 long cmd_run
 long S37
 long cmd_quit
 long S38
 long cmd_stop
 long S39
 long cmd_cont
 long S40
 long cmd_color
 long NULL
 long NULL
Function:
 long S42
 long func_abs
 long S43
 long func_int
 long S44
 long func_sgn
 long S45
 long func_sqr
 long S46
 long func_exp
 long S47
 long func_log
 long S48
 long func_sin
 long S49
 long func_cos
 long S50
 long func_tan
 long S51
 long func_atn
 long S52
 long func_chrs
 long S53
 long func_asc
 long S54
 long func_mids
 long S55
 long func_lefts
 long S56
 long func_rights
 long S57
 long func_inputs
 long S58
 long func_inkeys
 long S60
 long func_strs
 long S61
 long func_val
 long S62
 long func_len
 long S63
 long func_times
 long S64
 long func_dates
 long S65
 long func_instr
 long S66
 long func_rnd
 long NULL
 long NULL
clear_program:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TopProg
 rax=&prog
 (rax)=rdi
clear_program1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&prog
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz clear_program2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&prog
 rdi=(rax)
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&prog
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
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
 jmp free
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
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
 jmp clear_program1
clear_program2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&TopProg
 (rax)=rdi
 rax=&EndProg
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
serch_label_position:
 rax=&str
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&lbl
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rax=&pp
 (rax)=rdi
serch_label_position1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L740
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
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
L740:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.label
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&lbl
 rdi=(rax)
 rsi-rdi
 jnz serch_label_position4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&ss
 (rax)=rdi
serch_label_position2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 jmp is_space
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L746
 rcx=&ss
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp serch_label_position2
L746:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL_HEADER
 rsi-rdi
 jnz serch_label_position4
serch_label_position3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 jmp is_symbol_char
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L750
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
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
L750:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&str
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rsi-rdi
 jnz serch_label_position4
 rcx=&ss
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&str
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp serch_label_position3
serch_label_position4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&pp
 (rax)=rdi
 jmp serch_label_position1
append_line:
 rax=&str
 (rax)=rdi
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&BreakProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&lbl
 (rax)=rdi
append_line1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp is_space
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L764
 rcx=&ss
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp append_line1
L764:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL_HEADER
 rsi-rdi
 jnz append_line3
 rcx=&ss
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&lbl
 (rax)=rdi
append_line2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp is_symbol_char
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L770
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&lbl
 rdi=(rax)
 rdi+=rsi
 rax=&lbl
 (rax)=rdi
 rcx=&ss
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp append_line2
L770:
append_line3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz append_line4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&CurrentLineNo
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Program.SIZE
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
 rax=&TopProg
 (rax)=rdi
 rax=&EndProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rcx=Program.prev
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentLineNo
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rcx=Program.lineno
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 rcx=&CurrentLineNo
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&lbl
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rcx=Program.label
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&str
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&str
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
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
 jmp strcpy
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
append_line4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Program.SIZE
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
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&EndProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.prev
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentLineNo
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.lineno
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 rcx=&CurrentLineNo
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&lbl
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.label
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&str
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&str
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&EndProg
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rax=&EndProg
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
exec_basic:
 rax=&CurrentProg
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
 jmp clear_value
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
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
 jmp exec_basic2
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
exec_basic2:
 rax=&TokenP
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&status
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L806
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S76
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
 jmp assertError
L806:
exec_basic2_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&BreakFlg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz exec_basic2_2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&BreakFlg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rax=&BreakProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rdi=(rax)
 rax=&BreakToken
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S77
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
 jmp assertError
exec_basic2_2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COMMAND
 rsi-rdi
 jnz exec_basic2_3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_Command.SIZE
 rax=rdi
 mul rsi
 rdi=rax
 rax=&no
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Command
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&no
 rdi=(rax)
 rdi+=rsi
 rcx=_Command.func
 rcx+=rdi
 rcx=(rcx)
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
 r15=$+36
 (rax)=r15
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 jmp (rcx)
 rax=&status
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&status
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
 rsi-rdi
 jz L818
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&status
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
L818:
 jmp exec_basic2_1
exec_basic2_3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jnz L821
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
 jmp cmd_let
 jmp exec_basic2_1
L821:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jnz exec_basic2_4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L824
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
L824:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 jmp exec_basic2_1
exec_basic2_4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jnz exec_basic2_5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jnz L830
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
 jmp getToken
 jmp exec_basic2_1
L830:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S81
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
 jmp assertError
exec_basic2_5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL
 rsi-rdi
 jnz L833
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
 jmp getToken
 jmp exec_basic2_1
L833:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S83
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
 jmp assertError
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
assertError:
 rax=&mesg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&StackSave
 rdi=(rax)
 rax=&__stack_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.lineno
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jlt L841
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&mesg
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
 jmp prints
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
 jmp nl
 jmp basic_entry
L841:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S85
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp printd
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S86
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&mesg
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
 jmp prints
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
 jmp nl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&SysError
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L844
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
L844:
 jmp basic_entry
load_basic:
 rax=&flg
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&fname
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fname
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=rfp
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
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz load_basic1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&flg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L853
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S88
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
 jmp assertError
L853:
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
load_basic1:
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
 jmp cmd_new
load_basic2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=rfp
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
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOF
 rsi-rdi
 jz load_basic3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=buf
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
 jmp append_line
 jmp load_basic2
load_basic3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=rfp
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
getToken:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&TokenText
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
getToken1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=32
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rsi-rdi
 jlt getToken2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L870
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rax=&TokenType
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
L870:
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken1
getToken2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=A_QUOT
 rsi-rdi
 jnz L874
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rax=&TokenType
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
L874:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DBL_QUOT
 rsi-rdi
 jnz getToken4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rax=&TokenType
 (rax)=rdi
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
getToken3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L879
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S92
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
 jmp assertError
L879:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DBL_QUOT
 rsi-rdi
 jz L880
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken3
L880:
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
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
getToken4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
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
 jmp is_symbol_char0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz getToken10
getToken5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
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
 jmp is_symbol_char
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L889
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken5
L889:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
getToken6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S97
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L893
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rax=&TokenType
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
L893:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Command
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
getToken7:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=_Command.keyword
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz getToken8
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L899
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COMMAND
 rax=&TokenType
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rax=&TokenCode
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
L899:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_Command.SIZE
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken7
getToken8:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Function
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
getToken8x:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=_Function.keyword
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz getToken9
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L909
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FUNCTION
 rax=&TokenType
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rax=&TokenCode
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
L909:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_Function.SIZE
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken8x
getToken9:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rax=&TokenType
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
getToken10:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL_HEADER
 rsi-rdi
 jnz getToken20
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL
 rax=&TokenType
 (rax)=rdi
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&TokenCode
 (rax)=rdi
getToken11:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
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
 jmp is_symbol_char
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L922
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 rdi+=rsi
 rax=&TokenCode
 (rax)=rdi
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken11
L922:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
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
getToken20:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&cc
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=38
 rsi-rdi
 jz getToken21
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=46
 rsi-rdi
 jz getToken21
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt getToken30
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 rsi-rdi
 jlt getToken30
getToken21:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rax=&TokenType
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
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
 jmp xval
 rax=&TokenValue
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenValue
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NaN
 rsi-rdi
 jnz L934
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S101
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
 jmp assertError
L934:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
getToken22:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jlt getToken22
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
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
getToken30:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rax=&TokenType
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&bb
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=61
 rsi-rdi
 jnz getToken31
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=60
 rsi-rdi
 jnz L950
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken33
L950:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=62
 rsi-rdi
 jnz L951
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken33
L951:
getToken31:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=60
 rsi-rdi
 jnz getToken32
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=61
 rsi-rdi
 jnz L954
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken33
L954:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=62
 rsi-rdi
 jnz L955
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp getToken33
L955:
getToken32:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=62
 rsi-rdi
 jnz getToken33
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=61
 rsi-rdi
 jnz L958
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bb
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&TokenP
 rax=(rcx)
 rax++
 (rcx)=rax
L958:
getToken33:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&TokenText
 rcx+=rax
 rax=rdi
 (rcx)=al
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
checkToken:
 rax=&token
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&token
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L966
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S105
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
 jmp assertError
L966:
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
 jmp getToken
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
is_space:
 rax=&cc1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=32
 rsi-rdi
 jnz L972
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L972:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=9
 rsi-rdi
 jnz L973
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L973:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
is_symbol_char0:
 rax=&cc1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=97
 rsi-rdi
 jlt L977
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=122
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 rsi-rdi
 jge is_symbol_char0_1
L977:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=65
 rsi-rdi
 jlt L978
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=90
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 rsi-rdi
 jge is_symbol_char0_1
L978:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=95
 rsi-rdi
 jz is_symbol_char0_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
is_symbol_char0_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
is_symbol_char:
 rax=&cc1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt L985
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 rsi-rdi
 jge is_symbol_char1
L985:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=97
 rsi-rdi
 jlt L986
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=122
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 rsi-rdi
 jge is_symbol_char1
L986:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=65
 rsi-rdi
 jlt L987
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=90
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 rsi-rdi
 jge is_symbol_char1
L987:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=95
 rsi-rdi
 jz is_symbol_char1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&cc1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=36
 rsi-rdi
 jz is_symbol_char1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
is_symbol_char1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
VARIABLE: = 1
COMMAND: = 2
FUNCTION: = 3
NUMBER: = 4
DELIMIT: = 5
STRING: = 6
LABEL: = 7
EOL: = 8
COUNT: = 9
DONE: = 1
TERMINATE: = 2
QUIT: = 3
MAX_DIMENSION: = 16
MAX_PROGRAM_SIZE: = 16000
MAX_TEXT_LENGTH: = 255
MAX_STR_LENGTH: = 511
MAX_FILES: = 10
STACK_SIZE: = 64
ALIGNMENT: = 4
LABEL_HEADER: = 64
A_QUOT: = 39
DBL_QUOT: = 34
 align 8
EOF_STRING:
 long 255
xdraw_point:
 rax=&py
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&px
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1054
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
L1054:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bitmap
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
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
xget_point:
 rax=&py
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&px
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&py
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&px
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bitmap
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xdraw_line:
 rax=&gy1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1066
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
L1066:
xline:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rsi-rdi
 jlt xline_y
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jnz L1071
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
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
L1071:
xline_x:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&rx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1074
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&rx
 (rax)=rdi
L1074:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ix
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rax=&ix+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&ix+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ix+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdi+=rsi
 rax=&ry
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+16
 rdi=(rax)
 rdi+=rsi
 rax=&ix
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xline_y:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ry
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1082
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&ry
 (rax)=rdi
L1082:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&iy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rax=&iy+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&iy+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&iy+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdi+=rsi
 rax=&rx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy+16
 rdi=(rax)
 rdi+=rsi
 rax=&iy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xgcls:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xheight
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rcx=&bitmap
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=eax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xfill_rect:
 rax=&gy1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1096
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
L1096:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&rx
 (rax)=rdi
 rax=&ry
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rsi-rdi
 jge L1098
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&ry
 (rax)=rdi
L1098:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jge L1099
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&rx
 (rax)=rdi
L1099:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&iy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&iy+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&iy+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&iy+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&ix
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&ix+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&ix+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ix+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+16
 rdi=(rax)
 rdi+=rsi
 rax=&ix
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy+16
 rdi=(rax)
 rdi+=rsi
 rax=&iy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xdraw_rect:
 rax=&gy1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1108
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
L1108:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&rx
 (rax)=rdi
 rax=&ry
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rsi-rdi
 jge L1110
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&ry
 (rax)=rdi
L1110:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jge L1111
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&rx
 (rax)=rdi
L1111:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&ix
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&ix+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&ix+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ix+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+16
 rdi=(rax)
 rdi+=rsi
 rax=&ix
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ix+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&iy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&iy+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&iy+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&iy+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&iy+16
 rdi=(rax)
 rdi+=rsi
 rax=&iy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xfill_circle:
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
 jmp xdraw_circle
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ox1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&oy1
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
 jmp xpaint
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
xdraw_circle:
 rax=&gy1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1128
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
L1128:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&vx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&vy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&vx1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&vy1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rsi-rdi
 jge L1131
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L1131:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rsi-rdi
 jge L1132
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L1132:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 rax=&ox1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 rax=&oy1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L1136
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
 jmp xline
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
L1136:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L1138
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
 jmp xline
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
L1138:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&gx1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&oy1
 rdi=(rax)
 rax=&gy1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TABLE_N
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ox1
 rdi=(rax)
 rdi+=rsi
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&oy1
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
 jmp xline
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&gx1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&gy1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xpaint:
Q_SIZE: = 4096
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1152
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
L1152:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&put_p
 (rax)=rdi
 rax=&get_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xget_point
 rax=&co
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&co
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 rsi-rdi
 jnz L1155
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
L1155:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xput_pset
xpaint1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&get_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&put_p
 rdi=(rax)
 rsi-rdi
 jnz L1158
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
L1158:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 rcx=&get_p
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 rcx=&get_p
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&get_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Q_SIZE
 rsi-rdi
 jlt L1161
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&get_p
 (rax)=rdi
L1161:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xput_pset
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xput_pset
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xput_pset
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xput_pset
 jmp xpaint1
xput_pset:
 rax=&qy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&qx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1169
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
L1169:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rsi-rdi
 jlt L1170
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
L1170:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1171
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
L1171:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xheight
 rdi=(rax)
 rsi-rdi
 jlt L1172
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
L1172:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xget_point
 rax=&co
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&co
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 rsi-rdi
 jnz L1174
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
L1174:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 rcx=&put_p
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 rcx=&put_p
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&put_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Q_SIZE
 rsi-rdi
 jlt L1178
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&put_p
 (rax)=rdi
L1178:
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
xdraw_image:
 rax=&qq
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1182
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
L1182:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&rx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1184
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
L1184:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rsi-rdi
 jlt L1185
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
L1185:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
 rax=&ry
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1188
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
L1188:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xheight
 rdi=(rax)
 rsi-rdi
 jlt L1189
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
L1189:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gx1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gy1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bitmap
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=3
 rcx=&qq
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L1197
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L1197:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
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
xcopy_image:
 rax=&gy1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx1
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&gx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rsi-rdi
 jlt L1204
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gx1
 (rax)=rdi
L1204:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xheight
 rdi=(rax)
 rsi-rdi
 jlt L1205
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xheight
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&gy1
 (rax)=rdi
L1205:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_area
 rdi=(rax)
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&qq
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&qq
 rax=(rax)
 rcx=rdi
 (rax)=ecx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gy1
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&gx1
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xwidth
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&bitmap
 rdi=(rax)
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=4
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
xpaste_image:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_image
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
xdraw_string:
 rax=&dss
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&dsw
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&dsy
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&dsx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xcolor
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLOR_CLEAR
 rsi-rdi
 jnz L1226
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
L1226:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsw
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 exg rdi,rsi
 rdi-=rsi
 rax=&dsw
 (rax)=rdi
xdraw_string1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1229
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
L1229:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsy
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dss
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
 jmp xdraw_font
 rax=&dsr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 rdi+=rsi
 rax=&dsx
 (rax)=rdi
 rcx=&dss
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsw
 rdi=(rax)
 rsi-rdi
 jlt xdraw_string1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dsr
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
xdraw_font:
 rax=&pp
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&ty
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&tx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FONT_HEIGHT
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&font_area
 rdi=(rax)
 rdi+=rsi
 rax=&qq
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FONT_WIDTH-1
 rdi+=rsi
 rax=&rx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FONT_HEIGHT-1
 rdi+=rsi
 rax=&ry
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ty
 rdi=(rax)
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ry
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx
 rdi=(rax)
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&rx
 rdi=(rax)
 rax=&jj+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&jj+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&qq
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L1242
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp xdraw_point
L1242:
 rcx=&qq
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+16
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
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
 align 8
TABLE_N: = 256
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
xstr:
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1e5
 rax=&exp_max
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0001
 rax=&exp_min
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0000000001
 rax=&exp_pres
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&exp_count
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&real_buf
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=real_buf
 rax=&real_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&exp_val
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L1346
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S108
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
L1346:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L1347
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S109
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
 jmp put_real_buf
L1347:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_max
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real1_0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_min
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2_0
real0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&exp_val
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae real0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_val
 (rax)=rdi
real1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.02
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S112
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
 jmp put_real_buf
real2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 xmm0=rdi
 rdi=(long)xmm0
 rax=&real_d
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_d
 rdi=(rax)
 rdi+=rsi
 rax=&chr_buf+0
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&chr_buf+1
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=chr_buf
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_d
 rdi=(rax)
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_val
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae real1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_pres
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=real_buf
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
real1_0:
real1_01:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&exp_val
 (rax)=rdi
 rcx=&exp_count
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae real1_01
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_val
 (rax)=rdi
 rcx=&exp_count
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&exp_val
 (rax)=rdi
real1_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real1_2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.02
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real1_2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S115
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
 jmp put_real_buf
real1_2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 xmm0=rdi
 rdi=(long)xmm0
 rax=&real_d
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_d
 rdi=(rax)
 rdi+=rsi
 rax=&chr_buf+0
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&chr_buf+1
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=chr_buf
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_d
 rdi=(rax)
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_val
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_pres
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real1_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S116
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_count
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
 jmp dec
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=real_buf
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
real2_0:
real2_01:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_val
 (rax)=rdi
 rcx=&exp_count
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2_01
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&exp_val
 (rax)=rdi
real2_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2_2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.02
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2_2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S119
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
 jmp put_real_buf
real2_2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 xmm0=rdi
 rdi=(long)xmm0
 rax=&real_d
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_d
 rdi=(rax)
 rdi+=rsi
 rax=&chr_buf+0
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&chr_buf+1
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=chr_buf
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_d
 rdi=(rax)
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&real_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_val
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_val
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_pres
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb real2_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S120
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_count
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
 jmp dec
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
 jmp put_real_buf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=real_buf
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
put_real_buf:
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=real_buf
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
 jmp strcat
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&real_p
 rdi=(rax)
 rdi+=rsi
 rax=&real_p
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
xval:
XVAL_SIGN: = 0
XVAL_INTEGER: = 1
XVAL_FRAC: = 2
XVAL_EXP_SIGN: = 3
XVAL_EXP: = 4
XVAL_OCT: = 5
XVAL_HEX: = 6
XVAL_BIN: = 7
XVAL_OTHER: = 8
 rax=&xval_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&xval_sign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 rax=&xval_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.1
 rax=&xval_order
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&xval_exp_sign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&xval_exp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_SIGN
 rax=&xval_state
 (rax)=rdi
xval0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_p
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&xval_d
 (rax)=rdi
xval1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_SIGN
 rsi-rdi
 jnz xval2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=43
 rsi-rdi
 jz xval_next
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=45
 rsi-rdi
 jnz L1436
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^-1.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&xval_sign
 (rax)=rdi
 jmp xval_next
L1436:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=38
 rsi-rdi
 jnz L1437
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_OCT
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1437:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=46
 rsi-rdi
 jnz L1438
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_FRAC
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1438:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_INTEGER
 rax=&xval_state
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt L1440
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jge xval2
L1440:
 jmp xval_error
xval2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_INTEGER
 rsi-rdi
 jnz xval3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=46
 rsi-rdi
 jnz L1444
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_FRAC
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1444:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=101
 rsi-rdi
 jnz L1445
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_EXP_SIGN
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1445:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 jmp xval_next
xval3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_FRAC
 rsi-rdi
 jnz xval4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=101
 rsi-rdi
 jnz L1453
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_EXP_SIGN
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1453:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=69
 rsi-rdi
 jnz L1454
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_EXP_SIGN
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1454:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_order
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_order
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&xval_order
 (rax)=rdi
 jmp xval_next
xval4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_EXP_SIGN
 rsi-rdi
 jnz xval5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=43
 rsi-rdi
 jz xval_next
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=45
 rsi-rdi
 jnz L1464
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp_sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=rdi
 mul rsi
 rdi=rax
 rax=&xval_exp_sign
 (rax)=rdi
 jmp xval_next
L1464:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_EXP
 rax=&xval_state
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt L1466
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jge xval5
L1466:
 jmp xval_error
xval5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_EXP
 rsi-rdi
 jnz xval6
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt xval5_0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval5_0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=10
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rdi+=rsi
 rax=&xval_exp
 (rax)=rdi
 jmp xval_next
xval5_0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jz xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp_sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jlt xval5_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jge xval_error
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 jmp xval_end
xval5_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jlt L1485
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 rax=&xval_x
 (rax)=rdi
 jmp xval_end
L1485:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_exp
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^10.0
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&xval_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 jmp xval_end
xval6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_OCT
 rsi-rdi
 jnz xval7
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=104
 rsi-rdi
 jnz L1492
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_HEX
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1492:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=98
 rsi-rdi
 jnz L1493
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_BIN
 rax=&xval_state
 (rax)=rdi
 jmp xval_next
L1493:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=111
 rsi-rdi
 jz xval_next
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=55
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^8.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 jmp xval_next
xval7:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_HEX
 rsi-rdi
 jnz xval8
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt xval7_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval7_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^16.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 jmp xval_next
xval7_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=97
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=102
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=97-10
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^16.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 jmp xval_next
xval8:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_state
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=XVAL_BIN
 rsi-rdi
 jnz xval_error
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=49
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 rsi-rdi
 jlt xval_end
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^2.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 jmp xval_next
xval_error:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NaN
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
xval_end:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&xval_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xval_x
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
xval_next:
 rcx=&xval_p
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp xval0
printr:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
 jmp fprintr
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
fprintr:
 rax=&pp7
 (rax)=rdi
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
 jmp xstr
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp7
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
cmd_wait:
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
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
 jmp wait
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_clear:
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
 jmp clear_value
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
 jmp clear_variable
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStack
 rdi=(rax)
 rax=&ForStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_close:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=35
 rsi-rdi
 jnz file_close_all
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenValue
 rdi=(rax)
 xmm0=rdi
 rdi=(long)xmm0
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1549
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S127
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
 jmp assertError
L1549:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_FILES
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 rsi-rdi
 jge L1550
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S128
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
 jmp assertError
L1550:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FILE_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Xfp
 rdi+=rsi
 rax=&fp_adr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz L1552
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
L1552:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
file_close_all:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_FILES-1
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FILE_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Xfp
 rdi+=rsi
 rax=&fp_adr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz L1558
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
L1558:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_open:
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
 jmp clear_value
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S130
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&io_flg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S131
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
 jmp strcmp
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S132
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L1570
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S133
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
 jmp assertError
L1570:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L1571
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&io_flg
 (rax)=rdi
L1571:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S134
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S135
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jz L1575
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S136
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
 jmp assertError
L1575:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenValue
 rdi=(rax)
 xmm0=rdi
 rdi=(long)xmm0
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1577
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S138
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
 jmp assertError
L1577:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_FILES
 rsi-rdi
 jlt L1578
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S139
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
 jmp assertError
L1578:
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
 jmp getToken
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
 jmp get_string
 rax=&fname0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FILE_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Xfp
 rdi+=rsi
 rax=&fp_adr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz L1583
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S142
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
 jmp assertError
L1583:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&io_flg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L1584
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fname0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 jmp wopen
 rax=&tt
 (rax)=rdi
L1584:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&io_flg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L1585
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fname0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 jmp ropen
 rax=&tt
 (rax)=rdi
L1585:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fname0
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz L1587
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S143
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
 jmp assertError
L1587:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_dim:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jz L1593
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S145
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
 jmp assertError
L1593:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=vname
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=vname
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
 jmp var_type
 rax=&vtype
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S147
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&dx
 (rax)=rdi
cmd_dim1:
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
 jmp clear_value
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_DIMENSION
 rsi-rdi
 jlt L1602
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S148
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
 jmp assertError
L1602:
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jlt L1604
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S149
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
 jmp assertError
L1604:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rcx=&dx
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&dim
 rcx+=rax
 (rcx)=rdi
 rcx=&dx
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=41
 rsi-rdi
 jz cmd_dim2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S150
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
 jmp checkToken
 jmp cmd_dim1
cmd_dim2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=vname
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp _variable
 rax=&var
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.dimension
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 rcx=&dx
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.dim
 rdi+=rcx
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dx
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&dim
 rcx+=rax
 rdi=(rcx)
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&pp
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtype
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz cmd_dim3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=8
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
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 rcx=&nn
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ALIGNMENT
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
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&pp
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S151
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&pp
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 jmp cmd_dim4
cmd_dim3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=8
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
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 rcx=&nn
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&pp
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
cmd_dim4:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_dim5
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
 jmp getToken
 jmp cmd_dim
cmd_dim5:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_if:
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz cmd_if1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S154
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL
 rsi-rdi
 jz L1647
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
L1647:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp serch_label_position
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1649
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S155
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
 jmp assertError
L1649:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_if1:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S157
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz cmd_if2
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL
 rsi-rdi
 jz L1659
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
L1659:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp serch_label_position
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1661
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S158
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
 jmp assertError
L1661:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_if2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jnz cmd_if1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_return:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStack
 rdi=(rax)
 rsi-rdi
 jge L1670
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S160
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
 jmp assertError
L1670:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_GosubStack.SIZE
 exg rdi,rsi
 rdi-=rsi
 rax=&GosubStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 rcx=_GosubStack.token_p
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 rcx=_GosubStack.program
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&CurrentProg
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_gosub:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStack
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STACK_SIZE
 rdi+=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jlt L1679
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S162
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
 jmp assertError
L1679:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL
 rsi-rdi
 jz L1680
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S163
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
 jmp assertError
L1680:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp serch_label_position
 rax=&pp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1682
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S164
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
 jmp assertError
L1682:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 rcx=_GosubStack.program
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 rcx=_GosubStack.token_p
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_GosubStack.SIZE
 rdi+=rsi
 rax=&GosubStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp1
 rdi=(rax)
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_next:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStack
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rsi-rdi
 jlt L1693
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S166
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
 jmp assertError
L1693:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_ForStack.SIZE
 exg rdi,rsi
 rdi-=rsi
 rax=&ForStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jnz cmd_next1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp get_variable
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rdi+=rcx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.var
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 exg rdi,rsi
 rdi-=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L1697
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S167
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
 jmp assertError
L1697:
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
 jmp getToken
cmd_next1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.var
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&for_var
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.step
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&for_var
 rax=(rax)
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&for_var
 rax=(rax)
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&for_var
 rax=(rax)
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.limit
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.step
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb cmd_next2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.token_p
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.program
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_ForStack.SIZE
 rdi+=rsi
 rax=&ForStackP
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
 jmp getToken
cmd_next2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_for:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStack
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STACK_SIZE
 rdi+=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jlt L1712
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S169
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
 jmp assertError
L1712:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jz L1713
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S170
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
 jmp assertError
L1713:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp _variable
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rdi+=rcx
 rax=&for_var
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&for_var
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.var
 rcx+=rdi
 rax=rsi
 (rcx)=rax
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
 jmp cmd_let
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S171
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.limit
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S172
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz cmd_for1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.step
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 jmp cmd_for2
cmd_for1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.step
 rcx+=rdi
 rax=rsi
 (rcx)=rax
cmd_for2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.program
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 rcx=_ForStack.token_p
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_ForStack.SIZE
 rdi+=rsi
 rax=&ForStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_goto:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&RunFlg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LABEL
 rsi-rdi
 jz L1737
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S174
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
 jmp assertError
L1737:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp serch_label_position
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1739
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S175
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
 jmp assertError
L1739:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_input:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=35
 rsi-rdi
 jnz cmd_input3
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenValue
 rdi=(rax)
 xmm0=rdi
 rdi=(long)xmm0
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1749
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S176
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
 jmp assertError
L1749:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_FILES
 rsi-rdi
 jlt L1750
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S177
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
 jmp assertError
L1750:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FILE_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Xfp
 rdi+=rsi
 rax=&fp_adr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1752
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S178
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
 jmp assertError
L1752:
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
 jmp getToken
cmd_input1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jnz cmd_input2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp get_variable_value
 rax=&input_var
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&vtype
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOF
 rsi-rdi
 jnz L1758
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOF
 rax=&sss+0
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&sss+1
 rcx=rdi
 (rax)=cl
L1758:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtype
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L1760
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp malloc
 rax=&input_var
 rax=(rax)
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strcpy
L1760:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtype
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1761
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp xval
 rax=&input_var
 rax=(rax)
 (rax)=rdi
L1761:
 jmp cmd_input1
cmd_input2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jz L1764
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
L1764:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz L1765
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
 jmp getToken
 jmp cmd_input1
L1765:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jnz L1766
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
 jmp getToken
 jmp cmd_input1
L1766:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_input3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&is_question
 (rax)=rdi
cmd_input4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L1772
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp prints
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
 jmp getToken
 jmp cmd_input4
L1772:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jnz cmd_input5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp get_variable_value
 rax=&input_var
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&vtype
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&is_question
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L1775
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S180
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
 jmp prints
L1775:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp inputs
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=3
 rsi-rdi
 jnz L1777
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&BreakFlg
 (rax)=rdi
L1777:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtype
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L1779
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp malloc
 rax=&input_var
 rax=(rax)
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strcpy
L1779:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtype
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1780
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp xval
 rax=&input_var
 rax=(rax)
 (rax)=rdi
L1780:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&is_question
 (rax)=rdi
 jmp cmd_input4
cmd_input5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jz L1784
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
L1784:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz L1785
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&is_question
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
 jmp getToken
 jmp cmd_input4
L1785:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jnz L1786
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&is_question
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
 jmp getToken
 jmp cmd_input4
L1786:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_print:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&last_char
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=35
 rsi-rdi
 jnz cmd_print4
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jz L1793
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S183
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
 jmp assertError
L1793:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenValue
 rdi=(rax)
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L1795
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S184
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
 jmp assertError
L1795:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_FILES
 rsi-rdi
 jlt L1796
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S185
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
 jmp assertError
L1796:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FILE_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Xfp
 rdi+=rsi
 rax=&fp_adr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1798
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S186
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
 jmp assertError
L1798:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jnz L1800
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jz cmd_print4
L1800:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jz cmd_print4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S187
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
 jmp checkToken
cmd_print1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jnz L1804
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&last_char
 (rax)=rdi
 jmp cmd_print3
L1804:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jnz L1805
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jz cmd_print3
L1805:
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp value_type
 rax=&typ
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&typ
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L1809
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
 jmp get_string
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
L1809:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&typ
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1810
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
 jmp get_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 jmp fprintr
L1810:
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
 jmp check_value
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jnz L1812
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&last_char
 (rax)=rdi
 jmp cmd_print3
L1812:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jz L1813
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S188
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
 jmp assertError
L1813:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 rax=&last_char
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jz cmd_print3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_print2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 jmp getToken
 jmp cmd_print1
cmd_print2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jz L1821
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S189
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
 jmp assertError
L1821:
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
 jmp getToken
 jmp cmd_print1
cmd_print3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jz L1825
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
L1825:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_print4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jnz L1828
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&last_char
 (rax)=rdi
 jmp cmd_print6
L1828:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jnz L1829
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jz cmd_print6
L1829:
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp value_type
 rax=&typ
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&typ
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L1833
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
 jmp get_string
 rax=&ss
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
L1833:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&typ
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1834
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
 jmp get_number
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
 jmp printr
L1834:
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
 jmp check_value
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOL
 rsi-rdi
 jnz L1836
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&last_char
 (rax)=rdi
 jmp cmd_print6
L1836:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DELIMIT
 rsi-rdi
 jz L1837
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S191
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
 jmp assertError
L1837:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 rax=&last_char
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jz cmd_print6
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_print5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
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
 jmp putchar
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
 jmp getToken
 jmp cmd_print4
cmd_print5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jz L1845
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S192
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
 jmp assertError
L1845:
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
 jmp getToken
 jmp cmd_print4
cmd_print6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&last_char
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jz L1849
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
 jmp nl
L1849:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_stop:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&BreakFlg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_cont:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&BreakProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&BreakToken
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
 jmp exec_basic2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_run:
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
 jmp cmd_clear
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
 jmp file_close_all
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStack
 rdi=(rax)
 rax=&ForStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStack
 rdi=(rax)
 rax=&GosubStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rax=&CurrentProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L1863
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
L1863:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CurrentProg
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&TokenP
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_let:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jz L1869
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
L1869:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp get_variable_value
 rax=&lvar
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&vtyp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S197
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
 jmp checkToken
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
 jmp eval_expression
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtyp
 rdi=(rax)
 rsi-rdi
 jz L1874
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S200
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
 jmp assertError
L1874:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtyp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1875
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
 jmp get_number
 rax=&lvar
 rax=(rax)
 (rax)=rdi
L1875:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vtyp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L1876
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&lvar
 rax=(rax)
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
 jmp get_string
 rax=&lvar
 rax=(rax)
 (rax)=rdi
L1876:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_save:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jz L1880
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S203
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
 jmp assertError
L1880:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=wfp
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
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz L1882
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S204
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
 jmp assertError
L1882:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rax=&pp
 (rax)=rdi
cmd_save1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz cmd_save2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=wfp
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=wfp
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&pp
 (rax)=rdi
 jmp cmd_save1
cmd_save2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=wfp
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
cmd_list:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&list_st
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0x7fffffff
 rax=&list_ed
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1895
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
 jmp get_number
 rax=&list_st
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
 jmp getToken
L1895:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz L1896
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
 jmp getToken
L1896:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=45
 rsi-rdi
 jnz L1897
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
 jmp getToken
L1897:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz L1898
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
 jmp get_number
 rax=&list_ed
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
 jmp getToken
L1898:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rax=&pp
 (rax)=rdi
cmd_list1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz cmd_list3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.lineno
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&list_st
 rdi=(rax)
 rsi-rdi
 jlt cmd_list2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&list_ed
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jlt cmd_list2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp printd
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S206
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
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
 jmp prints
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
 jmp nl
cmd_list2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&pp
 (rax)=rdi
 jmp cmd_list1
cmd_list3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
cmd_load:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jz L1912
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S208
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
 jmp assertError
L1912:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
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
 jmp load_basic
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
cmd_quit:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=QUIT
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
cmd_end:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
cmd_new:
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
 jmp clear_program
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
 jmp cmd_clear
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
cmd_cls:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_edit:
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
 jmp start_editor
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
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
cmd_pset:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S214
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&xx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S215
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&yy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S216
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_pset1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp set_color
cmd_pset1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&yy
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
 jmp xdraw_point
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&yy
 rdi=(rax)
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_line:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jnz cmd_line1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S217
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S218
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
 jmp checkToken
cmd_line1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S219
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S220
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S221
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S222
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_line2
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp set_color
cmd_line2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
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
 jmp xdraw_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
 rdi=(rax)
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_box:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jnz cmd_box1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S223
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S224
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
 jmp checkToken
cmd_box1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S225
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S226
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S227
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S228
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_box2
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp set_color
cmd_box2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
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
 jmp xdraw_rect
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
 rdi=(rax)
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_boxf:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jnz cmd_boxf1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S229
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S230
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
 jmp checkToken
cmd_boxf1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S231
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S232
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S233
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S234
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_boxf2
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp set_color
cmd_boxf2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
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
 jmp xfill_rect
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
 rdi=(rax)
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_circle:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jnz cmd_circle1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S235
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S236
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
 jmp checkToken
cmd_circle1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S237
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S238
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S239
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S240
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_circle2
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp set_color
cmd_circle2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
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
 jmp xdraw_circle
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
 rdi=(rax)
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_circlef:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jnz cmd_circlef1
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S241
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S242
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
 jmp checkToken
cmd_circlef1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S243
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S244
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S245
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S246
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz cmd_circlef2
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
 jmp getToken
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
 jmp clear_value
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
 jmp eval_expression
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp set_color
cmd_circlef2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
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
 jmp fill_circle
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x2
 rdi=(rax)
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y2
 rdi=(rax)
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_image:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S247
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_x1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S248
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&draw_y1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S249
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S250
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_string
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp load_image
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L2128
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
L2128:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_x1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&draw_y1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp xdraw_image
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_exec:
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_string
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp exec_command
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_locate:
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&xx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S251
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
 jmp checkToken
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&yy
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&yy
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
 jmp locate
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
cmd_color:
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
 jmp clear_value
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
 jmp eval_expression
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rax=&xcolor
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
func_len:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S253
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S254
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
 jmp checkToken
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
 jmp get_string
 rax=&ss
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
 jmp strlen
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_val:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S256
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S257
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
 jmp checkToken
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
 jmp get_string
 rax=&ss
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
 jmp xval
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_strs:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S259
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S260
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
 jmp checkToken
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
 jmp get_number
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
 jmp xstr
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_lefts:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S262
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S263
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S264
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&kk
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
 jmp get_string
 rax=&ss0
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
 jmp strlen
 rax=&ll
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
func_lefts1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&kk
 rdi=(rax)
 rsi-rdi
 jge func_lefts2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rsi-rdi
 jge func_lefts2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rcx=&ss0
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 rcx=&ii
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp func_lefts1
func_lefts2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss0
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_mids:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S266
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S267
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz L2206
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
 jmp getToken
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
 jmp eval_expression
 jmp func_midsx
L2206:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_STR_LENGTH
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
func_midsx:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S268
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&jj
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&ii
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
 jmp get_string
 rax=&ss0
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
 jmp strlen
 rax=&ll
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rdi+=rsi
 rax=&jj
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&kk
 (rax)=rdi
func_mids1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rsi-rdi
 jge func_mids2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rsi-rdi
 jge func_mids2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rcx=&ss0
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 rcx=&kk
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&kk
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp func_mids1
func_mids2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&kk
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss0
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_asc:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S271
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S272
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
 jmp checkToken
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
 jmp get_string
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_rights:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S274
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S275
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S276
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&ii
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
 jmp get_string
 rax=&ss0
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
 jmp strlen
 rax=&ll
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L2246
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
L2246:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&kk
 (rax)=rdi
func_rights1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rsi-rdi
 jge func_rights2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rcx=&ss0
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 rcx=&kk
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&kk
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp func_rights1
func_rights2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&kk
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss0
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_chrs:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S278
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S279
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=0
 rcx=&ccc
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=1
 rcx=&ccc
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ccc
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_abs:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S281
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S282
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
 jmp checkToken
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
 jmp get_number
 rax=&vabs
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vabs
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L2276
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vabs
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&vabs
 (rax)=rdi
L2276:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vabs
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_inputs:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S287
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz func_inputs1
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=35
 rsi-rdi
 jnz L2285
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
 jmp getToken
L2285:
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S288
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&kk
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&kk
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L2289
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S289
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
 jmp assertError
L2289:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&kk
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_FILES
 rsi-rdi
 jlt L2290
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S290
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
 jmp assertError
L2290:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&kk
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FILE_SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Xfp
 rdi+=rsi
 rax=&fp_adr
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=FILE_FP/8
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&fp_adr
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L2292
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S291
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
 jmp assertError
L2292:
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fp_adr
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
 jmp _read
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2295
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOF_STRING
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2295:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&tt
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_inputs1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S292
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
func_inputs2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 rsi-rdi
 jge func_inputs3
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
 jmp getch
 rcx=&ii
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=32
 rsi-rdi
 jlt L2306
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
L2306:
 jmp func_inputs2
func_inputs3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rcx=&ii
 rax=(rcx)
 rcx=&sss
 rcx+=rax
 rax=rdi
 (rcx)=al
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_point:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S293
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S294
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S295
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&yy
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&xx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&yy
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
 jmp xget_point
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=DONE
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
func_inkeys:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&key_code
 rdi=(rax)
 rax=&inkey_str
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&inkey_str+1
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=inkey_str
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_int:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S298
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S299
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_sqr:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S301
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S302
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 xmm1=sqrt(xmm0)
 rdi=xmm1
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_sin:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S305
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S306
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_sin
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_cos:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S309
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S310
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_cos
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_tan:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S313
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S314
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_tan
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_atn:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S317
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S318
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_arctan
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_exp:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S321
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S322
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_exp
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_log:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S325
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S326
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_log
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_instr:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S329
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S330
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=44
 rsi-rdi
 jnz L2394
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
 jmp getToken
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
 jmp eval_expression
 jmp func_instr1
L2394:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
func_instr1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S331
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
 jmp checkToken
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&xx
 (rax)=rdi
 rcx=&xx
 rax=(rcx)
 rax--
 (rcx)=rax
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
 jmp get_string
 rax=&ss1
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
 jmp get_string
 rax=&ss0
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
 jmp strlen
 rax=&ll
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L2401
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 jmp func_instr2
L2401:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rsi-rdi
 jlt L2402
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 jmp func_instr2
L2402:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss1
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
 jmp strstr
 rax=&xx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L2404
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 jmp func_instr2
L2404:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss0
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
func_instr2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss0
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss1
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_rnd:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S333
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S334
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
 jmp checkToken
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
 jmp get_number
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
 jmp math_random
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_times:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S337
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_dates:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S339
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
func_sgn:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S341
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
 jmp checkToken
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
 jmp eval_expression
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S342
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
 jmp checkToken
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
 jmp get_number
 rax=&vsgn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~0.0
 rax=&vsgn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vsgn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L2433
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~1.0
 rax=&vsgn
 (rax)=rdi
L2433:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vsgn
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L2434
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&vsgn
 (rax)=rdi
L2434:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vsgn
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_eq:
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L2439
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2439:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_neq:
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jz L2443
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2443:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_lt:
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L2447
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2447:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_le:
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb L2451
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2451:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_gt:
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L2455
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2455:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_ge:
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb L2460
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2460:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_cmp:
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz eval_cmp1
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
 jmp get_string
 rax=&s1
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
 jmp get_string
 rax=&s2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s2
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
 jmp strcmp
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s1
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s2
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_cmp1:
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
 jmp get_number
 rax=&d1
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
 jmp get_number
 rax=&d2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&d2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&d1
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_and:
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&ss
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 rdi&=rsi
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_or:
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&ss
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 rdi|=rsi
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_power:
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
 jmp get_number
 rax=&ss
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 jmp math_power
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_mod:
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&ss
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2497
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S357
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
 jmp assertError
L2497:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rdx
 xmm0=(double)rdi
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_div:
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
 jmp get_number
 rax=&ss
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2504
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S359
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
 jmp assertError
L2504:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_mul:
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
 jmp get_number
 rax=&ss
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_sub:
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
 jmp get_number
 rax=&ss
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_add:
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
 jmp get_number
 rax=&ss
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_concat:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_STR_LENGTH*2+1
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
 rax=&s0
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
 jmp get_string
 rax=&s2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s2
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
 jmp get_string
 rax=&s1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s0
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s1
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sss
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s0
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
 jmp strcat
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s0
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
 jmp strlen
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=MAX_STR_LENGTH
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rsi-rdi
 jge L2536
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s0
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S364
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
 jmp assertError
L2536:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&s0
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&sign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=43
 rsi-rdi
 jnz L2542
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&sign
 (rax)=rdi
L2542:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=45
 rsi-rdi
 jnz L2543
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&sign
 (rax)=rdi
L2543:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=40
 rsi-rdi
 jnz eval_atom2
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
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
 rax=r15
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
 jmp eval_expression
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
 rdi=-8(rax)
 rax=&sign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S366
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
 jmp checkToken
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz eval_atom1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2552
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S367
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
 jmp assertError
L2552:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rsi-rdi
 jnz L2555
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
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
 jmp put_number
L2555:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jnz eval_atom3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenValue
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
 jmp put_number
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rsi-rdi
 jnz L2561
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
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
 jmp put_number
L2561:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz eval_atom4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
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
 jmp put_string
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2567
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S371
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
 jmp assertError
L2567:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=FUNCTION
 rsi-rdi
 jnz eval_atom5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenCode
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=_Function.SIZE
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Function
 rdi+=rsi
 rcx=_Function.func
 rcx+=rdi
 rcx=(rcx)
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
 r15=$+36
 (rax)=r15
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 jmp (rcx)
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
 rdi=-8(rax)
 rax=&sign
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz eval_atom4_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2576
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S373
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
 jmp assertError
L2576:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom4_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rsi-rdi
 jnz L2579
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
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
 jmp put_number
L2579:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenType
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=VARIABLE
 rsi-rdi
 jnz eval_atom6
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
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
 jmp get_variable_value
 rax=&val
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&typ
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
 rdi=-8(rax)
 rax=&sign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&typ
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz eval_atom5_1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&val
 rax=(rax)
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
 jmp put_string
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2588
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S377
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
 jmp assertError
L2588:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom5_1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&val
 rax=(rax)
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
 jmp put_number
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rsi-rdi
 jnz L2592
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
 jmp get_number
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
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
 jmp put_number
L2592:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_atom6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_factor:
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
 jmp eval_atom
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jz L2599
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2599:
eval_factor1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=94
 rsi-rdi
 jnz L2601
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
 jmp getToken
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
 jmp eval_atom
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
 jmp eval_power
 jmp eval_factor1
L2601:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_term:
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
 jmp eval_factor
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jz L2606
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2606:
eval_term1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=42
 rsi-rdi
 jnz L2608
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
 jmp getToken
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
 jmp eval_factor
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
 jmp eval_mul
 jmp eval_term1
L2608:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=47
 rsi-rdi
 jnz L2609
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
 jmp getToken
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
 jmp eval_factor
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
 jmp eval_div
 jmp eval_term1
L2609:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S384
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2611
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
 jmp getToken
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
 jmp eval_factor
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
 jmp eval_mod
 jmp eval_term1
L2611:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_aexpression:
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
 jmp eval_term
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz eval_aexpression2
eval_aexpression1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=43
 rsi-rdi
 jnz L2618
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
 jmp getToken
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
 jmp eval_term
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
 jmp eval_concat
 jmp eval_aexpression1
L2618:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_aexpression2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=43
 rsi-rdi
 jnz L2621
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
 jmp getToken
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
 jmp eval_term
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
 jmp eval_add
 jmp eval_aexpression2
L2621:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TokenText
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=45
 rsi-rdi
 jnz L2622
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
 jmp getToken
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
 jmp eval_term
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
 jmp eval_sub
 jmp eval_aexpression2
L2622:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_relation:
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
 jmp eval_aexpression
eval_relation1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S392
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz eval_relation2
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
 jmp getToken
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
 jmp eval_aexpression
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
 jmp eval_cmp
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
 jmp eval_ge
 jmp eval_relation1
eval_relation2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S393
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz eval_relation3
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
 jmp getToken
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
 jmp eval_aexpression
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
 jmp eval_cmp
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
 jmp eval_gt
 jmp eval_relation1
eval_relation3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S394
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz eval_relation4
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
 jmp getToken
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
 jmp eval_aexpression
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
 jmp eval_cmp
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
 jmp eval_le
 jmp eval_relation1
eval_relation4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S395
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz eval_relation5
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
 jmp getToken
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
 jmp eval_aexpression
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
 jmp eval_cmp
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
 jmp eval_lt
 jmp eval_relation1
eval_relation5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S396
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz eval_relation6
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
 jmp getToken
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
 jmp eval_aexpression
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
 jmp eval_cmp
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
 jmp eval_neq
 jmp eval_relation1
eval_relation6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S397
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz eval_relation7
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
 jmp getToken
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
 jmp eval_aexpression
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
 jmp eval_cmp
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
 jmp eval_eq
 jmp eval_relation1
eval_relation7:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
eval_lterm:
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
 jmp eval_relation
eval_lterm1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S400
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2680
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2680:
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
 jmp getToken
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
 jmp eval_relation
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
 jmp eval_and
 jmp eval_lterm1
eval_expression:
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
 jmp eval_lterm
eval_expression1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TokenText
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S402
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2691
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2691:
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
 jmp getToken
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
 jmp eval_lterm
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
 jmp eval_or
 jmp eval_expression1
get_string:
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
 jmp value_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jz L2698
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S404
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
 jmp assertError
L2698:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
 exg rdi,rsi
 rdi-=rsi
 rax=&CalcStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
get_number:
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
 jmp value_type
 rax=&vgetn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vgetn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 rsi-rdi
 jz L2705
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S407
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
 jmp assertError
L2705:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
 exg rdi,rsi
 rdi-=rsi
 rax=&CalcStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&vgetn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vgetn
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
put_string:
 rax=&str
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
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
 rax=&ss
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&str
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.type
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ss
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.data
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
 rdi+=rsi
 rax=&CalcStackP
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
put_number:
 rax=&num
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.type
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&num
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.data
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
 rdi+=rsi
 rax=&CalcStackP
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
value_type:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStack
 rdi=(rax)
 rsi-rdi
 jnz L2724
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
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
L2724:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
 exg rdi,rsi
 rdi-=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 rcx=Value.type
 rcx+=rdi
 rax=(rcx)
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
check_value:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStack
 rdi=(rax)
 rsi-rdi
 jz L2728
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S411
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
 jmp assertError
L2728:
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
clear_value:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStack
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rsi-rdi
 jge clear_value1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
 exg rdi,rsi
 rdi-=rsi
 rax=&CalcStackP
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.type
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L2734
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStackP
 rdi=(rax)
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
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
 jmp free
L2734:
 jmp clear_value
clear_value1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&CalcStack
 rdi=(rax)
 rax=&CalcStackP
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
get_variable_value:
 rax=&force_error
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&xvname
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvname
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&force_error
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
 jmp _variable
 rax=&xvar
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvname
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
 jmp var_type
 rax=&xtype
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvar
 rdi=(rax)
 rcx=Variable.dimension
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&dims
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dims
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2745
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rdi+=rcx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xtype
 rdi=(rax)
 exg rdi,rsi
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
L2745:
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
 jmp getToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S416
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvar
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xtype
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dims
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
 rax=r15
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
 jmp eval_expression
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
 rdi=-8(rax)
 rax=&dims
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
 rdi=-8(rax)
 rax=&xtype
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
 rdi=-8(rax)
 rax=&xvar
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&index
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvar
 rdi=(rax)
 rcx=Variable.dim
 rdi+=rcx
 rax=&xdim
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&index
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L2757
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S417
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
 jmp assertError
L2757:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=0
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&xdim
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&index
 rdi=(rax)
 rsi-rdi
 jge L2758
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S418
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
 jmp assertError
L2758:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&vii
 (rax)=rdi
get_variable_value1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dims
 rdi=(rax)
 rsi-rdi
 jge get_variable_value2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S419
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&index
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xdim
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vii
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvar
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xtype
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
 rax=r15
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&dims
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
 rax=r15
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
 jmp eval_expression
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
 rdi=-8(rax)
 rax=&dims
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
 rdi=-8(rax)
 rax=&xtype
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
 rdi=-8(rax)
 rax=&xvar
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
 rdi=-8(rax)
 rax=&vii
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
 rdi=-8(rax)
 rax=&xdim
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
 rdi=-8(rax)
 rax=&index
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
 jmp get_number
 xmm0=rdi
 rdi=(long)xmm0
 rax=&xx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L2777
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S420
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
 jmp assertError
L2777:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&vii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&xdim
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 rsi-rdi
 jge L2778
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S421
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
 jmp assertError
L2778:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&index
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&vii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&xdim
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 rdi+=rsi
 rax=&index
 (rax)=rdi
 rcx=&vii
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp get_variable_value1
get_variable_value2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S422
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
 jmp checkToken
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&index
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=8
 rax=rdi
 mul rsi
 rdi=rax
 rax=&index
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xvar
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&index
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xtype
 rdi=(rax)
 exg rdi,rsi
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
get_variable:
 rax=&var_name
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopVar
 rdi=(rax)
 rax=&var
 (rax)=rdi
get_variable1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz get_variable2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.name
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var_name
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
 jmp strcmp
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2792
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
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
L2792:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&var
 (rax)=rdi
 jmp get_variable1
get_variable2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
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
_variable:
 rax=&force_error
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&var_name
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
 jmp get_variable
 rax=&var
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz L2800
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
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
L2800:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&force_error
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L2801
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S428
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
 jmp assertError
L2801:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Variable.SIZE
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
 rax=&var
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var_name
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.name
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var_name
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.name
 rcx+=rdi
 rax=(rcx)
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=Value.SIZE
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.dimension
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var_name
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
 jmp var_type
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz _variable1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.type
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ALIGNMENT
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
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S432
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
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
 jmp strcpy
 jmp _variable2
_variable1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.type
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=rsi
 (rcx)=rax
_variable2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopVar
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L2817
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rax=&TopVar
 (rax)=rdi
L2817:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&EndVar
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz L2818
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&EndVar
 rdi=(rax)
 rcx=Variable.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
L2818:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rax=&EndVar
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
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
var_type:
 rax=&var_name
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&tt
 rax=(rcx)
 rcx=&var_name
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=36
 rsi-rdi
 jnz L2824
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
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
L2824:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NUMBER
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
clear_variable:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopVar
 rdi=(rax)
 rax=&var
 (rax)=rdi
clear_variable1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz clear_variable5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.dimension
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz clear_variable3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.name
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz clear_variable2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&str
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.dimension
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 exg rdi,rsi
 rdi-=rsi
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&mm
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.dim
 rdi+=rcx
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&mm
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rax=(rax)
 rdi=(rax)
 rax=rdi
 mul rsi
 rdi=rax
 rax=&mm
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=8
 rdi+=rsi
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 rcx=&mm
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&mm
 rdi=(rax)
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rcx=&ii
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&str
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
clear_variable2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
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
 jmp free
 jmp clear_variable4
clear_variable3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.name
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STRING
 rsi-rdi
 jnz L2851
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rcx=Value.data
 rcx+=rdi
 rax=(rcx)
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
 jmp free
L2851:
clear_variable4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rax=&vv
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&var
 rdi=(rax)
 rcx=Variable.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&var
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vv
 rdi=(rax)
 rcx=Variable.name
 rcx+=rdi
 rax=(rcx)
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
 jmp free
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vv
 rdi=(rax)
 rcx=Variable.value
 rcx+=rdi
 rax=(rcx)
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
 jmp free
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&vv
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
 jmp clear_variable1
clear_variable5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&TopVar
 (rax)=rdi
 rax=&EndVar
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
LINES: = 24
COLS: = 64
start_editor:
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S436
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
 rax=&li0
 (rax)=rdi
 rax=&el
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=100000
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
 rax=&xbuf
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 rax=&tail
 (rax)=rdi
 rax=&copy_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&xx
 (rax)=rdi
 rax=&yy
 (rax)=rdi
 rax=&y0
 (rax)=rdi
 rax=&xbuf
 rax=(rax)
 rcx=rdi
 (rax)=cl
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
 jmp receive_prog
get_command:
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
 jmp display
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&eflg
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
 (rax)=rdi
get_command0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk
 rdi=(rax)
 rax=&k2
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
 rax=&xk
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz get_command0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&k2
 rdi=(rax)
 rsi-rdi
 jz get_command0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 rsi-rdi
 jlt get_command1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=57
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 rsi-rdi
 jlt get_command1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&eflg
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2892
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&ll
 (rax)=rdi
L2892:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=10
 rax=rdi
 mul rsi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=48
 exg rdi,rsi
 rdi-=rsi
 rax=&ll
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&eflg
 rcx=rdi
 (rax)=cl
 jmp get_command0
get_command1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rsi-rdi
 jz get_command2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=115
 rsi-rdi
 jnz L2898
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&copy_p
 (rax)=rdi
L2898:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rsi-rdi
 jnz L2899
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
 jmp xjump_foward
L2899:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=106
 rsi-rdi
 jnz L2900
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
 jmp xjump
L2900:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=46
 rsi-rdi
 jnz L2901
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
 jmp xjump_end
L2901:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L2902
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
 jmp xjump_reverse
L2902:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=100
 rsi-rdi
 jnz L2903
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
 jmp delete_line
L2903:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=99
 rsi-rdi
 jnz L2904
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
 jmp copy
L2904:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=109
 rsi-rdi
 jnz L2905
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
 jmp modefy
L2905:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=59
 rsi-rdi
 jnz L2906
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&xxtext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&xxli
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
 jmp serch
L2906:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=58
 rsi-rdi
 jnz L2907
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&xxtext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&xxli
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
 jmp serch_next
L2907:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=119
 rsi-rdi
 jnz L2908
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
 jmp write_file
L2908:
get_command2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=105
 rsi-rdi
 jnz L2910
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&xxli
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
 jmp insert
L2910:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=97
 rsi-rdi
 jnz L2911
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&xxli
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
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
 jmp jump_foward
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
 jmp nl
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
 jmp insert
L2911:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=114
 rsi-rdi
 jnz L2912
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
 jmp nl
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
 jmp erase_line
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
 jmp read_file
L2912:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=113
 rsi-rdi
 jz quit
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xk+2
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=63
 rsi-rdi
 jnz L2914
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
 jmp help
L2914:
 jmp get_command
xjump:
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
 jmp jump
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&li0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&etext0
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
xjump_foward:
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
 jmp jump_foward
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
 exg rdi,rsi
 rdi-=rsi
 rax=&xx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 rsi-rdi
 jge L2924
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xx
 rdi=(rax)
 rax=&ll
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
 jmp jump0_foward
L2924:
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
xjump_reverse:
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
 jmp jump_reverse
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 rsi-rdi
 jge L2928
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&li0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&etext0
 (rax)=rdi
L2928:
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
xjump_end:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&el
 rdi=(rax)
 rax=&li
 (rax)=rdi
 rax=&li0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 rax=&etext0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES/2
 rax=&ll
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
 jmp jump0_reverse
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
delete_line:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L2936
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
L2936:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&temp1
 (rax)=rdi
 rax=&temp2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&temp3
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
 jmp jump_foward
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rsi-rdi
 jlt loop5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rsi-rdi
 jge L2941
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&copy_p
 (rax)=rdi
 jmp loop5
L2941:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rdi+=rsi
 rax=&copy_p
 (rax)=rdi
loop5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jge exit5
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&temp1
 rax=(rax)
 rcx=rdi
 (rax)=cl
 rcx=&temp1
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&etext
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp loop5
exit5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&temp1
 rax=(rax)
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rax=&tail
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp3
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&el
 rdi=(rax)
 rdi+=rsi
 rax=&el
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp3
 rdi=(rax)
 rax=&li
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp2
 rdi=(rax)
 rax=&etext
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
copy:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rax=&temp2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&temp3
 (rax)=rdi
loop6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp2
 rdi=(rax)
 rsi-rdi
 jge exit6
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jge exit6
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
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
 jmp jump_foward
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&copy_p
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rax=&etext
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
 jmp insert1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&temp1
 (rax)=rdi
 rcx=&temp2
 rax=(rcx)
 rax--
 (rcx)=rax
 jmp loop6
exit6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp3
 rdi=(rax)
 rax=&li
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
modefy:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S437
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp inputs
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp strstr
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L2975
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S438
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
 jmp prints
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
 jmp getchar
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
L2975:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rdi+=rsi
 rax=&temp2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&temp3
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
 rax=&temp4
 (rax)=rdi
loop7:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp3
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rsi-rdi
 jge exit7
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp3
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&temp4
 rax=(rax)
 rcx=rdi
 (rax)=cl
 rcx=&temp3
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&temp4
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp loop7
exit7:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S439
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp4
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
 jmp inputs
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp2
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp4
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
 jmp strcat
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
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
 jmp delete_line
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
 jmp insert1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
 (rax)=rdi
 jmp jump_reverse
serch:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S440
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp inputs
serch1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp strstr
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz L2996
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&li0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&etext0
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
L2996:
serch_next:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
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
 jmp jump_foward
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jlt serch1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xxtext
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xxli
 rdi=(rax)
 rax=&li
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
write_file:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S441
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp inputs
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sxbuf
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L3006
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
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
 jmp strcpy
L3006:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&temp2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
 rax=&t1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jnz L3010
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S442
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
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
 jmp prints
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
 jmp getchar
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
L3010:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
loop8:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jge exit8
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
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
 jmp jump_foward
 jmp loop8
exit8:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp2
 rdi=(rax)
 rax=&li
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
read_file:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S443
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp inputs
read_file1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sxbuf
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jz L3027
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
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
 jmp strcpy
L3027:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
 rax=&t1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=ERROR
 rsi-rdi
 jz read_error
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
loop9:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=EOF
 rsi-rdi
 jz exit9
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L3035
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S444
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
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
 jmp strcpy
L3035:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&etext
 (rax)=rdi
 rcx=&li
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp loop9
exit9:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efp
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&etext
 rax=(rax)
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&el
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&tail
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 rax=&etext0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
 rax=&li0
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
read_error:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES-1
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S445
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=efname
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
 jmp prints
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
 jmp getchar
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
insert:
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S446
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
 jmp prints
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp inputs
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S447
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
 jmp strcmp
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sxbuf
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L3055
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S448
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp strcpy
L3055:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L3056
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xxli
 rdi=(rax)
 rax=&ll
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
 jmp xjump
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
L3056:
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
 jmp insert1
 jmp insert
insert1:
 rcx=&li
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&el
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&t1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&t2
 (rax)=rdi
 rdi+=rsi
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t1
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rax=&t3
 (rax)=rdi
 rdi+=rsi
 rax=&tail
 (rax)=rdi
 rax=&t4
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t2
 rdi=(rax)
 rsi-rdi
 jlt L3065
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&copy_p
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t1
 rdi=(rax)
 rdi+=rsi
 rax=&copy_p
 (rax)=rdi
L3065:
loop10:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t3
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&t4
 rax=(rax)
 rcx=rdi
 (rax)=cl
 rcx=&t3
 rax=(rcx)
 rax--
 (rcx)=rax
 rcx=&t4
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t3
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t2
 rdi=(rax)
 rsi-rdi
 jge loop10
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=sxbuf
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&t2
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
 jmp strcpy
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
quit:
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
 jmp send_prog
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
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
help:
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S449
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
 jmp prints
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
 jmp nl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S450
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
 jmp prints
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
 jmp nl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S451
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
 jmp prints
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
 jmp nl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S452
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
 jmp prints
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
 jmp nl
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
 jmp getchar
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
display:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext0
 rdi=(rax)
 rax=&tx0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=disp_xbuf
 rax=&ds
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj
 (rax)=rdi
display1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jge display4
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx0
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz L3094
 rcx=&tx0
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp display2
L3094:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tx0
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 rcx=&tx0
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 rcx=&jj
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLS
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rsi-rdi
 jge display1
 jmp display3
display2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=32
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 rcx=&jj
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLS
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rsi-rdi
 jge display2
display3:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=CR
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LF
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj
 (rax)=rdi
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rsi-rdi
 jge display1
 jmp set_locate
display4:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=126
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 rcx=&jj
 rax=(rcx)
 rax++
 (rcx)=rax
display5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=32
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 rcx=&jj
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLS
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&jj
 rdi=(rax)
 rsi-rdi
 jge display5
display6:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=CR
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LF
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ds
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=2
 rdi+=rsi
 rax=&ds
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&jj
 (rax)=rdi
 rcx=&ii
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 rsi-rdi
 jge display4
set_locate:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp cursor
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&ds
 rax=(rax)
 rcx=rdi
 (rax)=cx
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp locate
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=disp_xbuf
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
 jmp wputs
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=LINES
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
 jmp locate
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
 jmp erase_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
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
 jmp printd
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&kk
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&kk
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
 jmp locate
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
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
 jmp cursor
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
jump_foward:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rdi+=rsi
 rax=&ll
 (rax)=rdi
 jmp jump_foward1
jump:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
jump_foward1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rsi-rdi
 jlt L3149
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
L3149:
jump_foward2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jlt L3151
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&el
 rdi=(rax)
 rax=&li
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rax=&etext
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
L3151:
 rcx=&etext
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz jump_foward2
 rcx=&etext
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&li
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp jump_foward1
jump_reverse:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&ll
 (rax)=rdi
jump_reverse1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rsi-rdi
 jlt L3160
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
L3160:
 rcx=&etext
 rax=(rcx)
 rax--
 (rcx)=rax
jump_reverse2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rsi-rdi
 jlt L3163
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
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
L3163:
 rcx=&etext
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz jump_reverse2
 rcx=&etext
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&li
 rax=(rcx)
 rax--
 (rcx)=rax
 jmp jump_reverse1
jump0_foward:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rdi+=rsi
 rax=&ll
 (rax)=rdi
 jmp jump01
jump0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li0
 (rax)=rdi
jump01:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 rsi-rdi
 jlt L3176
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
L3176:
jump02:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jlt L3178
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
L3178:
 rcx=&etext0
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext0
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz jump02
 rcx=&etext0
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&li0
 rax=(rcx)
 rax++
 (rcx)=rax
 jmp jump01
jump0_reverse:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 exg rdi,rsi
 rdi-=rsi
 rax=&ll
 (rax)=rdi
jump0_reverse1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ll
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li0
 rdi=(rax)
 rsi-rdi
 jlt L3187
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
L3187:
 rcx=&etext0
 rax=(rcx)
 rax--
 (rcx)=rax
jump0_reverse2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext0
 rdi=(rax)
 rsi-rdi
 jlt L3190
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
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
L3190:
 rcx=&etext0
 rax=(rcx)
 rax--
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext0
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz jump0_reverse2
 rcx=&etext0
 rax=(rcx)
 rax++
 (rcx)=rax
 rcx=&li0
 rax=(rcx)
 rax--
 (rcx)=rax
 jmp jump0_reverse1
erase_line:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=13
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
 jmp putch
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=COLS
 rax=&nn+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&nn+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&nn+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=32
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
 jmp putch
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn+16
 rdi=(rax)
 rdi+=rsi
 rax=&nn
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&nn+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=13
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
 jmp putch
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
receive_prog:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&TopProg
 rdi=(rax)
 rax=&pp
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
receive_prog1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz receive_prog2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.text
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
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
 jmp strcpy
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jnz L3210
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S453
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
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
 jmp strcpy
L3210:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
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
 jmp strlen
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rdi+=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rdi+=rsi
 rax=&etext
 (rax)=rdi
 rcx=&li
 rax=(rcx)
 rax++
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&pp
 rdi=(rax)
 rcx=Program.next
 rcx+=rdi
 rax=(rcx)
 rdi=rax
 rax=&pp
 (rax)=rdi
 jmp receive_prog1
receive_prog2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rax=&etext
 rax=(rax)
 rcx=rdi
 (rax)=cl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&el
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&tail
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 rax=&etext0
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
 (rax)=rdi
 rax=&li0
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
send_prog:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 rax=&temp1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&li
 rdi=(rax)
 rax=&temp2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&xbuf
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&li
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
 jmp cmd_new
send_prog1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tail
 rdi=(rax)
 rsi-rdi
 jge send_prog2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&etext
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
 jmp append_line
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ll
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
 jmp jump_foward
 jmp send_prog1
send_prog2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp1
 rdi=(rax)
 rax=&etext
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&temp2
 rdi=(rax)
 rax=&li
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
math_sin:
 rax=&sin_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^6.28318530717959
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 xmm0=rdi
 rdi=(long)xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rsi-rdi
 jge L3240
 rcx=&tt
 rax=(rcx)
 rax--
 (rcx)=rax
L3240:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^6.28318530717959
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x
 rdi=(rax)
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&sin_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&sin_x2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0000000000000028
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~0.0000000000007647
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0000000001605904
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~0.0000000250521083
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0000027557319223
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~0.0001984126984126
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0083333333333333
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~0.1666666666666666
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&sin_x
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
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
math_cos:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.570796326767849
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
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
 jmp math_sin
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
math_tan:
 rax=&tan_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tan_a
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
 jmp math_cos
 rax=&tan_x
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tan_x
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L3260
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NaN
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
L3260:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tan_a
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
 jmp math_sin
 rax=&tan_y
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tan_y
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tan_x
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
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
math_arctan:
 rax=&arctan_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&arctan_s
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L3267
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&arctan_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~1.0
 rax=&arctan_s
 (rax)=rdi
L3267:
math_arctan0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^2.41421356237
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae math_arctan1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
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
 jmp xarctan
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.5707963268
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_s
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
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
math_arctan1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.41421356237
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae math_arctan2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^2.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
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
 jmp xarctan
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.78539816339
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_s
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
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
math_arctan2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_a
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
 jmp xarctan
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&arctan_s
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
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
xarctan:
 rax=&txx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&txx
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&txx2
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&tkk
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&tsign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 rax=&tret
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=38
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&txx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tkk
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tsign
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tret
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&tret
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&txx
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&txx2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&txx
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tkk
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^2.0
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&tkk
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tsign
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~1.0
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&tsign
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tret
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
math_exp:
 rax=&exp_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L3299
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
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
L3299:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L3300
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^2.718281828459
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
L3300:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=~1.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L3301
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.367879441171
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
L3301:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&exp_s
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L3303
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&exp_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&exp_s
 (rax)=rdi
L3303:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 xmm0=rdi
 rdi=(long)xmm0
 rax=&exp_n
 (rax)=rdi
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&exp_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 rax=&exp_r
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=17
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&ii+8
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 rax=&ii+16
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=&11(rip)
 rax=&ii+24
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 xmm0=(double)rdi
 rdi=xmm0
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_r
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&exp_r
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+8
 rdi=(rax)
 rsi-rdi
 jz $+118
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+16
 rdi=(rax)
 rdi+=rsi
 rax=&ii
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ii+24
 rdi=(rax)
 jmp (rdi)
math_exp0:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_n
 rdi=(rax)
 rsi-rdi
 jge math_exp1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_r
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^2.718281828459
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&exp_r
 (rax)=rdi
 rcx=&exp_n
 rax=(rcx)
 rax--
 (rcx)=rax
 jmp math_exp0
math_exp1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_s
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L3316
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_r
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&exp_r
 (rax)=rdi
L3316:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&exp_r
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
math_log:
 rax=&log_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&log_s
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb L3322
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NaN
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
L3322:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jnz L3323
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
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
L3323:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L3324
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_a
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 rax=&log_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&log_s
 (rax)=rdi
L3324:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_a
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0x10000000000000
 rdx^=rdx
 rax=rsi
 rax&rax
 jge $+9
 rdx--
 div rdi
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0xfff
 rdi&=rsi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1023
 exg rdi,rsi
 rdi-=rsi
 xmm0=(double)rdi
 rdi=xmm0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.69315
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
 rax=&log_r
 (rax)=rdi
math_log1:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_r
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
 jmp math_exp
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_a
 rdi=(rax)
 exg rdi,rsi
 xmm0=rdi
 xmm1=rsi
 xmm1./=xmm0
 rdi=xmm1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^1.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&log_d
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_r
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_d
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.+=xmm1
 rdi=xmm0
 rax=&log_r
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_d
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jae L3330
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_d
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&log_d
 (rax)=rdi
L3330:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0000000001
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_d
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-xmm0
 jb math_log1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_s
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rsi-rdi
 jnz L3332
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=^0.0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_r
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm1.-=xmm0
 rdi=xmm1
 rax=&log_r
 (rax)=rdi
L3332:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&log_r
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
math_random:
 rax=&random_a
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&random_v
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
math_power:
 rax=&power_a2
 (rax)=rdi
 rdi=rsi
 rsi=rdx
 rdx=r8
 r8=r9
 r9=r10
 r10=r11
 r11=r12
 rax=&power_a1
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&power_a1
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
 jmp math_log
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&power_a2
 rdi=(rax)
 xmm0=rdi
 xmm1=rsi
 xmm0.*=xmm1
 rdi=xmm0
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
 jmp math_exp
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
_INIT_STATES:
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
main:
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
 jmp _INIT_STATES
 jmp _PSTART
_PSTART:
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
 jmp _644062633_in
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
_644062633_in:
start_basic:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&__stack_p
 rdi=(rax)
 rax=&StackSave
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STACK_SIZE
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
 rax=&ForStack
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=STACK_SIZE
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
 rax=&GosubStack
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.prev
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0xffffff
 rax=&xcolor
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&screen_width
 rdi=(rax)
 rax=&xwidth
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&screen_height
 rdi=(rax)
 rax=&xheight
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&graphic_base
 rdi=(rax)
 rax=&bitmap
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.lineno
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=text
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.text
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=1
 rax=&RunFlg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&BreakProg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=1
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&argv
 rcx+=rax
 rdi=(rcx)
 rax=&fname
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fname
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jnz start_basic4
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S454
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
 jmp prints
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
 jmp nl
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
 jmp cmd_new
basic_entry:
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
 jmp nl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S455
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
 jmp prints
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
 jmp nl
start_basic1:
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
 jmp clear_value
start_basic2:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=text
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
 jmp inputs
 rax=&tt
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&tt
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=13
 rsi-rdi
 jz L3379
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
 jmp nl
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S456
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
 jmp prints
 jmp start_basic2
L3379:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&text
 al=(rax)
 ext al
 rdi=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 rsi-rdi
 jz start_basic2
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
 rax=&BreakFlg
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.prev
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.lineno
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.label
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=text
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.text
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
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
 jmp exec_basic
 rax=&status
 (rax)=rdi
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&status
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=QUIT
 rsi-rdi
 jz start_basic3
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&status
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=TERMINATE
 rsi-rdi
 jz L3389
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S457
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
 jmp assertError
L3389:
 jmp basic_entry
start_basic3:
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
 jmp cmd_new
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S458
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
 jmp prints
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
 jmp nl
 jmp start_basic5
start_basic4:
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&fname
 rdi=(rax)
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=0
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
 jmp load_basic
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.prev
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=NULL
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.next
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.lineno
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=-1
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.label
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=S459
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
 rcx=Program.text
 rcx+=rdi
 rax=rsi
 (rcx)=rax
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rdi=prog
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
 jmp exec_basic
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
 jmp cmd_new
start_basic5:
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&ForStack
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
 r12=r11
 r11=r10
 r10=r9
 r9=r8
 r8=rdx
 rdx=rsi
 rsi=rdi
 rax=&GosubStack
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
  byte 42
  byte 42
  byte 42
  byte 32
  byte 98
  byte 97
  byte 99
  byte 107
  byte 103
  byte 114
  byte 111
  byte 117
  byte 110
  byte 100
  byte 32
  byte 42
  byte 42
  byte 42
  byte 0
S4:
  byte 114
  byte 117
  byte 110
  byte 0
S5:
  byte 105
  byte 102
  byte 0
S6:
  byte 102
  byte 111
  byte 114
  byte 0
S7:
  byte 110
  byte 101
  byte 120
  byte 116
  byte 0
S8:
  byte 103
  byte 111
  byte 116
  byte 111
  byte 0
S9:
  byte 103
  byte 111
  byte 115
  byte 117
  byte 98
  byte 0
S10:
  byte 114
  byte 101
  byte 116
  byte 117
  byte 114
  byte 110
  byte 0
S11:
  byte 112
  byte 114
  byte 105
  byte 110
  byte 116
  byte 0
S12:
  byte 105
  byte 110
  byte 112
  byte 117
  byte 116
  byte 0
S13:
  byte 99
  byte 108
  byte 101
  byte 97
  byte 114
  byte 0
S14:
  byte 112
  byte 115
  byte 101
  byte 116
  byte 0
S15:
  byte 99
  byte 108
  byte 115
  byte 0
S16:
  byte 108
  byte 105
  byte 110
  byte 101
  byte 0
S17:
  byte 108
  byte 111
  byte 99
  byte 97
  byte 116
  byte 101
  byte 0
S18:
  byte 100
  byte 105
  byte 109
  byte 0
S19:
  byte 111
  byte 112
  byte 101
  byte 110
  byte 0
S20:
  byte 99
  byte 108
  byte 111
  byte 115
  byte 101
  byte 0
S21:
  byte 98
  byte 111
  byte 120
  byte 0
S22:
  byte 98
  byte 111
  byte 120
  byte 102
  byte 0
S23:
  byte 99
  byte 105
  byte 114
  byte 99
  byte 108
  byte 101
  byte 0
S24:
  byte 99
  byte 105
  byte 114
  byte 99
  byte 108
  byte 101
  byte 102
  byte 0
S25:
  byte 115
  byte 116
  byte 97
  byte 114
  byte 116
  byte 0
S26:
  byte 101
  byte 120
  byte 101
  byte 99
  byte 0
S27:
  byte 119
  byte 97
  byte 105
  byte 116
  byte 0
S28:
  byte 105
  byte 109
  byte 97
  byte 103
  byte 101
  byte 0
S29:
  byte 115
  byte 97
  byte 118
  byte 101
  byte 0
S30:
  byte 101
  byte 100
  byte 105
  byte 116
  byte 0
S31:
  byte 108
  byte 111
  byte 97
  byte 100
  byte 0
S32:
  byte 110
  byte 101
  byte 119
  byte 0
S33:
  byte 108
  byte 101
  byte 116
  byte 0
S34:
  byte 101
  byte 110
  byte 100
  byte 0
S35:
  byte 108
  byte 105
  byte 115
  byte 116
  byte 0
S36:
  byte 114
  byte 117
  byte 110
  byte 0
S37:
  byte 98
  byte 121
  byte 101
  byte 0
S38:
  byte 115
  byte 116
  byte 111
  byte 112
  byte 0
S39:
  byte 99
  byte 111
  byte 110
  byte 116
  byte 0
S40:
  byte 99
  byte 111
  byte 108
  byte 111
  byte 114
  byte 0
S41:
  byte 109
  byte 97
  byte 107
  byte 101
  byte 0
S42:
  byte 97
  byte 98
  byte 115
  byte 0
S43:
  byte 105
  byte 110
  byte 116
  byte 0
S44:
  byte 115
  byte 103
  byte 110
  byte 0
S45:
  byte 115
  byte 113
  byte 114
  byte 0
S46:
  byte 101
  byte 120
  byte 112
  byte 0
S47:
  byte 108
  byte 111
  byte 103
  byte 0
S48:
  byte 115
  byte 105
  byte 110
  byte 0
S49:
  byte 99
  byte 111
  byte 115
  byte 0
S50:
  byte 116
  byte 97
  byte 110
  byte 0
S51:
  byte 97
  byte 116
  byte 110
  byte 0
S52:
  byte 99
  byte 104
  byte 114
  byte 36
  byte 0
S53:
  byte 97
  byte 115
  byte 99
  byte 0
S54:
  byte 109
  byte 105
  byte 100
  byte 36
  byte 0
S55:
  byte 108
  byte 101
  byte 102
  byte 116
  byte 36
  byte 0
S56:
  byte 114
  byte 105
  byte 103
  byte 104
  byte 116
  byte 36
  byte 0
S57:
  byte 105
  byte 110
  byte 112
  byte 117
  byte 116
  byte 36
  byte 0
S58:
  byte 105
  byte 110
  byte 107
  byte 101
  byte 121
  byte 36
  byte 0
S59:
  byte 101
  byte 111
  byte 102
  byte 0
S60:
  byte 115
  byte 116
  byte 114
  byte 36
  byte 0
S61:
  byte 118
  byte 97
  byte 108
  byte 0
S62:
  byte 108
  byte 101
  byte 110
  byte 0
S63:
  byte 116
  byte 105
  byte 109
  byte 101
  byte 36
  byte 0
S64:
  byte 100
  byte 97
  byte 116
  byte 101
  byte 36
  byte 0
S65:
  byte 105
  byte 110
  byte 115
  byte 116
  byte 114
  byte 0
S66:
  byte 114
  byte 110
  byte 100
  byte 0
S67:
  byte 110
  byte 101
  byte 116
  byte 115
  byte 116
  byte 97
  byte 116
  byte 0
S68:
  byte 115
  byte 101
  byte 114
  byte 99
  byte 104
  byte 32
  byte 108
  byte 97
  byte 98
  byte 101
  byte 108
  byte 32
  byte 112
  byte 111
  byte 115
  byte 105
  byte 116
  byte 105
  byte 111
  byte 110
  byte 58
  byte 0
S69:
  byte 108
  byte 98
  byte 108
  byte 58
  byte 32
  byte 0
S70:
  byte 115
  byte 116
  byte 114
  byte 58
  byte 32
  byte 0
S71:
  byte 32
  byte 115
  byte 116
  byte 97
  byte 114
  byte 116
  byte 32
  byte 115
  byte 101
  byte 114
  byte 99
  byte 104
  byte 58
  byte 0
S72:
  byte 108
  byte 98
  byte 108
  byte 61
  byte 0
S73:
  byte 110
  byte 101
  byte 120
  byte 116
  byte 32
  byte 108
  byte 105
  byte 110
  byte 101
  byte 58
  byte 0
S74:
  byte 97
  byte 112
  byte 112
  byte 101
  byte 110
  byte 100
  byte 32
  byte 108
  byte 105
  byte 110
  byte 101
  byte 58
  byte 0
S75:
  byte 101
  byte 120
  byte 101
  byte 99
  byte 32
  byte 98
  byte 97
  byte 115
  byte 105
  byte 99
  byte 50
  byte 58
  byte 0
S76:
  byte 99
  byte 97
  byte 110
  byte 39
  byte 116
  byte 32
  byte 99
  byte 111
  byte 110
  byte 116
  byte 105
  byte 110
  byte 117
  byte 101
  byte 0
S77:
  byte 66
  byte 114
  byte 101
  byte 97
  byte 107
  byte 0
S78:
  byte 101
  byte 120
  byte 101
  byte 99
  byte 32
  byte 98
  byte 97
  byte 115
  byte 105
  byte 99
  byte 50
  byte 32
  byte 99
  byte 111
  byte 109
  byte 109
  byte 97
  byte 110
  byte 100
  byte 58
  byte 0
S79:
  byte 101
  byte 120
  byte 101
  byte 99
  byte 32
  byte 98
  byte 97
  byte 115
  byte 105
  byte 99
  byte 50
  byte 32
  byte 101
  byte 111
  byte 108
  byte 58
  byte 0
S80:
  byte 101
  byte 120
  byte 101
  byte 99
  byte 32
  byte 98
  byte 97
  byte 115
  byte 105
  byte 99
  byte 50
  byte 32
  byte 100
  byte 101
  byte 108
  byte 105
  byte 109
  byte 105
  byte 116
  byte 58
  byte 0
S81:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S82:
  byte 101
  byte 120
  byte 101
  byte 99
  byte 32
  byte 98
  byte 97
  byte 115
  byte 105
  byte 99
  byte 50
  byte 32
  byte 111
  byte 116
  byte 104
  byte 101
  byte 114
  byte 58
  byte 0
S83:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S84:
  byte 97
  byte 115
  byte 115
  byte 101
  byte 114
  byte 116
  byte 32
  byte 101
  byte 114
  byte 114
  byte 111
  byte 114
  byte 58
  byte 0
S85:
  byte 76
  byte 105
  byte 110
  byte 101
  byte 32
  byte 0
S86:
  byte 32
  byte 58
  byte 32
  byte 0
S87:
  byte 108
  byte 111
  byte 97
  byte 100
  byte 32
  byte 98
  byte 97
  byte 115
  byte 105
  byte 99
  byte 58
  byte 0
S88:
  byte 99
  byte 97
  byte 110
  byte 39
  byte 116
  byte 32
  byte 108
  byte 111
  byte 97
  byte 100
  byte 0
S89:
  byte 103
  byte 101
  byte 116
  byte 84
  byte 111
  byte 107
  byte 101
  byte 110
  byte 58
  byte 0
S90:
  byte 39
  byte 0
S91:
  byte 227
  byte 129
  byte 167
  byte 227
  byte 129
  byte 130
  byte 227
  byte 130
  byte 140
  byte 227
  byte 129
  byte 176
  byte 230
  byte 172
  byte 161
  byte 227
  byte 129
  byte 174
  byte 0
S92:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S93:
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 58
  byte 0
S94:
  byte 115
  byte 121
  byte 109
  byte 98
  byte 111
  byte 108
  byte 32
  byte 99
  byte 104
  byte 97
  byte 114
  byte 58
  byte 0
S95:
  byte 84
  byte 111
  byte 107
  byte 101
  byte 110
  byte 84
  byte 101
  byte 120
  byte 116
  byte 61
  byte 0
S96:
  byte 101
  byte 108
  byte 115
  byte 101
  byte 0
S97:
  byte 101
  byte 108
  byte 115
  byte 101
  byte 0
S98:
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 58
  byte 0
S99:
  byte 108
  byte 97
  byte 98
  byte 101
  byte 108
  byte 58
  byte 0
S100:
  byte 84
  byte 111
  byte 107
  byte 101
  byte 110
  byte 84
  byte 101
  byte 120
  byte 116
  byte 61
  byte 0
S101:
  byte 66
  byte 97
  byte 100
  byte 32
  byte 78
  byte 117
  byte 109
  byte 98
  byte 101
  byte 114
  byte 32
  byte 70
  byte 111
  byte 114
  byte 109
  byte 97
  byte 116
  byte 0
S102:
  byte 100
  byte 101
  byte 108
  byte 105
  byte 109
  byte 105
  byte 116
  byte 116
  byte 101
  byte 114
  byte 58
  byte 0
S103:
  byte 84
  byte 111
  byte 107
  byte 101
  byte 110
  byte 84
  byte 101
  byte 120
  byte 116
  byte 61
  byte 0
S104:
  byte 99
  byte 104
  byte 101
  byte 99
  byte 107
  byte 32
  byte 116
  byte 111
  byte 107
  byte 101
  byte 110
  byte 58
  byte 0
S105:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S106:
  byte 120
  byte 115
  byte 116
  byte 114
  byte 58
  byte 0
S107:
  byte 120
  byte 115
  byte 116
  byte 114
  byte 48
  byte 58
  byte 0
S108:
  byte 48
  byte 0
S109:
  byte 45
  byte 0
S110:
  byte 120
  byte 115
  byte 116
  byte 114
  byte 49
  byte 58
  byte 0
S111:
  byte 110
  byte 111
  byte 32
  byte 101
  byte 120
  byte 112
  byte 58
  byte 0
S112:
  byte 46
  byte 0
S113:
  byte 120
  byte 115
  byte 116
  byte 114
  byte 32
  byte 101
  byte 110
  byte 100
  byte 0
S114:
  byte 101
  byte 120
  byte 112
  byte 43
  byte 58
  byte 0
S115:
  byte 46
  byte 0
S116:
  byte 101
  byte 43
  byte 0
S117:
  byte 120
  byte 115
  byte 116
  byte 114
  byte 32
  byte 101
  byte 110
  byte 100
  byte 0
S118:
  byte 101
  byte 120
  byte 112
  byte 45
  byte 58
  byte 0
S119:
  byte 46
  byte 0
S120:
  byte 101
  byte 0
S121:
  byte 120
  byte 115
  byte 116
  byte 114
  byte 32
  byte 101
  byte 110
  byte 100
  byte 0
S122:
  byte 112
  byte 117
  byte 116
  byte 95
  byte 114
  byte 101
  byte 97
  byte 108
  byte 95
  byte 98
  byte 117
  byte 102
  byte 58
  byte 0
S123:
  byte 112
  byte 117
  byte 116
  byte 95
  byte 114
  byte 101
  byte 97
  byte 108
  byte 95
  byte 98
  byte 117
  byte 102
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S124:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 119
  byte 97
  byte 105
  byte 116
  byte 58
  byte 0
S125:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 99
  byte 108
  byte 101
  byte 97
  byte 114
  byte 58
  byte 0
S126:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 99
  byte 108
  byte 111
  byte 115
  byte 101
  byte 58
  byte 0
S127:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S128:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S129:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 58
  byte 0
S130:
  byte 102
  byte 111
  byte 114
  byte 0
S131:
  byte 105
  byte 110
  byte 112
  byte 117
  byte 116
  byte 0
S132:
  byte 111
  byte 117
  byte 116
  byte 112
  byte 117
  byte 116
  byte 0
S133:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S134:
  byte 97
  byte 115
  byte 0
S135:
  byte 35
  byte 0
S136:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S137:
  byte 102
  byte 105
  byte 108
  byte 101
  byte 32
  byte 110
  byte 111
  byte 61
  byte 0
S138:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S139:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S140:
  byte 102
  byte 105
  byte 108
  byte 101
  byte 32
  byte 110
  byte 97
  byte 109
  byte 101
  byte 61
  byte 0
S141:
  byte 105
  byte 47
  byte 111
  byte 61
  byte 0
S142:
  byte 70
  byte 105
  byte 108
  byte 101
  byte 32
  byte 97
  byte 108
  byte 114
  byte 101
  byte 97
  byte 100
  byte 121
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 0
S143:
  byte 70
  byte 105
  byte 108
  byte 101
  byte 32
  byte 99
  byte 97
  byte 110
  byte 39
  byte 116
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 0
S144:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 100
  byte 105
  byte 109
  byte 58
  byte 0
S145:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S146:
  byte 100
  byte 105
  byte 109
  byte 32
  byte 118
  byte 97
  byte 114
  byte 61
  byte 0
S147:
  byte 40
  byte 0
S148:
  byte 100
  byte 105
  byte 109
  byte 101
  byte 110
  byte 115
  byte 105
  byte 111
  byte 110
  byte 32
  byte 115
  byte 105
  byte 122
  byte 101
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 0
S149:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S150:
  byte 44
  byte 0
S151:
  byte 0
S152:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 105
  byte 102
  byte 58
  byte 0
S153:
  byte 116
  byte 104
  byte 101
  byte 110
  byte 227
  byte 130
  byte 146
  byte 227
  byte 131
  byte 129
  byte 227
  byte 130
  byte 167
  byte 227
  byte 131
  byte 131
  byte 227
  byte 130
  byte 175
  byte 227
  byte 129
  byte 151
  byte 227
  byte 129
  byte 166
  byte 227
  byte 129
  byte 157
  byte 227
  byte 129
  byte 174
  byte 230
  byte 172
  byte 161
  byte 227
  byte 129
  byte 139
  byte 227
  byte 130
  byte 137
  byte 229
  byte 167
  byte 139
  byte 227
  byte 130
  byte 129
  byte 227
  byte 130
  byte 139
  byte 0
S154:
  byte 116
  byte 104
  byte 101
  byte 110
  byte 0
S155:
  byte 76
  byte 65
  byte 66
  byte 69
  byte 76
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 102
  byte 111
  byte 117
  byte 110
  byte 100
  byte 0
S156:
  byte 101
  byte 108
  byte 115
  byte 101
  byte 0
S157:
  byte 101
  byte 108
  byte 115
  byte 101
  byte 0
S158:
  byte 76
  byte 65
  byte 66
  byte 69
  byte 76
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 102
  byte 111
  byte 117
  byte 110
  byte 100
  byte 0
S159:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 114
  byte 101
  byte 116
  byte 117
  byte 114
  byte 110
  byte 58
  byte 0
S160:
  byte 114
  byte 101
  byte 116
  byte 117
  byte 114
  byte 110
  byte 32
  byte 119
  byte 105
  byte 116
  byte 104
  byte 111
  byte 117
  byte 116
  byte 32
  byte 103
  byte 111
  byte 115
  byte 117
  byte 98
  byte 0
S161:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 103
  byte 111
  byte 115
  byte 117
  byte 98
  byte 58
  byte 0
S162:
  byte 115
  byte 116
  byte 97
  byte 99
  byte 107
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 102
  byte 108
  byte 111
  byte 119
  byte 32
  byte 40
  byte 103
  byte 111
  byte 115
  byte 117
  byte 98
  byte 41
  byte 0
S163:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S164:
  byte 76
  byte 65
  byte 66
  byte 69
  byte 76
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 102
  byte 111
  byte 117
  byte 110
  byte 100
  byte 0
S165:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 110
  byte 101
  byte 120
  byte 116
  byte 58
  byte 0
S166:
  byte 110
  byte 101
  byte 120
  byte 116
  byte 32
  byte 119
  byte 105
  byte 116
  byte 104
  byte 111
  byte 117
  byte 116
  byte 32
  byte 102
  byte 111
  byte 114
  byte 0
S167:
  byte 110
  byte 101
  byte 120
  byte 116
  byte 32
  byte 119
  byte 105
  byte 116
  byte 104
  byte 111
  byte 117
  byte 116
  byte 32
  byte 102
  byte 111
  byte 114
  byte 0
S168:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 102
  byte 111
  byte 114
  byte 58
  byte 0
S169:
  byte 115
  byte 116
  byte 97
  byte 99
  byte 107
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 32
  byte 102
  byte 108
  byte 111
  byte 119
  byte 32
  byte 40
  byte 102
  byte 111
  byte 114
  byte 45
  byte 110
  byte 101
  byte 120
  byte 116
  byte 41
  byte 0
S170:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S171:
  byte 116
  byte 111
  byte 0
S172:
  byte 115
  byte 116
  byte 101
  byte 112
  byte 0
S173:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 103
  byte 111
  byte 116
  byte 111
  byte 58
  byte 0
S174:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S175:
  byte 76
  byte 65
  byte 66
  byte 69
  byte 76
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 102
  byte 111
  byte 117
  byte 110
  byte 100
  byte 0
S176:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S177:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S178:
  byte 70
  byte 105
  byte 108
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 111
  byte 101
  byte 110
  byte 0
S179:
  byte 105
  byte 110
  byte 112
  byte 117
  byte 116
  byte 35
  byte 58
  byte 32
  byte 99
  byte 104
  byte 97
  byte 114
  byte 61
  byte 0
S180:
  byte 63
  byte 32
  byte 0
S181:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 112
  byte 114
  byte 105
  byte 110
  byte 116
  byte 58
  byte 0
S182:
  byte 112
  byte 114
  byte 105
  byte 110
  byte 116
  byte 35
  byte 58
  byte 0
S183:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S184:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 82
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S185:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S186:
  byte 70
  byte 105
  byte 108
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 0
S187:
  byte 44
  byte 0
S188:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S189:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S190:
  byte 112
  byte 114
  byte 105
  byte 110
  byte 116
  byte 58
  byte 0
S191:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S192:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S193:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 99
  byte 111
  byte 110
  byte 116
  byte 58
  byte 0
S194:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 114
  byte 117
  byte 110
  byte 58
  byte 0
S195:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 108
  byte 101
  byte 116
  byte 58
  byte 0
S196:
  byte 118
  byte 97
  byte 114
  byte 32
  byte 110
  byte 97
  byte 109
  byte 101
  byte 61
  byte 0
S197:
  byte 61
  byte 0
S198:
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 32
  byte 116
  byte 121
  byte 112
  byte 101
  byte 61
  byte 0
S199:
  byte 118
  byte 97
  byte 108
  byte 117
  byte 101
  byte 32
  byte 116
  byte 121
  byte 112
  byte 101
  byte 61
  byte 0
S200:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S201:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 108
  byte 101
  byte 116
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S202:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 115
  byte 97
  byte 118
  byte 101
  byte 58
  byte 0
S203:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S204:
  byte 99
  byte 97
  byte 110
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 115
  byte 97
  byte 118
  byte 101
  byte 0
S205:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 108
  byte 105
  byte 115
  byte 116
  byte 58
  byte 0
S206:
  byte 32
  byte 0
S207:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 108
  byte 111
  byte 97
  byte 100
  byte 58
  byte 0
S208:
  byte 83
  byte 121
  byte 110
  byte 116
  byte 97
  byte 120
  byte 32
  byte 69
  byte 114
  byte 114
  byte 111
  byte 114
  byte 0
S209:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 113
  byte 117
  byte 105
  byte 116
  byte 58
  byte 0
S210:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S211:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 110
  byte 101
  byte 119
  byte 58
  byte 0
S212:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 99
  byte 108
  byte 115
  byte 58
  byte 0
S213:
  byte 99
  byte 109
  byte 100
  byte 32
  byte 101
  byte 100
  byte 105
  byte 116
  byte 58
  byte 0
S214:
  byte 40
  byte 0
S215:
  byte 44
  byte 0
S216:
  byte 41
  byte 0
S217:
  byte 44
  byte 0
S218:
  byte 41
  byte 0
S219:
  byte 45
  byte 0
S220:
  byte 40
  byte 0
S221:
  byte 44
  byte 0
S222:
  byte 41
  byte 0
S223:
  byte 44
  byte 0
S224:
  byte 41
  byte 0
S225:
  byte 45
  byte 0
S226:
  byte 40
  byte 0
S227:
  byte 44
  byte 0
S228:
  byte 41
  byte 0
S229:
  byte 44
  byte 0
S230:
  byte 41
  byte 0
S231:
  byte 45
  byte 0
S232:
  byte 40
  byte 0
S233:
  byte 44
  byte 0
S234:
  byte 41
  byte 0
S235:
  byte 44
  byte 0
S236:
  byte 41
  byte 0
S237:
  byte 45
  byte 0
S238:
  byte 40
  byte 0
S239:
  byte 44
  byte 0
S240:
  byte 41
  byte 0
S241:
  byte 44
  byte 0
S242:
  byte 41
  byte 0
S243:
  byte 45
  byte 0
S244:
  byte 40
  byte 0
S245:
  byte 44
  byte 0
S246:
  byte 41
  byte 0
S247:
  byte 40
  byte 0
S248:
  byte 44
  byte 0
S249:
  byte 41
  byte 0
S250:
  byte 44
  byte 0
S251:
  byte 44
  byte 0
S252:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 108
  byte 101
  byte 110
  byte 58
  byte 0
S253:
  byte 40
  byte 0
S254:
  byte 41
  byte 0
S255:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 118
  byte 97
  byte 108
  byte 58
  byte 0
S256:
  byte 40
  byte 0
S257:
  byte 41
  byte 0
S258:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 116
  byte 114
  byte 115
  byte 58
  byte 0
S259:
  byte 40
  byte 0
S260:
  byte 41
  byte 0
S261:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 108
  byte 101
  byte 102
  byte 116
  byte 115
  byte 58
  byte 0
S262:
  byte 40
  byte 0
S263:
  byte 44
  byte 0
S264:
  byte 41
  byte 0
S265:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 109
  byte 105
  byte 100
  byte 115
  byte 58
  byte 0
S266:
  byte 40
  byte 0
S267:
  byte 44
  byte 0
S268:
  byte 41
  byte 0
S269:
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 61
  byte 0
S270:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 97
  byte 115
  byte 99
  byte 58
  byte 0
S271:
  byte 40
  byte 0
S272:
  byte 41
  byte 0
S273:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 114
  byte 105
  byte 103
  byte 104
  byte 116
  byte 115
  byte 58
  byte 0
S274:
  byte 40
  byte 0
S275:
  byte 44
  byte 0
S276:
  byte 41
  byte 0
S277:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 99
  byte 104
  byte 114
  byte 115
  byte 58
  byte 0
S278:
  byte 40
  byte 0
S279:
  byte 41
  byte 0
S280:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 97
  byte 98
  byte 115
  byte 58
  byte 0
S281:
  byte 40
  byte 0
S282:
  byte 41
  byte 0
S283:
  byte 105
  byte 110
  byte 61
  byte 0
S284:
  byte 111
  byte 117
  byte 116
  byte 61
  byte 0
S285:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 97
  byte 98
  byte 115
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S286:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 105
  byte 110
  byte 112
  byte 117
  byte 116
  byte 115
  byte 58
  byte 0
S287:
  byte 40
  byte 0
S288:
  byte 41
  byte 0
S289:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S290:
  byte 79
  byte 117
  byte 116
  byte 32
  byte 111
  byte 102
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 0
S291:
  byte 70
  byte 105
  byte 108
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 0
S292:
  byte 41
  byte 0
S293:
  byte 40
  byte 0
S294:
  byte 44
  byte 0
S295:
  byte 41
  byte 0
S296:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 105
  byte 110
  byte 107
  byte 101
  byte 121
  byte 58
  byte 0
S297:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 105
  byte 110
  byte 116
  byte 58
  byte 0
S298:
  byte 40
  byte 0
S299:
  byte 41
  byte 0
S300:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 113
  byte 114
  byte 58
  byte 0
S301:
  byte 40
  byte 0
S302:
  byte 41
  byte 0
S303:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 113
  byte 114
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S304:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 105
  byte 110
  byte 58
  byte 0
S305:
  byte 40
  byte 0
S306:
  byte 41
  byte 0
S307:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 105
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S308:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 99
  byte 111
  byte 115
  byte 58
  byte 0
S309:
  byte 40
  byte 0
S310:
  byte 41
  byte 0
S311:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 99
  byte 111
  byte 115
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S312:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 116
  byte 97
  byte 110
  byte 58
  byte 0
S313:
  byte 40
  byte 0
S314:
  byte 41
  byte 0
S315:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 116
  byte 97
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S316:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 97
  byte 116
  byte 110
  byte 58
  byte 0
S317:
  byte 40
  byte 0
S318:
  byte 41
  byte 0
S319:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 97
  byte 116
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S320:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 101
  byte 120
  byte 112
  byte 58
  byte 0
S321:
  byte 40
  byte 0
S322:
  byte 41
  byte 0
S323:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 101
  byte 120
  byte 112
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S324:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 108
  byte 111
  byte 103
  byte 58
  byte 0
S325:
  byte 40
  byte 0
S326:
  byte 41
  byte 0
S327:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 108
  byte 111
  byte 103
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S328:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 105
  byte 110
  byte 115
  byte 116
  byte 114
  byte 58
  byte 0
S329:
  byte 40
  byte 0
S330:
  byte 44
  byte 0
S331:
  byte 41
  byte 0
S332:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 114
  byte 110
  byte 100
  byte 58
  byte 0
S333:
  byte 40
  byte 0
S334:
  byte 41
  byte 0
S335:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 114
  byte 110
  byte 100
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S336:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 116
  byte 105
  byte 109
  byte 101
  byte 115
  byte 58
  byte 0
S337:
  byte 48
  byte 48
  byte 58
  byte 48
  byte 48
  byte 58
  byte 48
  byte 48
  byte 0
S338:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 100
  byte 97
  byte 116
  byte 101
  byte 115
  byte 58
  byte 0
S339:
  byte 48
  byte 48
  byte 47
  byte 48
  byte 48
  byte 47
  byte 48
  byte 48
  byte 0
S340:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 103
  byte 110
  byte 58
  byte 0
S341:
  byte 40
  byte 0
S342:
  byte 41
  byte 0
S343:
  byte 105
  byte 110
  byte 61
  byte 0
S344:
  byte 111
  byte 117
  byte 116
  byte 61
  byte 0
S345:
  byte 102
  byte 117
  byte 110
  byte 99
  byte 32
  byte 115
  byte 103
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S346:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 101
  byte 113
  byte 58
  byte 0
S347:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 110
  byte 101
  byte 113
  byte 58
  byte 0
S348:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 108
  byte 116
  byte 58
  byte 0
S349:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 108
  byte 101
  byte 58
  byte 0
S350:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 103
  byte 116
  byte 58
  byte 0
S351:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 103
  byte 101
  byte 58
  byte 0
S352:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 99
  byte 109
  byte 112
  byte 58
  byte 0
S353:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 110
  byte 100
  byte 58
  byte 0
S354:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 111
  byte 114
  byte 58
  byte 0
S355:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 112
  byte 111
  byte 119
  byte 101
  byte 114
  byte 58
  byte 0
S356:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 109
  byte 111
  byte 100
  byte 58
  byte 0
S357:
  byte 100
  byte 105
  byte 118
  byte 105
  byte 115
  byte 105
  byte 111
  byte 110
  byte 32
  byte 98
  byte 121
  byte 32
  byte 122
  byte 101
  byte 114
  byte 111
  byte 0
S358:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 100
  byte 105
  byte 118
  byte 58
  byte 0
S359:
  byte 100
  byte 105
  byte 118
  byte 105
  byte 115
  byte 105
  byte 111
  byte 110
  byte 32
  byte 98
  byte 121
  byte 32
  byte 122
  byte 101
  byte 114
  byte 111
  byte 0
S360:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 109
  byte 117
  byte 108
  byte 58
  byte 0
S361:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 115
  byte 117
  byte 98
  byte 58
  byte 0
S362:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 100
  byte 100
  byte 58
  byte 0
S363:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 99
  byte 111
  byte 110
  byte 99
  byte 97
  byte 116
  byte 58
  byte 0
S364:
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 32
  byte 105
  byte 115
  byte 32
  byte 116
  byte 111
  byte 111
  byte 32
  byte 108
  byte 111
  byte 110
  byte 103
  byte 0
S365:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 58
  byte 0
S366:
  byte 41
  byte 0
S367:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S368:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 32
  byte 112
  byte 101
  byte 114
  byte 109
  byte 97
  byte 110
  byte 101
  byte 110
  byte 116
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S369:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 110
  byte 117
  byte 109
  byte 101
  byte 114
  byte 105
  byte 99
  byte 32
  byte 112
  byte 101
  byte 114
  byte 109
  byte 97
  byte 110
  byte 101
  byte 110
  byte 116
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S370:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 110
  byte 117
  byte 109
  byte 98
  byte 101
  byte 114
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S371:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S372:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S373:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S374:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 32
  byte 102
  byte 117
  byte 110
  byte 99
  byte 116
  byte 105
  byte 111
  byte 110
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S375:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 110
  byte 117
  byte 109
  byte 101
  byte 114
  byte 105
  byte 99
  byte 32
  byte 102
  byte 117
  byte 110
  byte 99
  byte 116
  byte 105
  byte 111
  byte 110
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S376:
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 58
  byte 0
S377:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S378:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S379:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 110
  byte 117
  byte 109
  byte 101
  byte 114
  byte 105
  byte 99
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S380:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 116
  byte 111
  byte 109
  byte 40
  byte 111
  byte 116
  byte 104
  byte 101
  byte 114
  byte 41
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S381:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 102
  byte 97
  byte 99
  byte 116
  byte 111
  byte 114
  byte 58
  byte 0
S382:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 102
  byte 97
  byte 99
  byte 116
  byte 111
  byte 114
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S383:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 116
  byte 101
  byte 114
  byte 109
  byte 58
  byte 0
S384:
  byte 109
  byte 111
  byte 100
  byte 0
S385:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 116
  byte 101
  byte 114
  byte 109
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S386:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 101
  byte 120
  byte 112
  byte 114
  byte 101
  byte 115
  byte 115
  byte 105
  byte 111
  byte 110
  byte 58
  byte 0
S387:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 101
  byte 120
  byte 112
  byte 114
  byte 101
  byte 115
  byte 115
  byte 105
  byte 111
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 40
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 41
  byte 58
  byte 0
S388:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 101
  byte 120
  byte 112
  byte 114
  byte 101
  byte 115
  byte 115
  byte 105
  byte 111
  byte 110
  byte 50
  byte 58
  byte 0
S389:
  byte 84
  byte 111
  byte 107
  byte 101
  byte 110
  byte 84
  byte 101
  byte 120
  byte 116
  byte 61
  byte 0
S390:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 97
  byte 101
  byte 120
  byte 112
  byte 114
  byte 101
  byte 115
  byte 115
  byte 105
  byte 111
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 40
  byte 110
  byte 117
  byte 109
  byte 98
  byte 101
  byte 114
  byte 41
  byte 58
  byte 0
S391:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 114
  byte 101
  byte 108
  byte 97
  byte 116
  byte 105
  byte 111
  byte 110
  byte 58
  byte 0
S392:
  byte 62
  byte 61
  byte 0
S393:
  byte 62
  byte 0
S394:
  byte 60
  byte 61
  byte 0
S395:
  byte 60
  byte 0
S396:
  byte 60
  byte 62
  byte 0
S397:
  byte 61
  byte 0
S398:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 114
  byte 101
  byte 108
  byte 97
  byte 116
  byte 105
  byte 111
  byte 110
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S399:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 108
  byte 116
  byte 101
  byte 114
  byte 109
  byte 58
  byte 0
S400:
  byte 97
  byte 110
  byte 100
  byte 0
S401:
  byte 101
  byte 118
  byte 97
  byte 108
  byte 32
  byte 101
  byte 120
  byte 112
  byte 114
  byte 101
  byte 115
  byte 115
  byte 105
  byte 111
  byte 110
  byte 58
  byte 0
S402:
  byte 111
  byte 114
  byte 0
S403:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 58
  byte 0
S404:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S405:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 58
  byte 0
S406:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 110
  byte 117
  byte 109
  byte 98
  byte 101
  byte 114
  byte 58
  byte 0
S407:
  byte 84
  byte 121
  byte 112
  byte 101
  byte 32
  byte 77
  byte 105
  byte 115
  byte 109
  byte 97
  byte 116
  byte 99
  byte 104
  byte 0
S408:
  byte 118
  byte 97
  byte 108
  byte 117
  byte 101
  byte 61
  byte 0
S409:
  byte 112
  byte 117
  byte 116
  byte 32
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 58
  byte 0
S410:
  byte 112
  byte 117
  byte 116
  byte 32
  byte 110
  byte 117
  byte 109
  byte 98
  byte 101
  byte 114
  byte 58
  byte 0
S411:
  byte 105
  byte 108
  byte 101
  byte 97
  byte 103
  byte 97
  byte 108
  byte 32
  byte 101
  byte 120
  byte 112
  byte 114
  byte 101
  byte 115
  byte 115
  byte 105
  byte 111
  byte 110
  byte 0
S412:
  byte 99
  byte 108
  byte 101
  byte 97
  byte 114
  byte 32
  byte 118
  byte 97
  byte 108
  byte 117
  byte 101
  byte 58
  byte 0
S413:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 32
  byte 118
  byte 97
  byte 108
  byte 117
  byte 101
  byte 58
  byte 0
S414:
  byte 118
  byte 97
  byte 114
  byte 32
  byte 110
  byte 97
  byte 109
  byte 101
  byte 61
  byte 0
S415:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 32
  byte 118
  byte 97
  byte 108
  byte 117
  byte 101
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S416:
  byte 40
  byte 0
S417:
  byte 97
  byte 114
  byte 114
  byte 97
  byte 121
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 0
S418:
  byte 97
  byte 114
  byte 114
  byte 97
  byte 121
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 0
S419:
  byte 44
  byte 0
S420:
  byte 97
  byte 114
  byte 114
  byte 97
  byte 121
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 0
S421:
  byte 97
  byte 114
  byte 114
  byte 97
  byte 121
  byte 32
  byte 114
  byte 97
  byte 110
  byte 103
  byte 101
  byte 32
  byte 105
  byte 115
  byte 32
  byte 111
  byte 118
  byte 101
  byte 114
  byte 0
S422:
  byte 41
  byte 0
S423:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 32
  byte 118
  byte 97
  byte 108
  byte 117
  byte 101
  byte 32
  byte 101
  byte 110
  byte 100
  byte 58
  byte 0
S424:
  byte 103
  byte 101
  byte 116
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 58
  byte 0
S425:
  byte 118
  byte 97
  byte 114
  byte 32
  byte 110
  byte 97
  byte 109
  byte 101
  byte 61
  byte 0
S426:
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 61
  byte 110
  byte 117
  byte 108
  byte 108
  byte 0
S427:
  byte 95
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 58
  byte 0
S428:
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 102
  byte 111
  byte 117
  byte 110
  byte 100
  byte 0
S429:
  byte 110
  byte 101
  byte 119
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 58
  byte 0
S430:
  byte 118
  byte 97
  byte 114
  byte 32
  byte 110
  byte 97
  byte 109
  byte 101
  byte 61
  byte 0
S431:
  byte 116
  byte 121
  byte 112
  byte 101
  byte 32
  byte 115
  byte 116
  byte 114
  byte 105
  byte 110
  byte 103
  byte 58
  byte 0
S432:
  byte 0
S433:
  byte 116
  byte 121
  byte 112
  byte 101
  byte 32
  byte 110
  byte 117
  byte 109
  byte 98
  byte 101
  byte 114
  byte 58
  byte 0
S434:
  byte 114
  byte 101
  byte 103
  byte 105
  byte 115
  byte 116
  byte 101
  byte 114
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 32
  byte 108
  byte 105
  byte 115
  byte 116
  byte 58
  byte 0
S435:
  byte 99
  byte 108
  byte 97
  byte 101
  byte 114
  byte 32
  byte 118
  byte 97
  byte 114
  byte 105
  byte 97
  byte 98
  byte 108
  byte 101
  byte 58
  byte 0
S436:
  byte 110
  byte 111
  byte 116
  byte 105
  byte 116
  byte 108
  byte 101
  byte 46
  byte 116
  byte 120
  byte 116
  byte 0
S437:
  byte 83
  byte 84
  byte 82
  byte 73
  byte 78
  byte 71
  byte 49
  byte 63
  byte 32
  byte 0
S438:
  byte 83
  byte 84
  byte 82
  byte 73
  byte 78
  byte 71
  byte 32
  byte 78
  byte 79
  byte 84
  byte 32
  byte 70
  byte 79
  byte 85
  byte 78
  byte 68
  byte 0
S439:
  byte 83
  byte 84
  byte 82
  byte 73
  byte 78
  byte 71
  byte 50
  byte 63
  byte 32
  byte 0
S440:
  byte 83
  byte 84
  byte 82
  byte 73
  byte 78
  byte 71
  byte 63
  byte 32
  byte 0
S441:
  byte 70
  byte 73
  byte 76
  byte 69
  byte 32
  byte 78
  byte 65
  byte 77
  byte 69
  byte 63
  byte 32
  byte 0
S442:
  byte 99
  byte 97
  byte 110
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 32
  byte 0
S443:
  byte 70
  byte 73
  byte 76
  byte 69
  byte 32
  byte 78
  byte 65
  byte 77
  byte 69
  byte 63
  byte 32
  byte 0
S444:
  byte 32
  byte 0
S445:
  byte 99
  byte 97
  byte 110
  byte 32
  byte 110
  byte 111
  byte 116
  byte 32
  byte 111
  byte 112
  byte 101
  byte 110
  byte 32
  byte 0
S446:
  byte 62
  byte 32
  byte 0
S447:
  byte 46
  byte 0
S448:
  byte 32
  byte 0
S449:
  byte 40
  byte 114
  byte 41
  byte 32
  byte 114
  byte 101
  byte 97
  byte 100
  byte 32
  byte 40
  byte 119
  byte 41
  byte 32
  byte 119
  byte 114
  byte 105
  byte 116
  byte 101
  byte 32
  byte 40
  byte 113
  byte 41
  byte 32
  byte 113
  byte 117
  byte 105
  byte 116
  byte 0
S450:
  byte 40
  byte 97
  byte 41
  byte 32
  byte 97
  byte 112
  byte 112
  byte 101
  byte 110
  byte 100
  byte 32
  byte 40
  byte 105
  byte 41
  byte 32
  byte 105
  byte 110
  byte 115
  byte 101
  byte 114
  byte 116
  byte 32
  byte 40
  byte 46
  byte 41
  byte 32
  byte 116
  byte 97
  byte 105
  byte 108
  byte 0
S451:
  byte 40
  byte 106
  byte 41
  byte 32
  byte 106
  byte 117
  byte 109
  byte 112
  byte 32
  byte 40
  byte 66
  byte 83
  byte 41
  byte 32
  byte 117
  byte 112
  byte 32
  byte 40
  byte 69
  byte 110
  byte 116
  byte 101
  byte 114
  byte 41
  byte 32
  byte 100
  byte 111
  byte 119
  byte 110
  byte 0
S452:
  byte 40
  byte 100
  byte 41
  byte 32
  byte 100
  byte 101
  byte 108
  byte 101
  byte 116
  byte 101
  byte 32
  byte 40
  byte 109
  byte 41
  byte 32
  byte 109
  byte 111
  byte 100
  byte 101
  byte 102
  byte 121
  byte 32
  byte 40
  byte 63
  byte 41
  byte 32
  byte 108
  byte 105
  byte 110
  byte 101
  byte 32
  byte 110
  byte 111
  byte 0
S453:
  byte 32
  byte 0
S454:
  byte 79
  byte 114
  byte 101
  byte 111
  byte 114
  byte 101
  byte 32
  byte 66
  byte 97
  byte 115
  byte 105
  byte 99
  byte 32
  byte 118
  byte 101
  byte 114
  byte 32
  byte 48
  byte 46
  byte 48
  byte 46
  byte 50
  byte 0
S455:
  byte 82
  byte 69
  byte 65
  byte 68
  byte 89
  byte 0
S456:
  byte 63
  byte 32
  byte 0
S457:
  byte 100
  byte 105
  byte 114
  byte 101
  byte 99
  byte 116
  byte 32
  byte 99
  byte 111
  byte 109
  byte 109
  byte 97
  byte 110
  byte 100
  byte 32
  byte 111
  byte 110
  byte 108
  byte 121
  byte 0
S458:
  byte 60
  byte 60
  byte 60
  byte 66
  byte 89
  byte 69
  byte 62
  byte 62
  byte 62
  byte 0
S459:
  byte 114
  byte 117
  byte 110
  byte 0
  align 8
 align 8
read_p: memory 8
 align 8
_time_limit: memory 8
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
ForStack: memory 8
ForStackP: memory 8
 align 8
GosubStack: memory 8
GosubStackP: memory 8
 align 8
no: memory 8
 align 8
mesg: memory 8
 align 8
buf: memory MAX_TEXT_LENGTH+1
 align 8
rfp: memory FILE_SIZE
 align 8
flg: memory 8
fname: memory 8
 align 8
token: memory 8
 align 8
cc1: memory 8
 align 8
JmpEntry: memory 8
 align 8
StackSave: memory 8
 align 8
TopProg: memory 8
 align 8
EndProg: memory 8
 align 8
CurrentProg: memory 8
 align 8
BreakProg: memory 8
 align 8
TextBuffer: memory MAX_TEXT_LENGTH+1
 align 8
TokenText: memory MAX_TEXT_LENGTH+1
 align 8
VarName: memory MAX_TEXT_LENGTH+1
 align 8
TokenP: memory 8
 align 8
BreakToken: memory 8
 align 8
TokenType: memory 8
TokenCode: memory 8
 align 8
TokenValue: memory 8
 align 8
CalcStack: memory Value.SIZE*STACK_SIZE
 align 8
CalcStackP: memory 8
 align 8
SysError: memory 8
 align 8
TopVar: memory 8
 align 8
EndVar: memory 8
 align 8
ErrorMessage: memory 8
 align 8
BreakFlg: memory 8
 align 8
RunFlg: memory 8
 align 8
CurrentLineNo: memory 8
 align 8
BasicBusy: memory 8
 align 8
Xfp: memory FILE_SIZE*MAX_FILES
 align 8
ii: memory 32
jj: memory 32
kk: memory 32
ll: memory 32
 align 8
mm: memory 32
nn: memory 32
 align 8
aa: memory 8
bb: memory 8
cc: memory 8
lbl: memory 8
str: memory 8
 align 8
pp: memory 8
qq: memory 8
rr: memory 8
ss: memory 8
tt: memory 8
uu: memory 8
vv: memory 8
ww: memory 8
 align 8
xx: memory 8
yy: memory 8
zz: memory 8
 align 8
xcolor: memory 8
xwidth: memory 8
xheight: memory 8
bitmap: memory 8
 align 8
ix: memory 32
iy: memory 32
 align 8
px: memory 8
py: memory 8
gx: memory 8
gy: memory 8
gx1: memory 8
gy1: memory 8
 align 8
tx: memory 8
ty: memory 8
rx: memory 8
ry: memory 8
ox: memory 8
oy: memory 8
vx: memory 8
vy: memory 8
 align 8
vx1: memory 8
vy1: memory 8
qx: memory 8
qy: memory 8
co: memory 8
 align 8
ox1: memory 8
oy1: memory 8
 align 8
q_buf: memory Q_SIZE*8
 align 8
put_p: memory 8
get_p: memory 8
 align 8
dsx: memory 8
dsy: memory 8
dsw: memory 8
dss: memory 8
dsr: memory 8
 align 8
real_a: memory 8
real_d: memory 8
real_p: memory 8
 align 8
exp_val: memory 8
exp_max: memory 8
exp_min: memory 8
exp_pres: memory 8
exp_count: memory 8
 align 8
real_buf: memory 32
chr_buf: memory 8
 align 8
xval_p: memory 8
xval_sign: memory 8
xval_x: memory 8
xval_exp: memory 8
xval_exp_sign: memory 8
xval_d: memory 8
xval_order: memory 8
 align 8
xval_state: memory 8
 align 8
pp7: memory 8
 align 8
fp_adr: memory 8
io_flg: memory 8
fname0: memory 8
 align 8
dim: memory MAX_DIMENSION*8
 align 8
vname: memory 256
 align 8
vtype: memory 8
dx: memory 8
var: memory 8
 align 8
pp1: memory 8
 align 8
for_var: memory 8
 align 8
input_var: memory 8
 align 8
is_question: memory 8
 align 8
last_char: memory 8
 align 8
vtyp: memory 8
lvar: memory 8
 align 8
wfp: memory FILE_SIZE
 align 8
list_st: memory 8
list_ed: memory 8
 align 8
draw_x1: memory 8
draw_y1: memory 8
draw_x2: memory 8
draw_y2: memory 8
 align 8
ss0: memory 8
 align 8
ccc: memory 2
 align 8
vabs: memory 8
 align 8
inkey_str: memory 8
 align 8
ss1: memory 8
 align 8
vsgn: memory 8
 align 8
sign: memory 8
typ: memory 8
val: memory 8
 align 8
s0: memory 8
s1: memory 8
s2: memory 8
d1: memory 8
d2: memory 8
 align 8
sss: memory MAX_STR_LENGTH+1
 align 8
vgetn: memory 8
 align 8
num: memory 8
 align 8
vii: memory 8
force_error: memory 8
xvname: memory 8
index: memory 8
dims: memory 8
xdim: memory 8
xvar: memory 8
xtype: memory 8
 align 8
var_name: memory 8
 align 8
xbuf: memory 8
li: memory 8
li0: memory 8
el: memory 8
 align 8
etext: memory 8
etext0: memory 8
tail: memory 8
copy_p: memory 8
 align 8
temp1: memory 8
temp2: memory 8
temp3: memory 8
temp4: memory 8
 align 8
t1: memory 8
t2: memory 8
t3: memory 8
t4: memory 8
y0: memory 8
 align 8
xxtext: memory 8
xxli: memory 8
 align 8
xk: memory 8
k2: memory 8
 align 8
eflg: memory 1
 align 8
efp: memory FILE_SIZE
efname: memory 16
sxbuf: memory 256
 align 8
disp_xbuf: memory 2048*2
 align 8
tx0: memory 8
ds: memory 8
 align 8
sin_x: memory 8
sin_x2: memory 8
 align 8
tan_a: memory 8
tan_x: memory 8
tan_y: memory 8
 align 8
arctan_a: memory 8
arctan_s: memory 8
 align 8
txx: memory 8
txx2: memory 8
tkk: memory 8
tsign: memory 8
tret: memory 8
 align 8
exp_a: memory 8
exp_s: memory 8
exp_n: memory 8
exp_r: memory 8
 align 8
log_a: memory 8
log_d: memory 8
log_r: memory 8
log_s: memory 8
 align 8
random_a: memory 8
random_v: memory 8
 align 8
power_a1: memory 8
power_a2: memory 8
 align 8
text: memory MAX_TEXT_LENGTH+1
 align 8
status: memory 8
 align 8
prog: memory Program.SIZE
