//  ディレクトリ表示
main:
  long p#,q#,mode#
  
   1, mode#=
   if argc#>1 then argv#(1), "-wait", strcmp mode#=
   tcb0, p#=
   loop:
    p#, ->TCB.status# q#=
    if q#=RUN    then "RUN     ", prints
    if q#=READY then "READY   ", prints
    if q#=WAIT    then "WAIT    ", prints
     p#, hex prints " : ", prints 
     p#, ->TCB.cmd_line# prints nl 
     p#, ->TCB.next# p#=
   if p#<>tcb0 goto loop 
   if mode#<>0 then end
   loop1:
   inkey p#=
   if p#=0 goto loop1
  end
