//  ディレクトリ表示
main:
  long p#,mode#
  
   argv#(1), "-wait", strcmp mode#=
   tcb0, p#=
   loop:
    if (p)#(STATUS)=RUN    then "RUN     ", prints
    if (p)#(STATUS)=READY then "READY   ", prints
    if (p)#(STATUS)=WAIT    then "WAIT    ", prints
     p#, hex prints " : ", prints 
     p#, CMD_LINE, + prints "  ....  ", prints 
     (p)#(MESSAGE/8), hex prints "<--", prints
     (p)#(CLIENT/8), hex prints
     "    ", prints (p)#(PREV_TCB/8), hex prints
     "    ", prints (p)#(NEXT_TCB/8), hex prints
     nl
     (p)#(NEXT_TCB/8), p#=
   if p#<>tcb0 goto loop 
   if mode#<>0 then end
   loop1:
   inkey p#=
   if p#=0 goto loop1
  end
