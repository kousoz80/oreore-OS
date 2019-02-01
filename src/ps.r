//  ディレクトリ表示
main:
  long p#
  
   tcb0, p#=
   loop:
    if (p)#(STATUS)=0    then "STOP ", prints
    if (p)#(STATUS)<>0 then "RUN  ", prints
     p#, hex prints " : ", prints 
     p#, CMD_LINE, + prints "  ....  ", prints 
     (p)#(MESSAGE/8), hex prints "<--", prints
     (p)#(CLIENT/8), hex prints
     "    ", prints (p)#(PREV_TCB/8), hex prints
     "    ", prints (p)#(NEXT_TCB/8), hex prints
     nl
     (p)#(NEXT_TCB/8), p#=
   if p#<>tcb0 goto loop 
  end
