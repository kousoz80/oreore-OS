 long netdrv_sp#,netdrv_stack#
 char netdrv_task$(TCB.SIZE)
  long locate_handle#,snp_protocol#
  long _snp_start#,_snp_stop#,_snp_initialise#,_snp_reset#
  long _snp_transmit#,_snp_receive#,_snp_shutdown#


  struct SNP
  long Revision#
  long Start#
  long Stop#
  long Initialise#
  long Reset#
  long Shutdown#
  long ReceiveFilters#
  long StationAddress#
  long Statistics#
  long MCastIpToMac#
  long NvData#
  long GetStatus#
  long Transmit#
  long Receive#
  long WaitForPacket#
  long Mode#
  end

  .data
snp_protocol_guid:
  data 0x11d3ac25a19832b9
  data 0x4dc13f2790002d9a

snp_transmit:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=0/
/ r8=rdi/
/ r9=rsi/
/ rdi=0/
/ 0x20(rsp)=rdi/
/ 0x28(rsp)=rdi/
/ 0x30(rsp)=rdi/
/ rax=_snp_transmit/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end


snp_receive:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=0/
/ r8=rdi/
/ r9=rsi/
/ rdi=0/
/ 0x20(rsp)=rdi/
/ 0x28(rsp)=rdi/
/ 0x30(rsp)=rdi/
/ rax=_snp_receive/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end



_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _1025140460_in

 end
_1025140460_in:


  int kk#  
  char buf$(64),buffer1$(1024)
  count ii#
   
   for ii#=0 to 255
   ii#, buffer1$(ii#)=
   next ii#
   
loop0:
   "length? ", prints buf, inputs
  buf, 10, atoi kk#=
  if kk#<0 then end
  buffer1, kk#, snp_transmit
  goto loop0

 end
_748992501_init:
 _1343130560_in

 end
_658502357_tx:
 _873980148_in

 end
_1992027144_rx:

 end
_1343130560_in:
  // パケット受信タスクを生成する
netdrv_init:



// "netdrv_init:", dprint dnl

  const DRIVER_STACK_SIZE 16384
  snp_protocol_guid, snp_protocol, locate_protocol

  snp_protocol#, ->SNP.Start# _snp_start#=
  snp_protocol#, ->SNP.Stop# _snp_stop#=
  snp_protocol#, ->SNP.Initialise# _snp_initialise#=
  snp_protocol#, ->SNP.Reset# _snp_reset#=
  snp_protocol#, ->SNP.Shutdown# _snp_shutdown#=
  snp_protocol#, ->SNP.Transmit# _snp_transmit#=
  snp_protocol#, ->SNP.Receive# _snp_receive#=

  DRIVER_STACK_SIZE, malloc netdrv_stack#= DRIVER_STACK_SIZE-8, + netdrv_sp#=
  netdrv_task, netdrv_recv, netdrv_sp#, create_task
  "*netdrv", netdrv_task, ->TCB.cmd_line#=
  netdrv_task, run_task

// "netdrv_init end:", dprint dnl
  end

 end
_873980148_in:
// パケットを送信
netdrv_send:


  long pkt_873980148_in#
  
  pkt_873980148_in#=
  if pkt_873980148_in#=NULL then end

  2, dbg_mode#=
    "netdrv_send: ", dprint pkt_873980148_in#, ->netbuf.size# dec dprint dnl
    pkt_873980148_in#, display_pkt
  0, dbg_mode#=
  
   pkt_873980148_in#, ->netbuf.top# pkt_873980148_in#, ->netbuf.size# snp_transmit
   pkt_873980148_in#, free

//    "netdrv_send: end", dprint dnl 

  end

 end
_248349078_in:
// パケット受信ループ
netdrv_recv:



//  "netdrv_recv:", dprint dnl
   long pkt_248349078_in#,tt_248349078_in#

   DEFAULT_NETBUF_SIZE, malloc pkt_248349078_in#=
   0, DEFAULT_NETBUF_SIZE, memset
   pkt_248349078_in#, ->netbuf.data pkt_248349078_in#, ->netbuf.top#=
   1024, pkt_248349078_in#, ->netbuf.size#=
netdrv_recv_loop:
   pkt_248349078_in#, ->netbuf.top#  pkt_248349078_in#, ->netbuf.size snp_receive tt_248349078_in#=
   if tt_248349078_in#=0 goto netdrv_recv_success
   if tt_248349078_in#=0x8000000000000005 goto netdrv_recv_success
   sync 
   goto netdrv_recv_loop


netdrv_recv_success:

//  "netdrv_recved: ", dprint dnl
//  pkt_248349078_in#, display_pkt

   pkt_248349078_in#, ethernet_recved
   sync
   goto netdrv_recv
 _1992027144_rx

 end
