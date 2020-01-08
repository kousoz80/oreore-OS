// USB test program
main:
  long locate_handle#,protocol#,handler#,handler_size#
  char buf$(4096)
  
  usb_io_guid, protocol, locate_protocol
  hex prints nl
 
  
  buf, handler#=
  4096, handler_size#=
  (__boot_service)#(22), locate_handle#=
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=2/
/ rdx=usb_io_guid/
/ r8=0/
/ r9=handler_size/
/ rdi=handler/
/ 0x20(rsp)=rdi/
/ rax=locate_handle/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/

  hex prints nl
  end


  .data
usb_io_guid:
  data 0x44cf0cd22b2f68d6
  data 0x755b1b0ba2bb8b8e
 
// 0x2B2F68D6, 0x0CD2, 0x44cf, {0x8E, 0x8B, 0xBB, 0xA2, 0x0B, 0x1B, 0x5B, 0x75