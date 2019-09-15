main:
  char tim$(20)

/ rcx=tim/
/ rdx=time_cap/
/ rax=__runtime_service/
/ rax=0x18(rax)/
/ call (rax)/

  time$(4), printd ":", prints tim$(5), printd nl
  end


 .data
time_cap:
 data 0x100000001
 data 0x0
