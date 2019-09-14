__sys_table: = 0x00000000004023d8
__boot_service: = 0x0000000000402458
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
_start: = 0x0000000000404000
dprint: = 0x000000000040444f
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
math_sin: = 0x000000000040e745
math_cos: = 0x000000000040eca7
math_tan: = 0x000000000040eda6
math_arctan: = 0x000000000040f066
math_exp: = 0x000000000040fb39
math_log: = 0x00000000004103a6
math_random: = 0x0000000000410ac8
math_power: = 0x0000000000410b55
xdraw_point: = 0x0000000000410d0b
xget_point: = 0x0000000000410f34
xdraw_line: = 0x00000000004110aa
xgcls: = 0x0000000000411ca5
xfill_rect: = 0x0000000000411f20
xdraw_rect: = 0x000000000041251f
xfill_circle: = 0x0000000000412d1f
xdraw_circle: = 0x0000000000412e97
xpaint: = 0x0000000000413a47
xdraw_image: = 0x00000000004148c0
load_image: = 0x0000000000415349
save_image: = 0x0000000000415a5a
xval: = 0x00000000004173b8
xstr: = 0x0000000000418fee
printr: = 0x000000000041aa31
fprintr: = 0x000000000041ab1d
__critical: = 0x000000000041beb8
__stack_p: = 0x000000000041bec0
__int_enable: = 0x000000000041bec8
__int_busy: = 0x000000000041bed0
__sys_nest: = 0x000000000041bed8
time: = 0x000000000041bee8
SYS_CALL: = 0x000000000041bef0
SYS_EXT: = 0x000000000041bef8
tasks: = 0x000000000041bf00
present_task: = 0x000000000041bf08
__stack_top: = 0x000000000041bf10
tcb0: = 0x000000000041bf18
cmd_buf: = 0x000000000041c0a8
argc: = 0x000000000041c3a8
argv: = 0x000000000041c3b0
graphic_protocol: = 0x000000000041c620
pointer_protocol: = 0x000000000041c628
graphic_mode: = 0x000000000041c630
graphic_info: = 0x000000000041c638
graphic_base: = 0x000000000041c640
set_mode: = 0x000000000041c648
screen_width: = 0x000000000041c650
screen_height: = 0x000000000041c658
mouse_reset: = 0x000000000041c660
mouse_get_state: = 0x000000000041c668
xcolor: = 0x000000000041c808
xwidth: = 0x000000000041c810
xheight: = 0x000000000041c818
bitmap: = 0x000000000041c820
_end: = 0x00000000004249c0
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
 jz L396
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
L396:
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
 jz L400
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
L400:
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
 jnz L402
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
L402:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
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
 jnz L406
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
L406:
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
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
create_component: = 0x00000000004285da
remove_component: = 0x0000000000428f39
repaint: = 0x000000000042aeec
NULL_BORDER: = 0x0000000000000000
LINE_BORDER: = 0x0000000000000001
RAISED_BORDER: = 0x0000000000000002
LOWERD_BORDER: = 0x0000000000000003
is_visible: = 0x000000000042d3dc
set_visible: = 0x000000000042dc0f
is_on_rectangle: = 0x000000000042de00
is_on_component: = 0x000000000042e254
pop_up_component: = 0x000000000042f366
set_bounds: = 0x000000000042f88e
request_focus: = 0x000000000042fcc0
no_operation: = 0x000000000042ff5a
Label.subclass: = 0x0000000000000000
Label.text: = 0x0000000000000008
Label.paint: = 0x0000000000000010
Label.component: = 0x0000000000000020
Label.SIZE: = 0x00000000000000d8
create_label: = 0x000000000042fff8
set_label_text: = 0x0000000000430b1b
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
create_button: = 0x0000000000430cd0
set_button_lclicked: = 0x0000000000431f42
set_button_lclicked2: = 0x0000000000432022
set_button_rclicked: = 0x0000000000432102
set_button_text: = 0x00000000004321e2
set_button_image: = 0x000000000043235a
CheckBox.subclass: = 0x0000000000000000
CheckBox.is_selected: = 0x0000000000000008
CheckBox.changed: = 0x0000000000000010
CheckBox.paint: = 0x0000000000000018
CheckBox.component: = 0x0000000000000028
CheckBox.SIZE: = 0x00000000000000e0
create_checkbox: = 0x0000000000432510
set_checkbox_changed: = 0x000000000043349d
RadioButton.subclass: = 0x0000000000000000
RadioButton.is_selected: = 0x0000000000000008
RadioButton.changed: = 0x0000000000000010
RadioButton.paint: = 0x0000000000000018
RadioButton.component: = 0x0000000000000028
RadioButton.SIZE: = 0x00000000000000e0
create_radiobutton: = 0x00000000004335b8
set_radiobutton_changed: = 0x00000000004348f1
HScrollBar.subclass: = 0x0000000000000000
HScrollBar.value: = 0x0000000000000008
HScrollBar.min: = 0x0000000000000010
HScrollBar.max: = 0x0000000000000018
HScrollBar.handle_size: = 0x0000000000000020
HScrollBar.changed: = 0x0000000000000028
HScrollBar.paint: = 0x0000000000000030
HScrollBar.component: = 0x0000000000000040
HScrollBar.SIZE: = 0x00000000000000f8
create_hscrollbar: = 0x0000000000434a10
set_hscrollbar_changed: = 0x0000000000435f1a
VScrollBar.subclass: = 0x0000000000000000
VScrollBar.value: = 0x0000000000000008
VScrollBar.min: = 0x0000000000000010
VScrollBar.max: = 0x0000000000000018
VScrollBar.handle_size: = 0x0000000000000020
VScrollBar.changed: = 0x0000000000000028
VScrollBar.paint: = 0x0000000000000030
VScrollBar.component: = 0x0000000000000040
VScrollBar.SIZE: = 0x00000000000000f8
create_vscrollbar: = 0x0000000000436038
set_vscrollbar_changed: = 0x0000000000437522
TextField.subclass: = 0x0000000000000000
TextField.text: = 0x0000000000000008
TextField.display_pos: = 0x0000000000000010
TextField.edit_pos: = 0x0000000000000018
TextField.input: = 0x0000000000000020
TextField.paint: = 0x0000000000000028
TextField.component: = 0x0000000000000038
TextField.SIZE: = 0x00000000000000f0
create_textfield: = 0x0000000000437640
set_textfield_text: = 0x000000000043a3f2
set_color: = 0x000000000043d07b
get_color: = 0x000000000043d0e8
_disp: = 0x000000000043d16a
gcls: = 0x000000000043d3d3
draw_point: = 0x000000000043d5c1
get_point: = 0x000000000043d7ea
draw_line: = 0x000000000043d960
fill_rect: = 0x000000000043e55b
draw_rect: = 0x000000000043eb5a
fill_circle: = 0x000000000043f35a
draw_circle: = 0x000000000043f4d2
fill_triangle: = 0x0000000000440082
draw_triangle: = 0x000000000044034a
paint: = 0x00000000004407c2
put_pset: = 0x0000000000440fe0
draw_image: = 0x000000000044163b
copy_image: = 0x0000000000441d70
paste_image: = 0x000000000044252a
draw_string: = 0x0000000000442617
draw_font: = 0x0000000000442a5a
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
paint_desktop: = 0x0000000000444407
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
create_window: = 0x000000000044ad88
set_window_title: = 0x000000000044ec72
set_window_icon: = 0x000000000044ed52
set_window_resizable: = 0x000000000044ee32
show_desktop_menu: = 0x000000000044f832
show_icon_menu: = 0x0000000000451143
create_property_sheet: = 0x0000000000452271
show_property_sheet: = 0x00000000004537c5
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
create_textarea: = 0x0000000000454b10
set_textarea_text: = 0x000000000045aa54
Filer.SIZE: = 0x00000000000001f8
create_filer: = 0x000000000045b03f
update_filer: = 0x000000000045d603
set_filer_open_action: = 0x000000000045df4b
get_file_command: = 0x000000000046563d
get_file_icon: = 0x000000000046599d
get_file_type: = 0x0000000000465b38
get_file_extention: = 0x0000000000466091
show_open_dialog: = 0x0000000000467a26
show_save_dialog: = 0x0000000000467a4a
show_xfiler: = 0x0000000000468a92
mouse_x: = 0x000000000046b160
mouse_y: = 0x000000000046b168
copy_area: = 0x000000000046b1b0
font_area: = 0x000000000046b1b8
gui_is_running: = 0x000000000046b1c8
key_code: = 0x000000000046b1d8
key_mask: = 0x000000000046b1e0
desktop: = 0x0000000000473f20
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
 jmp show_xfiler
 r14=1
 rax=__critical
 (rax)=r14
 rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
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
