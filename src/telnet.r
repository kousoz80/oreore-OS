// パケット構造体
 const DEFAULT_NETBUF_SIZE 1800
 struct netbuf
   long size#
   long top#
   long next#
   long ethernet_type#
   long ethernet_addr#
   long ip_protocol#
   long ip_cmd#
   long ip_addr#
   long icmp_number#
   long icmp_addr#
   long icmp_callback#
   long tcp_accept_port#
   long tcp_connect_port#
   long tcp_connect_addr#
   long tcp_callback#
   long tcp_establish_number#
   long tcp_close_number#
   long tcp_send_number#
   long udp_regport_src_port#
   long udp_regport_dst_port#
   long udp_regport_addr#
   long udp_callback#
   long udp_relport_port#
   long udp_recv_port#
   long udp_send_src_port#
   long udp_send_dst_port#
   long udp_send_addr#
   long data#
 end

calc_pseudosum:
  usize#= pop uprotocol#= pop udst_addr#= pop usrc_addr#=

//  "calc_pseudosum:", dprint dnl
  
  struct pseudo_header
    int src_ipaddr!
    int dst_ipaddr!
    char zero$
    char protocol$
    short size%
  end
  char phdr$(pseudo_header.SIZE)
  
  usrc_addr#, phdr, ->pseudo_header.src_ipaddr!=
  udst_addr#, phdr, ->pseudo_header.dst_ipaddr!=
  0,  phdr, ->pseudo_header.zero$=
  uprotocol#,  phdr, ->pseudo_header.protocol$=
  usize#,  phdr, ->pseudo_header.size set_int16
  phdr, pseudo_header.SIZE, calc_checksum
  0xffff, swap - tt#=

//  "calc_pseudosum: end", dprint dnl

  tt#, end

// 各種定数
 const NETDRV_DEVICE_NUM 1
 const MACADDR_SIZE 6
 const IPADDR_SIZE 4

 .data
my_ipaddr:     data 0x0b01a8c0
my_macaddr:  data 0xd8d372b58eec

// メモリ操作


// メモリコピー
memcpy:
  long __p1#,__p2#,__p3#,pp#,qq#,cc#
 __p3#= pop __p2#= pop __p1#=
 __memcpy1:
  if __p3#<=0 then end
  (__p1)$, (__p2)$=
  __p1#++
  __p2#++
  __p3#--
 goto __memcpy1
 end


// メモリセット
memset:
 __p3#= pop __p2#= pop __p1#=
 __memset1:
  if __p3#<=0 then end
  __p2#, (__p1)$=
  __p1#++
  __p3#--
 goto __memset1
 end


// ビッグエンディアンの16bit変数に代入
set_int16:
  long sss0#,sss1#
  sss1#= pop sss0#=
  sss0+0$, (sss1)$(1)=
  sss0+1$, (sss1)$(0)=
  end


get_int16:
  sss1#=
  (sss1)$(1), sss0+0$=
  (sss1)$(0), sss0+1$=
  sss0%, end
  

// ビッグエンディアンの32bit変数に代入
set_int32:
  sss1#= pop sss0#=
  sss0+0$, (sss1)$(3)=
  sss0+1$, (sss1)$(2)=
  sss0+2$, (sss1)$(1)=
  sss0+3$, (sss1)$(0)=
  end


get_int32:
  sss1#=
  (sss1)$(3), sss0+0$=
  (sss1)$(2), sss0+1$=
  (sss1)$(1), sss0+2$=
  (sss1)$(0), sss0+3$=
  sss0!, end

nop: end

// デバッグ関係
dbg_mode: data 0
dopen:
  char log$(FILE_SIZE)
  if dbg_mode#=1 then "log.txt", log, wopen
  end

dclose:
  if dbg_mode#=1 then log, wclose
  end

dprint:
  long uuuu#
  uuuu#=
  if dbg_mode#=1 then uuuu#, log, fprints
  if dbg_mode#=2 then uuuu#, prints
  end

dnl:
  if dbg_mode#=1 then log, fnl
  if dbg_mode#=2 then nl
  end
 

// パケットの
// 詳細を表示する
display_pkt:

  long xxpkt#,xxframe#
  long iii#,lll#,sss#,tt1#
  xxpkt#=


  "size=", dprint  xxpkt#, ->netbuf.size# lll#=  dec dprint dnl
  if lll#>64 then 64, lll#=
  xxpkt#, ->netbuf.top# sss#=
   0, iii#=
display_pkt1:
  if iii#>=lll# then  dnl gotodisplay_pkt2
  (sss)$(iii#), hex ss#= strlen tt1#=
  if tt1#<2 then "0", dprint
  ss#, dprint " ", dprint
  iii#++  iii#, 16, mod tt1#=
  if tt1#=0 then dnl
  goto display_pkt1
display_pkt2:

  xxpkt#, ->netbuf.top# xxframe#=
  "dst macaddr=", dprint
  xxframe#, ->ethernet_header.dst_addr# dprint_macaddr dnl
  xxframe#, ->ethernet_header.dst_addr# 1, and ss#=
  if ss#<>0 then " <multicast>", dprint dnl

  "src macaddr=", dprint
  xxframe#, ->ethernet_header.src_addr# dprint_macaddr dnl
  xxframe#, ->ethernet_header.type% tt1#=



display_pkt_arp:
  if tt1#<>ETHERNET_TYPE_ARP goto display_pkt_ip
  "ethernet:type=arp", dprint dnl
  xxframe#, ethernet_header.SIZE, + xxframe#=
  xxframe#, ->arp_header.hardware% tt1#=
  if tt1#=ARP_HARDWARE_ETHER  then "hardware is ethernet",     dprint dnl
  if tt1#<>ARP_HARDWARE_ETHER then "hardware is not ethernet", dprint dnl
  xxframe#, ->arp_header.protocol% tt1#=
  if tt1#=ETHERNET_TYPE_IP  then "protocol is ip",     dprint dnl
  if tt1#<>ETHERNET_TYPE_IP then "protocol is not ip", dprint dnl
  xxframe#, ->arp_header.operation% tt1#=
  if tt1#=ARP_OPERATION_REPLY   then "operation is reply",   dprint dnl gotodisplay_pkt_arp1
  if tt1#=ARP_OPERATION_REQUEST then "operation is request", dprint dnl gotodisplay_pkt_arp1
  "operation is unknown", dprint dnl
display_pkt_arp1:
  end


display_pkt_ip:
  if tt1#<>ETHERNET_TYPE_IP goto display_pkt_unknown
  "ethernet:type=ip", dprint dnl
  xxframe#, ethernet_header.SIZE, + xxframe#=
  xxframe#, ->ip_header.v_hl$ 16, / 0x0f, and tt1#=
  if tt1#<>4 then "but, no ip packet", dprint dnl end

  "dst ipaddr=", dprint
  xxframe#, ->ip_header.dst_addr! dprint_ipaddr dnl

  "src ipaddr=", dprint
  xxframe#, ->ip_header.src_addr! dprint_ipaddr dnl

  "ip protocol=", dprint
  xxframe#, ->ip_header.protocol$ ss#=
  if ss#=IP_PROTOCOL_ICMP then "icmp", dprint dnl gotodisplay_pkt_ip1
  if ss#=IP_PROTOCOL_TCP  then "tcp",  dprint dnl gotodisplay_pkt_ip1
  if ss#=IP_PROTOCOL_UDP  then "udp",  dprint dnl gotodisplay_pkt_ip1
  "unknown", dprint dnl
display_pkt_ip1:
  "tos=", dprint
  xxframe#, ->ip_header.tos$ dec dprint dnl
  "length=", dprint
  xxframe#, ->ip_header.length% dec dprint dnl
  "id=", dprint
  xxframe#, ->ip_header.id% dec dprint dnl
  "fragment=", dprint
  xxframe#, ->ip_header.fragment% dec dprint dnl
  "ttl=", dprint
  xxframe#, ->ip_header.ttl$ dec dprint dnl
  "checksum=", dprint
  xxframe#, ->ip_header.checksum% dec dprint dnl
  "header length=", dprint
  xxframe#, ->ip_header.v_hl$ 0x0f, and 4, * tt1#=
  tt1#, dec dprint dnl
  xxframe#, tt1#, + xxframe#=

display_pkt_icmp:
  if ss#<>IP_PROTOCOL_ICMP goto display_pkt_tcp 
  xxframe#, ->icmp_header.type$ tt1#=
  if tt1#=ICMP_TYPE_REPLY   then "icmp_type_reply",   dprint dnl gotodisplay_pkt_icmp1
  if tt1#=ICMP_TYPE_REQUEST then "icmp_type_request", dprint dnl gotodisplay_pkt_icmp1
   "icmp_type_unknown", dprint dnl
display_pkt_icmp1:
   "icmp_code=", dprint xxframe#, ->icmp_header.code$ hex dprint dnl
   "icmp_checksum=", dprint xxframe#, ->icmp_header.checksum% hex dprint dnl
  end

display_pkt_tcp:
  if ss#<>IP_PROTOCOL_TCP goto display_pkt_udp 
  "dst port=",   dprint xxframe#, ->tcp_header.dst_port%   dec dprint dnl
  "src port=",   dprint xxframe#, ->tcp_header.src_port%   dec dprint dnl
  "seq_number=", dprint xxframe#, ->tcp_header.seq_number! dec dprint dnl
  "ack_number=", dprint xxframe#, ->tcp_header.ack_number! dec dprint dnl
  "offset=",     dprint xxframe#, ->tcp_header.offset$     dec dprint dnl
  "flags=",      dprint xxframe#, ->tcp_header.flags$      bin dprint dnl
  "window=",     dprint xxframe#, ->tcp_header.window%     hex dprint dnl
  "checksum=",   dprint xxframe#, ->tcp_header.checksum%   hex dprint dnl
  "urgent=",     dprint xxframe#, ->tcp_header.urgent%     hex dprint dnl
  end

display_pkt_udp:
  if ss#<>IP_PROTOCOL_UDP then end 
  "src port=", dprint xxframe#, ->udp_header.src_port% dec dprint dnl
  "dst port=", dprint xxframe#, ->udp_header.dst_port% dec dprint dnl
  "length=",   dprint xxframe#, ->udp_header.length%   dec dprint dnl
  "checksum=", dprint xxframe#, ->udp_header.checksum% hex dprint dnl
  end

display_pkt_unknown:
  "ethernet:type=unknown", dprint dnl
   end

dprint_macaddr:
  long  vvvv#,zzzz#
  count iiii#
  vvvv#=
  for iiii#=0 to 5
  vvvv$(iiii#), dprint_hex2
  if iiii#<5 then ":", dprint
  next iiii#
  vvvv#, 0xffffffffffff, and my_macaddr#, - zzzz#=
  if zzzz#=0 then " (me)", dprint
  end
  
dprint_hex2:
  long yyyy#
  yyyy#=
  if yyyy#<16 then "0", dprint
  yyyy#, hex dprint
  end

dprint_ipaddr:
  vvvv#=
  for iiii#=0 to 3
  vvvv$(iiii#), dec dprint
  if iiii#<3 then ".", dprint
  next iiii#
  vvvv#, 0xffffffff, and my_ipaddr#, - zzzz#=
  if zzzz#=0 then " (me)", dprint
  end

dump_netbuf:
   long yypkt#
   yypkt#=
   "size=", dprint yypkt#, ->netbuf.size# dec dprint dnl
   "top=", dprint yypkt#, ->netbuf.top# hex dprint dnl
   "next=", dprint yypkt#, ->netbuf.next# hex dprint dnl
   "ethernet_type=", dprint yypkt#, ->netbuf.ethernet_type# dec dprint dnl
   "ethernet_addr=", dprint yypkt#, ->netbuf.ethernet_addr# dprint_macaddr dnl
   "ip_protocol=", dprint yypkt#, ->netbuf.ip_protocol# dec dprint dnl
   "ip_cmd=", dprint yypkt#, ->netbuf.ip_cmd# dec dprint dnl
   "ip_addr=", dprint yypkt#, ->netbuf.ip_addr# dprint_ipaddr dnl
   "icmp_number=", dprint yypkt#, ->netbuf.icmp_number# dec dprint dnl
   "icmp_addr=", dprint yypkt#, ->netbuf.icmp_addr# dprint_ipaddr dnl
   "icmp_callback=", dprint yypkt#, ->netbuf.icmp_callback# hex dprint dnl
   "tcp_accept_port=", dprint yypkt#, ->netbuf.tcp_accept_port# dec dprint dnl
   "tcp_connect_port=", dprint yypkt#, ->netbuf.tcp_connect_port# dec dprint dnl
   "tcp_connect_addr=", dprint yypkt#, ->netbuf.tcp_connect_addr# dprint_ipaddr dnl
   "tcp_callback=", dprint yypkt#, ->netbuf.tcp_callback# hex dprint dnl
   "tcp_establish_number=", dprint yypkt#, ->netbuf.tcp_establish_number# dec dprint dnl
   "tcp_close_number=", dprint yypkt#, ->netbuf.tcp_close_number# dec dprint dnl
   "tcp_send_number=", dprint yypkt#, ->netbuf.tcp_send_number# dec dprint dnl
   "udp_regport_src_port=", dprint yypkt#, ->netbuf.udp_regport_src_port# dec dprint dnl
   "udp_regport_dst_port=", dprint yypkt#, ->netbuf.udp_regport_dst_port# dec dprint dnl
   "udp_regport_addr=", dprint yypkt#, ->netbuf.udp_regport_addr# dprint_ipaddr dnl
   "udp_callback=", dprint yypkt#, ->netbuf.udp_callback# hex dprint dnl
   "udp_relport_port=", dprint yypkt#, ->netbuf.udp_relport_port# dec dprint dnl
   "udp_recv_port=", dprint yypkt#, ->netbuf.udp_recv_port# dec dprint dnl
   "udp_send_src_port=", dprint yypkt#, ->netbuf.udp_send_src_port# dec dprint dnl
   "udp_send_dst_port=", dprint yypkt#, ->netbuf.udp_send_dst_port# dec dprint dnl
   "udp_send_addr=", dprint yypkt#, ->netbuf.udp_send_addr# dprint_ipaddr dnl
   yypkt#, ->netbuf.data#
  yypkt#, end

calc_checksum:

  long pp0#,siz0#,sum0#,uuu0#
  siz0#= pop pp0#=
//  "calc_checksum:", dprint dnl
  0, sum0#=
calc_checksum1:
  pp0#, get_int16 uuu0#=
  if siz0#=1 then uuu0#, 0xff00, and uuu0#=
  uuu0#, sum0#, + sum0#=
  pp0#, 2, + pp0#=
  siz0#, 2, - siz0#=
  if siz0#>0 goto calc_checksum1
calc_checksum2:
  if sum0#>0xffff then sum0%, sum0+2%, + sum0#= gotocalc_checksum2
  0xffff, sum0%, - sum0#=
//  "checksum=", dprint sum0#, hex dprint dnl 
//  "calc_checksum: end", dprint dnl
  sum0#, end

 long ss#,tt#,hdrlen#

 struct tcp_header
   short src_port%
   short dst_port%
   int seq_number!
   int ack_number!
   char  offset$
   char  flags$
   short window%
   short checksum%
   short urgent%
 end

  struct connection
     long callback#
     long src_ipaddr#
     long dst_ipaddr#
     long src_port#
     long dst_port#
     long snd_number# // 自分がどこまで送信したか
     long seq_number# // 相手がどこまで受信したか
     long ack_number# // 自分がどこまで受信したか
     long status#
     long sending#
     long send_queue#
     long send_queue_end#
     long recv_queue#
     long recv_queue_end#
     long next#
     long prev#
     long tx_busy#
  end

  enum
    TCP_CONNECTION_STATUS_CLOSED
    TCP_CONNECTION_STATUS_LISTEN
    TCP_CONNECTION_STATUS_SYNSENT1
    TCP_CONNECTION_STATUS_SYNSENT2
    TCP_CONNECTION_STATUS_SYNRECV
    TCP_CONNECTION_STATUS_ESTAB
    TCP_CONNECTION_STATUS_FINWAIT1
    TCP_CONNECTION_STATUS_FINWAIT2
    TCP_CONNECTION_STATUS_CLOSEWAIT
    TCP_CONNECTION_STATUS_LASTACK
  end


  long tcp_busy#,top_connection#
  long tcp_port#
  long tcon#,tpkt#,tcphdr#
  long tbuf#,tcallback#
  long tsize#,tdata#,twindow#
  long toption#,tmss#
  long twindow_scale#,thdrlen#
  long tdst_addr#,tsrc_addr#
  long tdst_port#,tsrc_port#
  long tnumber#,tflags#

dprint_connection:

     long xxtcon#,xxstatus#
     xxtcon#=
     
     if xxtcon#=NULL then "null connection", dprint dnl end
     
     "con src ipaddr=", dprint xxtcon#, ->connection.src_ipaddr#  dprint_ipaddr dnl
     "con dst ipaddr=", dprint xxtcon#, ->connection.dst_ipaddr# dprint_ipaddr dnl
     "con src port=", dprint xxtcon#, ->connection.src_port#  dec dprint dnl
     "con dst port=", dprint xxtcon#, ->connection.dst_port# dec dprint dnl
     "con status=", dprint
     xxtcon#, ->connection.status# xxstatus#=
    if xxstatus#=TCP_CONNECTION_STATUS_CLOSED  then "CLOSED", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_LISTEN  then "LISTEN", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_SYNSENT1  then "SYNSENT1", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_SYNSENT2  then "SYNSENT2", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_SYNRECV  then "SYNRECV", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_ESTAB  then "ESTAB", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_FINWAIT1  then "FINWAIT1", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_FINWAIT2  then "FINWAIT2", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_CLOSEWAIT  then "CLOSEWAIT", dprint
    if xxstatus#=TCP_CONNECTION_STATUS_LASTACK  then "LASTACK", dprint
    dnl
     "con sending=", dprint xxtcon#, ->connection.sending# dec dprint dnl
     end


dprint_tcp_header:



   long aaahdr#,aaaflg#
   aaahdr#=
   "dprint tcp header:", dprint dnl
   "src port=",  dprint aaahdr#, ->tcp_header.src_port get_int16 dec dprint dnl
   "dst port=",  dprint aaahdr#, ->tcp_header.dst_port get_int16 dec dprint dnl
   "seq_number=",  dprint aaahdr#, ->tcp_header.seq_number get_int32 dec dprint dnl
   "ack_number=",  dprint aaahdr#, ->tcp_header.ack_number get_int32 dec dprint dnl
   "offset=",  dprint aaahdr#, ->tcp_header.offset$  dec dprint dnl
   "flags: ", dprint 
    aaahdr#, ->tcp_header.flags$  aaaflg#=
  aaaflg#, TCP_HEADER_FLAG_FIN, and tt#=
  if tt#<>0 then "FIN ", dprint
  aaaflg#, TCP_HEADER_FLAG_SYN, and tt#=
  if tt#<>0 then "SYN ", dprint
  aaaflg#, TCP_HEADER_FLAG_RST, and tt#=
  if tt#<>0 then "RST ", dprint
  aaaflg#, TCP_HEADER_FLAG_PSH, and tt#=
  if tt#<>0 then "PSH ", dprint
  aaaflg#, TCP_HEADER_FLAG_ACK, and tt#=
  if tt#<>0 then "ACK ", dprint
  aaaflg#, TCP_HEADER_FLAG_URG, and tt#=
  if tt#<>0 then "URG ", dprint
  aaaflg#, TCP_HEADER_FLAG_ECE, and tt#=
  if tt#<>0 then "ECE ", dprint
  aaaflg#, TCP_HEADER_FLAG_CWR, and tt#=
  if tt#<>0 then "CWR ", dprint
  dnl
   "window=",  dprint aaahdr#, ->tcp_header.window get_int16 dec dprint dnl
   "checksum=",  dprint aaahdr#, ->tcp_header.checksum get_int16 dec dprint dnl
   "urgent=",  dprint aaahdr#, ->tcp_header.urgent get_int16 dec dprint dnl
   "dprint tcp header:end", dprint dnl
   end
  

 const TCP_HEADER_FLAG_FIN 0x01
 const TCP_HEADER_FLAG_SYN 0x02
 const TCP_HEADER_FLAG_RST 0x04
 const TCP_HEADER_FLAG_PSH 0x08
 const TCP_HEADER_FLAG_ACK 0x10
 const TCP_HEADER_FLAG_URG 0x20
 const TCP_HEADER_FLAG_ECE 0x40
 const TCP_HEADER_FLAG_CWR 0x80
 const TCP_HEADER_FLAG_SYNACK 0x12
 const TCP_HEADER_FLAG_FINACK 0x11

 const TCP_OPTION_TYPE_NOP      1
 const TCP_OPTION_TYPE_MAXSEG   2
 const TCP_OPTION_TYPE_WINDOW   3
 const TCP_OPTION_LENGTH_WINDOW 3
 const TCP_OPTION_LENGTH_MAXSEG 4


 const ARP_HARDWARE_ETHER 0x0100
 const ARP_OPERATION_REQUEST 0x0100
 const ARP_OPERATION_REPLY   0x0200

struct arp_header
  short hardware%
  short protocol%
  char  macaddr_size$
  char  ipaddr_size$
  short operation%
  char sender_macaddr$
  char sender_macaddr1$
  char sender_macaddr2$
  char sender_macaddr3$
  char sender_macaddr4$
  char sender_macaddr5$
  int sender_ipaddr!
  char target_macaddr$
  char target_macaddr1$
  char target_macaddr2$
  char target_macaddr3$
  char target_macaddr4$
  char target_macaddr5$
  int target_ipaddr!
 end

 long arp_top_addr#
 struct addrset
   long ipaddr#
   long macaddr#
   long next#
 end

 const ETHERNET_HEADER_SIZE 14
 const ETHERNET_TYPE_IP  0x0008
 const ETHERNET_TYPE_ARP 0x0608
struct ethernet_header
  char dst_addr$
  char dst_addr1$
  char dst_addr2$
  char dst_addr3$
  char dst_addr4$
  char dst_addr5$
  char src_addr$
  char src_addr1$
  char src_addr2$
  char src_addr3$
  char src_addr4$
  char src_addr5$
  short type%
 end


 const IP_PROTOCOL_ICMP  1
 const IP_PROTOCOL_TCP   6
 const IP_PROTOCOL_UDP  17
 struct ip_header
   char v_hl$
   char tos$
   short length% // IPヘッダ以降のパケットサイズ(IPヘッダを含む)
   short id%
   short fragment%
   char  ttl$
   char  protocol$
   short checksum%
   int src_addr!
   int dst_addr!
 end

 const PROTOCOL_MAXNUM IP_PROTOCOL_UDP /* UDPまで利用可能 */

 struct protoinfo
   long cmd#
   long client#
 end

 char _protoinfo$(PROTOCOL_MAXNUM*protoinfo.SIZE)


id: data 0

 const RETRY_COUNT 10
 const ICMP_TYPE_REPLY   0
 const ICMP_TYPE_REQUEST 8
 struct icmp_header
   char type$
   char code$
   short checksum%
   short param_id%
   short param_sequence_number%
 end


  long icmp_callback#

  long udphdr#,uhdrlen#
  struct udp_header
    short src_port%
    short dst_port%
    short length%
    short checksum%
  end

  long top_portinfo#,pinfo#
  struct portinfo
   long callback#
   long src_addr#
   long dst_addr#
   long src_port#
   long dst_port#
   long prev#
   long next#
  end

  long usrc_port#,udst_port#,usize#,udata#
  long uprotocol#,udst_addr#,usrc_addr#
  long ubuf#,upkt#,ucallback#
  long udp_busy#

 long netdrv_sp#,netdrv_stack#
 char netdrv_task$(TCB.SIZE)
  long locate_handle#,snp_protocol#
  long _snp_start#,_snp_stop#,_snp_initialise#,_snp_reset#
  long _snp_transmit#,_snp_receive#,_snp_shutdown#
  long _snp_statistics#,_snp_get_status#
  long tx_status#,tx_buf#
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


snp_reset:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=1/
/ rax=_snp_reset/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end


snp_shutdown:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=1/
/ rax=_snp_shutdown/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end


snp_initialise:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=rsi/
/ r8=rdi/
/ r9=0/
/ rax=_snp_initialise/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end

snp_clr_statistics:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=-1/
/ r8=0/
/ r9=0/
/ rax=_snp_statistics/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end

snp_start:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=1/
/ rax=_snp_start/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end


snp_stop:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=1/
/ rax=_snp_stop/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end


snp_get_status:
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=snp_protocol/
/ rcx=(rcx)/
/ rdx=rsi/
/ r8=rdi/
/ r9=0/
/ rax=_snp_get_status/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  end

// エスケープシーケンスを含む文字を表示する
putchar0:
  char c_1921026946$
  c_1921026946$=

esc_mode_start:
  if EscapeMode#<>ESC_START goto esc_mode_sharp
    if c_1921026946$='#' then ESC_SHARP,     EscapeMode#= end 
    if c_1921026946$='('  then  ESC_LPARM,     EscapeMode#= end
    if c_1921026946$=')'  then  ESC_RPARM,    EscapeMode#= end
    if c_1921026946$='['  then  ESC_BRACKET, EscapeMode#= end
    ESC_NONE, EscapeMode#=
    end

esc_mode_sharp:
  if EscapeMode#<>ESC_SHARP goto esc_mode_lparm
    ESC_NONE, EscapeMode#=
    end

esc_mode_lparm:
  if EscapeMode#<>ESC_LPARM goto esc_mode_rparm
    ESC_NONE, EscapeMode#=
    end

esc_mode_rparm:
  if EscapeMode#<>ESC_RPARM goto esc_mode_bracket
    ESC_NONE, EscapeMode#=
     end

esc_mode_bracket:
  if EscapeMode#<>ESC_BRACKET goto esc_mode_non
    if c_1921026946$=';'  then  end
    if c_1921026946$<'0' then  ESC_NONE, EscapeMode#= end
    if c_1921026946$>'9' then  ESC_NONE, EscapeMode#= end
    end

esc_mode_non:
  if c_1921026946$=0x1b then ESC_START, EscapeMode#= end
  if c_1921026946$=10 then nl end
  c_1921026946$, putchar end

// エスケープモード
 const  ESC_NONE      0
 const  ESC_START     1
 const  ESC_SHARP     2
 const  ESC_LPARM     3
 const  ESC_RPARM    4
 const  ESC_BRACKET 5

EscapeMode:
   data ESC_NONE

// 受信バッファのサイズ
 const BUFFERSIZE 16384
 


_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _1682764219_in

 end
_76024149_udp_recved:

 end
_748434055_udp_send:
 _730655697_tx

 end
_928842475_udp_regport:
 _487051888_regport

 end
_2128662644_udp_relport:
 _900351036_relport

 end
_1907110269_tcp_recved:

 end
_597084003_tcp_send:
 _1035112186_tx

 end
_1850982812_tcp_accept:
 _503668590_accept

 end
_835112167_tcp_connect:
 _2036949814_connect

 end
_1230887387_tcp_close:
 _1767805631_close

 end
_1085408304_icmp_recved:

 end
_1550168652_icmp_ping:
 _196068822_ping

 end
_743098237_icmp_callback:
 _965616161_set_callback

 end
_1682764219_in:
 dopen
 _739985465_init

 end
_503668590_accept:
 _545143361_in

 end
_2036949814_connect:
 _1518977403_in

 end
_1767805631_close:
 _788772797_in

 end
_1548249890_recved:
 _1362622058_in

 end
_1035112186_tx:
 _13267519_in

 end
_1962466663_init:
 _350026052_in
 _288888639_init

 end
_620451369_send:
 _48609740_tx

 end
_1529368693_rx:
 _1907110269_tcp_recved

 end
_1362622058_in:
tcp_recv:



  long tpkt1#,tcon1#,tcphdr1#,opened#,closed#
  tpkt1#=

  "tcp_recv:", dprint dnl

  tcp_busy#++
  
  
  tpkt1#, ->netbuf.top# tcphdr1#=

  0, opened#= closed#=

  0,
  tpkt1#, ->netbuf.ip_addr#
  tcphdr1#, ->tcp_header.dst_port%
  tcphdr1#, ->tcp_header.src_port%
  tcp_get_connection tcon1#=
  if tcon1#=NULL then 0, 0, tcphdr1#, ->tcp_header.dst_port% 0, tcp_get_connection tcon1#=
  if tcon1#=NULL goto tcp_recv_end

tcp_recv_RST:
  tcphdr1#, ->tcp_header.flags$ TCP_HEADER_FLAG_RST, and tt#=
  if tt#=0 goto tcp_recv_ACK
//  "tcp_recv_RST:", dprint dnl
  closed#++

tcp_recv_ACK:
  tcphdr1#, ->tcp_header.flags$ TCP_HEADER_FLAG_ACK, and tt#=
  if tt#=0 goto tcp_recv_SYN
//  "tcp_recv_ACK:", dprint dnl
  
   tcphdr1#, ->tcp_header.ack_number get_int32 tcon1#, ->connection.seq_number#=  

    // データ送信に対してACKが返ってきたので，tx_busy#を解除する
    tcon1#, ->connection.status# TCP_CONNECTION_STATUS_ESTAB, - tt#=
    if tt#=0 then 0, tcon1#, ->connection.tx_busy#=

    tcon1#, ->connection.status# TCP_CONNECTION_STATUS_SYNSENT1, - tt#=
    if tt#=0 then TCP_CONNECTION_STATUS_SYNSENT2, tcon1#, ->connection.status#=

    tcon1#, ->connection.status# TCP_CONNECTION_STATUS_SYNRECV, - tt#=
    if tt#=0 then TCP_CONNECTION_STATUS_ESTAB, tcon1#, ->connection.status#= opened#++

    tcon1#, ->connection.status# TCP_CONNECTION_STATUS_FINWAIT1, - tt#=
    if tt#=0 then TCP_CONNECTION_STATUS_FINWAIT2, tcon1#, ->connection.status#=

    tcon1#, ->connection.status# TCP_CONNECTION_STATUS_LASTACK, - tt#=
    if tt#=0 then TCP_CONNECTION_STATUS_CLOSED, tcon1#, ->connection.status#= closed#++

tcp_recv_SYN:
  tcphdr1#, ->tcp_header.flags$ TCP_HEADER_FLAG_SYN, and tt#=
  if tt#=0 goto tcp_recv_FIN
//  "tcp_recv_SYN:", dprint dnl
  
  /* LISTENならばSYN+ACKを返す */
  tcon1#, ->connection.status# TCP_CONNECTION_STATUS_LISTEN, - tt#=
  if tt#<>0 goto tcp_recv_SYN1
     1, tcon1#, ->connection.snd_number#=
     1, tcon1#, ->connection.seq_number#=
     tpkt1#, ->netbuf.ip_addr# tcon1#, ->connection.dst_ipaddr#=
     tcphdr1#, ->tcp_header.src_port%  tcon1#, ->connection.dst_port#=
     tcphdr1#, ->tcp_header.seq_number get_int32 1, + tcon1#, ->connection.ack_number#=
     tcon1#, TCP_HEADER_FLAG_SYNACK, tcp_send_signal
     TCP_CONNECTION_STATUS_SYNRECV, tcon1#, ->connection.status#=
  tcp_recv_SYN1:
       
  /* SYNSENTならばACKを返す(たぶんSYN+ACKが来ている) */
  tcon1#, ->connection.status# TCP_CONNECTION_STATUS_SYNSENT2, - tt#=
  if tt#<>0 goto tcp_recv_SYN2
     tcphdr1#, ->tcp_header.seq_number get_int32 1, + tcon1#, ->connection.ack_number#=
     tcon1#, TCP_HEADER_FLAG_ACK, tcp_send_signal
     TCP_CONNECTION_STATUS_ESTAB, tcon1#, ->connection.status#=
     opened#++
  tcp_recv_SYN2:

tcp_recv_FIN:
  tcphdr1#, ->tcp_header.flags$ TCP_HEADER_FLAG_FIN, and tt#=
  if tt#=0 goto tcp_recv_PSH
//  "tcp_recv_FIN:", dprint dnl


  
  /* FINWAIT2なら，ACKを返してCLOSEDに遷移 */
  tcon1#, ->connection.status# - TCP_CONNECTION_STATUS_FINWAIT2, tt#=
  if tt#<>0 goto tcp_recv_FIN1
     tcphdr1#, ->tcp_header.seq_number get_int32 1, + tcon1#, ->connection.ack_number#=
     tcon1#, TCP_HEADER_FLAG_ACK, tcp_send_signal
     TCP_CONNECTION_STATUS_CLOSED, tcon1#, ->connection.status#=
      closed#++
  tcp_recv_FIN1:


  /* ESTABなら，ACK, FIN+ACK を返してLASTACKに遷移 */
  tcon1#, ->connection.status# TCP_CONNECTION_STATUS_ESTAB, - tt#=
  if tt#<>0 goto tcp_recv_FIN2
     tcphdr1#, ->tcp_header.seq_number get_int32 1, + tcon1#, ->connection.ack_number#=
     tcon1#, TCP_HEADER_FLAG_ACK,       tcp_send_signal
     tcon1#, TCP_HEADER_FLAG_FINACK,  tcp_send_signal
     TCP_CONNECTION_STATUS_LASTACK,  tcon1#, ->connection.status#=
  tcp_recv_FIN2:
  

tcp_recv_PSH:
  tcphdr1#, ->tcp_header.flags$ TCP_HEADER_FLAG_PSH, and tt#=
  if tt#=0 goto tcp_recv_opened
//  "tcp_recv_PSH:", dprint dnl

  /* データを受信 */
  tcon1#, ->connection.status# TCP_CONNECTION_STATUS_ESTAB, - tt#=
  if tt#<>0 goto tcp_recv_PSH1


   // ACKを返す
   tpkt1#, ->netbuf.top# tcphdr1#=
   tcphdr1#, ->tcp_header.offset$ 16, / 0x0f, and 4, *
   hdrlen#=
   tpkt1#, ->netbuf.top#  hdrlen#, + tpkt1#, ->netbuf.top#= 
   tpkt1#, ->netbuf.size# hdrlen#,  -  tpkt1#, ->netbuf.size#= 
   tcphdr1#, ->tcp_header.seq_number get_int32 tpkt1#, ->netbuf.size# + tcon1#, ->connection.ack_number#=
   tcon1#, TCP_HEADER_FLAG_ACK, tcp_send_signal

   // コールバックを呼び出す
   tcon1#, ->connection.callback# tcallback#=
   tpkt1#, @tcallback
   
tcp_recv_PSH1:

tcp_recv_opened: 
  if opened#=0 goto tcp_recv_closed
//  "tcp_recv_opened:", dprint dnl
  
tcp_recv_closed:
  if closed#=0 goto tcp_recv_end
//  "tcp_recv_closed", dprint dnl
  tcon1#, tcp_delete_connection

tcp_recv_end:

  "tcp_recv end:", dprint dnl

  tcp_busy#--
  end
 _1529368693_rx
 _1750542450_in
 _1211771947_in
 _651172413_in

 end
_13267519_in:
tcp_send:



     long tcon2#,tsize2#,tdata2#,tt2#
     tcon2#= pop tsize2#= pop tdata2#=
     if tcp_busy#<>0 then -1, end

     tcon2#, ->connection.tx_busy# tt2#=
     if tt2#<>0 then -1, end
     tcp_busy#++

  "tcp_send:", dprint dnl

     tcon2#,
     TCP_HEADER_FLAG_PSH+TCP_HEADER_FLAG_ACK,
     1460, 0, 0, tsize2#, tdata2#, tcp_create_pkt
     tcon2#, tcp_send_pkt

  "tcp_send end:", dprint dnl
    1, tcon2#, ->connection.tx_busy#=
    tcp_busy#--
    0,   end
 _1316013751_in
 _1462956070_in

 end
_1316013751_in:
  tcp_send_pkt:



   tcon#= pop tpkt#=

  "tcp_sendpkt:", dprint dnl

   if tpkt#=NULL then "no packet", dprint dnl end

   tpkt#, ->netbuf.top# tcphdr#=
   tcphdr#, ->tcp_header.offset$ 16, / 0x0f, and 4, *
   hdrlen#=
   tcon#, ->connection.seq_number# tcphdr#, ->tcp_header.seq_number set_int32
   tcon#, ->connection.ack_number# tcphdr#, ->tcp_header.ack_number set_int32
   0, tsize#=
   tcphdr#, ->tcp_header.flags$ TCP_HEADER_FLAG_PSH, and tt#=
   if tt#<>0 then tpkt#, ->netbuf.size# hdrlen#, - tsize#=
   tcphdr#, ->tcp_header.flags$ TCP_HEADER_FLAG_SYN+TCP_HEADER_FLAG_FIN, and tt#=
   if tt#<>0 then 1, tsize#=
   tcphdr#, ->tcp_header.flags$ TCP_HEADER_FLAG_FINACK, and TCP_HEADER_FLAG_FINACK, - tt#=
   if tt#=0 then TCP_CONNECTION_STATUS_FINWAIT1, tcon#, ->connection.status#=
   tcon#, ->connection.src_ipaddr#
   tcon#, ->connection.dst_ipaddr#
   IP_PROTOCOL_TCP,
   tpkt#, ->netbuf.size#
   calc_pseudosum tcphdr#, ->tcp_header.checksum set_int16 
   tcphdr#,   tpkt#, ->netbuf.size#  calc_checksum  
   tcphdr#, ->tcp_header.checksum set_int16
   IP_PROTOCOL_TCP, tpkt#, ->netbuf.ip_protocol#= 
   tcon#, ->connection.dst_ipaddr#  tpkt#, ->netbuf.ip_addr#=
   tpkt#, ip_send
   tcon#, ->connection.seq_number# tsize#, + tcon#, ->connection.snd_number#= 

  "tcp_sendpkt:end", dprint dnl

   end
 _620451369_send

 end
_545143361_in:
tcp_accept:



  long taccept_port#
  tcallback#= pop taccept_port#=
  if tcp_busy#<>0 then -1, end
  tcp_busy#++
  
  "tcp_accept:", dprint dnl

  my_ipaddr#,
  0,
  taccept_port#,
  0,
  TCP_CONNECTION_STATUS_LISTEN,
  tcallback#,
  tcp_create_connection tcon#=

  tcp_busy#--

  "tcp_accept:end", dprint dnl
  tcon#,  end
 _464708761_in

 end
_1518977403_in:
tcp_connect:



  long tconnect_addr#,tconnect_port#,tcon0#
  tcallback#= pop tconnect_port#= pop tconnect_addr#=
  if tcp_busy#<>0 then -1, end
  tcp_busy#++

  "tcp_connect:", dprint dnl

  my_ipaddr#, 
  tconnect_addr#,
  tcp_port#,
  tconnect_port#,
  TCP_CONNECTION_STATUS_SYNSENT1,
  tcallback#,
  tcp_create_connection tcon0#=
  tcp_port#++
  tcon0#, TCP_HEADER_FLAG_SYN, tcp_send_signal        // SYNを送信

  "tcp_connect end:", dprint dnl

  tcp_busy#--
  tcon0#, end
 _1750542450_in
 _464708761_in

 end
_788772797_in:
tcp_close:


  tcon#=
  if tcp_busy#<>0 then -1, end
  tcp_busy#++

  "tcp_close:", dprint dnl

  if tcon#=NULL goto tcp_close1

 tcon#, dprint_connection

  tcon#,  TCP_HEADER_FLAG_FINACK, tcp_send_signal

  tcon#, free

tcp_close1:

  "tcp_close end:", dprint dnl
  
  tcp_busy#--
  
   0, end
 _1750542450_in

 end
_350026052_in:
tcp_init:



  "tcp_init:", dprint dnl


  NULL, top_connection#=
  47323, tcp_port#=
  0, tcp_busy#=
  
  "tcp_init:end", dprint dnl
end

 end
_1462956070_in:
tcp_create_pkt:



  tdata#= pop tsize#= pop twindow_scale#= pop
  tmss#=  pop  twindow#=  pop tflags#= pop tcon#=

  "tcp_create_pkt:", dprint dnl
//  "connection=", dprint dnl tcon#, dprint_connection
  
//  "flags=", dprint tflags#, hex dprint dnl
//  "window=", dprint twindow#, dec dprint dnl
//  "tmss=", dprint tmss#, dec dprint dnl
//  "window scale=", dprint twindow_scale#, hex dprint dnl
//  "data size=", dprint tsize#, dec dprint dnl
//  "data=", dprint tdata#, hex dprint dnl

  tcp_header.SIZE, thdrlen#=
  DEFAULT_NETBUF_SIZE, malloc tpkt#=
  tpkt#, 0, DEFAULT_NETBUF_SIZE, memset
  tpkt#, ->netbuf.data 64, + tcphdr#= tpkt#, ->netbuf.top#=
  tcon#, ->connection.src_port# tcphdr#, ->tcp_header.src_port set_int16
  tcon#, ->connection.dst_port# tcphdr#, ->tcp_header.dst_port set_int16
  tflags#,                                     tcphdr#, ->tcp_header.flags$=
  twindow#,                                 tcphdr#, ->tcp_header.window set_int16
  0,                                               tcphdr#, ->tcp_header.urgent%=

  tcphdr#, tcp_header.SIZE, + toption#=
  if tmss#=0 goto tcp_create_pkt1
  TCP_OPTION_TYPE_MAXSEG,     (toption)$=  toption#++
  TCP_OPTION_LENGTH_MAXSEG, (toption)$= toption#++
  tmss#,                                        toption#, set_int16 toption#++ toption#++

tcp_create_pkt1:
  if twindow_scale#=0 goto tcp_create_pkt2
  TCP_OPTION_TYPE_NOP,              (toption)$= toption#++
  TCP_OPTION_TYPE_WINDOW,      (toption)$= toption#++
  TCP_OPTION_LENGTH_WINDOW, (toption)$= toption#++
  twindow_scale#,                          (toption)$= toption#++
  
tcp_create_pkt2:
   if tdata#<>NULL then tdata#, toption#, tsize#, memcpy
   toption#, tcphdr#, - thdrlen#=
   thdrlen#, 4, / 0x0f, and 16, * 
   tcphdr#, ->tcp_header.offset$=
   thdrlen#, tsize#, + tpkt#, ->netbuf.size#=

//  "made tcp packet offset=", dprint 
//  tpkt#, ->netbuf.top# tcphdr#, - dec dprint
//  " ,size=", dprint
//  tpkt#, ->netbuf.size# dec dprint dnl
  
//  tcphdr#, dprint_tcp_header

  "tcp_create_pkt: end", dprint dnl

   tpkt#, end

 end
_651172413_in:
tcp_get_connection:


  tdst_port#= pop tsrc_port#= pop tdst_addr#= pop tsrc_addr#=
  tdst_port, get_int16 tdst_port#=
  tsrc_port, get_int16 tsrc_port#=
  

  "tcp_get_connection:", dprint dnl
//  "src addr=", dprint tsrc_addr#,  dprint_ipaddr dnl
//  "dst addr=", dprint tdst_addr#, dprint_ipaddr dnl
//  "src port=",  dprint tsrc_port#,  dec dprint dnl
//  "dst port=",  dprint tdst_port#, dec dprint dnl



// "serch connection list", dprint dnl
  if top_connection#=NULL then goto tcp_get_connection3
  top_connection#, tt#=  
tcp_get_connection1:
  tt#, ->connection.src_ipaddr# ss#=
//  "src addr=", dprint ss#, dprint_ipaddr dnl 
  if tsrc_addr#<>0 then if ss#<>tsrc_addr# goto tcp_get_connection2
  tt#, ->connection.dst_ipaddr# ss#=
//  "dst addr=", dprint ss#, dprint_ipaddr dnl 
  if tdst_addr#<>0 then if ss#<>tdst_addr# goto tcp_get_connection2
  tt#, ->connection.src_port# ss#=
//  "src port=", dprint ss#, dec dprint dnl 
  if tsrc_port#<>0 then if ss#<>tsrc_port# goto tcp_get_connection2
  tt#, ->connection.dst_port# ss#=
//  "dst port=", dprint ss#, dec dprint dnl 
  if tdst_port#<>0 then if ss#<>tdst_port# goto tcp_get_connection2

  "tcp_get_connection:found", dprint dnl

  tt#, end
tcp_get_connection2:
  tt#, ->connection.next# tt#=
  if tt#<>NULL goto tcp_get_connection1

tcp_get_connection3:
  "tcp_get_connection:not found", dprint dnl

  NULL, end

 end
_1211771947_in:
tcp_delete_connection:


  long tconxx#
  tconxx#=

  "tcp_delete_connection:", dprint dnl

  if top_connection#=NULL goto tcp_delete_connection3
  top_connection#, tt#=
tcp_delete_connection1:
  if tt#<>tconxx# goto tcp_delete_connection2
  tt#,  ->connection.prev# pp#=
  tt#,  ->connection.next# qq#=
  if tt#=top_connection# then qq#, top_connection#=
  if pp#<>NULL then qq#, pp#, ->connection.next#= 
  if qq#<>NULL then pp#, qq#, ->connection.prev#= 
  tt#, free

  "tcp_delete_connection:success", dprint dnl

  0, end
  
tcp_delete_connection2:
  tt#,  ->connection.next# tt#=
  if tt#<>NULL goto tcp_delete_connection1


tcp_delete_connection3:
  "tcp_delete_connection:fault", dprint dnl

  -1, end

 end
_464708761_in:
tcp_create_connection:


  long tsaddr#,tdaddr#,tsport#,tdport#,tstatus#
  tcallback#= pop tstatus#= pop
  tdport#=      pop  tsport#= pop
  tdaddr#=     pop  tsaddr#=
  
  "create connection:", dprint dnl
  
  connection.SIZE, malloc tcon#=
  tcon#, 0, connection.SIZE, memset
  tcallback#, tcon#, ->connection.callback#=
  tsaddr#, tcon#, ->connection.src_ipaddr#=
  tdaddr#, tcon#, ->connection.dst_ipaddr#=
  tsport#,  tcon#, ->connection.src_port#=
  tdport#,  tcon#, ->connection.dst_port#=
  1, tcon#, ->connection.snd_number#=
  1, tcon#, ->connection.seq_number#=
  0, tcon#, ->connection.ack_number#=
  tstatus#, tcon#, ->connection.status#=
  NULL, tcon#, ->connection.sending#=
  NULL, tcon#, ->connection.send_queue#=
  NULL, tcon#, ->connection.recv_queue#=
  tcon#, ->connection.send_queue  tcon#, ->connection.send_queue_end#=
  tcon#, ->connection.recv_queue   tcon#, ->connection.recv_queue_end#=
  0, tcon#, ->connection.tx_busy#=

  NULL, tcon#, ->connection.prev#=
  top_connection#, tcon#, ->connection.next#=
  tcon#, top_connection#, ->connection.prev#=
  tcon#, top_connection#=
  
  dprint_connection
  
  "create connection:end", dprint dnl
  
  tcon#, end


 end
_1750542450_in:
  tcp_send_signal:



  tflags#= pop tcon#=
  
  "tcp_send_signal:", dprint dnl

  tcon#, tflags#, 1460, 0, 0, 0, NULL, tcp_create_pkt
  tcon#, tcp_send_pkt

  "tcp_send_signal:end", dprint dnl
  end
 _1462956070_in
 _1316013751_in

 end
_1542248735_getaddr:
 _987310595_in

 end
_57070799_recved:
 _627187642_in

 end
_1186619421_init:
 _2008688799_in
 _461795452_init

 end
_2123829938_send:
 _1424048717_tx

 end
_1965354935_finish:
 _79732057_in

 end
_987310595_in:
arp_getaddr:


  long ip_ad_987310595_in#,mac_ad_987310595_in#,ss_987310595_in#,tt_987310595_in#
  ip_ad_987310595_in#=

  "arp_getaddr:", dprint
  " ip=", dprint ip_ad_987310595_in#, dprint_ipaddr dnl

  NULL, mac_ad_987310595_in#=
  ip_ad_987310595_in#, 0xffffffff, and ip_ad_987310595_in#=

  if arp_top_addr#=NULL then   "no addr list", dprint dnl gotoarp_getaddr2
//    if arp_top_addr#=NULL goto arp_getaddr2

  arp_top_addr#, tt_987310595_in#=
arp_getaddr1:
  tt_987310595_in#,  ->addrset.ipaddr# ss_987310595_in#=

  if ss_987310595_in#=ip_ad_987310595_in# then tt_987310595_in#, ->addrset.macaddr# mac_ad_987310595_in#= "addr found", dprint dnl gotoarp_getaddr2
//    if ss_987310595_in#=ip_ad_987310595_in# then tt_987310595_in#, ->addrset.macaddr# mac_ad_987310595_in#= gotoarp_getaddr2

  tt_987310595_in#,  ->addrset.next# ss_987310595_in#=
  if ss_987310595_in#<>NULL goto arp_getaddr1

 "addr not found", dprint dnl

arp_getaddr2:
  if mac_ad_987310595_in#=NULL then ARP_OPERATION_REQUEST, 0xffffffffffff, ip_ad_987310595_in#, arp_sendpkt

  "arp_getaddr end:", dprint 
  " mac=", dprint mac_ad_987310595_in#, dprint_macaddr dnl

    mac_ad_987310595_in#, end
 _455206187_in

 end
_627187642_in:
arp_recv:


  long apkt_627187642_in#,addr_627187642_in#,arpop_627187642_in#,arphdr_627187642_in#,ipaddr_627187642_in#,tt_627187642_in#
  apkt_627187642_in#=

  "arp_recv:", dprint dnl
  apkt_627187642_in#, display_pkt
  
  apkt_627187642_in#, ->netbuf.top# arphdr_627187642_in#=
  arphdr_627187642_in#, ->arp_header.hardware% tt_627187642_in#=
  
  if tt_627187642_in#<>ARP_HARDWARE_ETHER then "not ethernet hardware", dprint dnl gotoarp_recv2
//    if tt_627187642_in#<>ARP_HARDWARE_ETHER goto arp_recv2

  arphdr_627187642_in#, ->arp_header.protocol% tt_627187642_in#=

  if tt_627187642_in#<>ETHERNET_TYPE_IP then "not ip protocol", dprint dnl gotoarp_recv2
//  if tt_627187642_in#<>ETHERNET_TYPE_IP goto arp_recv2

  arphdr_627187642_in#, ->arp_header.operation% arpop_627187642_in#=
  if arpop_627187642_in#=ARP_OPERATION_REPLY goto arp_recv1
  if arpop_627187642_in#=ARP_OPERATION_REQUEST goto arp_recv1

  "arp_recv invalid", dprint dnl

  goto arp_recv2

arp_recv1:
  arphdr_627187642_in#, ->arp_header.sender_ipaddr! ipaddr_627187642_in#=
  ipaddr_627187642_in#, arphdr_627187642_in#, ->arp_header.sender_macaddr# arp_setaddr
  if arpop_627187642_in#=ARP_OPERATION_REPLY goto arp_recv2
  arphdr_627187642_in#, ->arp_header.target_ipaddr! ipaddr_627187642_in#=
  if ipaddr_627187642_in#<>my_ipaddr# goto arp_recv2
  ARP_OPERATION_REPLY,
  arphdr_627187642_in#, ->arp_header.sender_macaddr#
  arphdr_627187642_in#, ->arp_header.sender_ipaddr!
  arp_sendpkt

arp_recv2:
  apkt_627187642_in#, free

  "arp_recv end:", dprint dnl

  end
 _830389888_in
 _455206187_in

 end
_455206187_in:
arp_sendpkt:



  long apkt_455206187_in#,arphdr_455206187_in#,operation_455206187_in#,ipaddr_455206187_in#,macaddr_455206187_in#
  ipaddr_455206187_in#= pop macaddr_455206187_in#= pop operation_455206187_in#=

  "arp_sendpkt:", dprint dnl

  DEFAULT_NETBUF_SIZE, malloc apkt_455206187_in#=
  apkt_455206187_in#, 0, DEFAULT_NETBUF_SIZE, memset
  arp_header.SIZE, apkt_455206187_in#, ->netbuf.size#=
  apkt_455206187_in#, ->netbuf.data 64, +  arphdr_455206187_in#= apkt_455206187_in#, ->netbuf.top#=
  macaddr_455206187_in#, apkt_455206187_in#, ->netbuf.ethernet_addr#=
  ARP_HARDWARE_ETHER, arphdr_455206187_in#, ->arp_header.hardware%=
  ETHERNET_TYPE_IP,         arphdr_455206187_in#, ->arp_header.protocol%=
  MACADDR_SIZE,               arphdr_455206187_in#, ->arp_header.macaddr_size$=
  IPADDR_SIZE,                   arphdr_455206187_in#, ->arp_header.ipaddr_size$=
  operation_455206187_in#,                    arphdr_455206187_in#, ->arp_header.operation%=
  my_macaddr,                  arphdr_455206187_in#, ->arp_header.sender_macaddr MACADDR_SIZE, memcpy
  my_ipaddr,                      arphdr_455206187_in#, ->arp_header.sender_ipaddr    IPADDR_SIZE,      memcpy
  macaddr_455206187_in,                       arphdr_455206187_in#, ->arp_header.target_macaddr  MACADDR_SIZE, memcpy
  ipaddr_455206187_in,                          arphdr_455206187_in#, ->arp_header.target_ipaddr      IPADDR_SIZE,      memcpy
  ETHERNET_TYPE_ARP, apkt_455206187_in#, ->netbuf.ethernet_type#=
  
  "top=",  dprint apkt_455206187_in#, ->netbuf.top#  hex dprint dnl
  "size=", dprint apkt_455206187_in#, ->netbuf.size# dec dprint dnl
  
  apkt_455206187_in#, ethernet_send

  "arp_sendpkt end:", dprint dnl

  end
 _2123829938_send

 end
_830389888_in:
arp_setaddr:


  long mac_ad_830389888_in#,ip_ad_830389888_in#,ss_830389888_in#,tt_830389888_in#
  mac_ad_830389888_in#= pop ip_ad_830389888_in#=

  "arp_setaddr:", dprint
  " mac_addr=", dprint mac_ad_830389888_in#, dprint_macaddr
  ", ", dprint
  "ip addr=", dprint ip_ad_830389888_in#, dprint_ipaddr dnl


  mac_ad_830389888_in#, 0xffffffffffff, and mac_ad_830389888_in#=
  ip_ad_830389888_in#, 0xffffffff, and ip_ad_830389888_in#=
  arp_top_addr#, tt_830389888_in#=
  if arp_top_addr#<>NULL goto arp_setaddr1
  addrset.SIZE, malloc arp_top_addr#=
  ip_ad_830389888_in#,     arp_top_addr#, ->addrset.ipaddr#=
  mac_ad_830389888_in#, arp_top_addr#, ->addrset.macaddr#=
  NULL,       arp_top_addr#, ->addrset.next#=
  "new address", dprint dnl
  goto arp_setaddr2
arp_setaddr1:
  tt_830389888_in#,  ->addrset.ipaddr# ss_830389888_in#=
  
  if ss_830389888_in#=ip_ad_830389888_in# then mac_ad_830389888_in#, tt_830389888_in#, ->addrset.macaddr#= "update address", dprint dnl gotoarp_setaddr2
//    if ss_830389888_in#=ip_ad_830389888_in# then mac_ad_830389888_in#, tt_830389888_in#, ->addrset.macaddr#= gotoarp_setaddr2

  tt_830389888_in#,  ->addrset.next# ss_830389888_in#=
  if ss_830389888_in#<>NULL goto arp_setaddr1
  "append address", dprint dnl
  addrset.SIZE, malloc  ss_830389888_in#= tt_830389888_in#, ->addrset.next#=
  ip_ad_830389888_in#,     ss_830389888_in#, ->addrset.ipaddr#=
  mac_ad_830389888_in#, ss_830389888_in#, ->addrset.macaddr#=
  NULL,         ss_830389888_in#, ->addrset.next#=

arp_setaddr2:

  "arp_setaddr end:", dprint dnl

  end

 end
_2008688799_in:
//  "arp init:", dprint dnl


 NULL, arp_top_addr#=

 end
_79732057_in:
arp_clraddr:


//  "arp_clraddr:", dprint dnl

  long ss_79732057_in#,tt_79732057_in#
  arp_top_addr#, tt_79732057_in#=
arp_clraddr1:
  if tt_79732057_in#=NULL goto arp_clraddr2
  tt_79732057_in#,  ->addrset.next# ss_79732057_in#=
  tt_79732057_in#, free
  ss_79732057_in#, tt_79732057_in#=
  goto arp_clraddr1
arp_clraddr2:

//  "arp_clraddr end:", dprint dnl

  end

 end
_1657251551_recved:
 _1401878366_in

 end
_1424048717_tx:
 _904865858_in

 end
_1723716346_send:
 _1646621917_tx

 end
_1406577215_rx_ip:
 _1244447435_recved

 end
_884398732_rx_arp:
 _57070799_recved

 end
_904865858_in:
ethernet_send:


  long pkt_904865858_in#,hdr_904865858_in#
   pkt_904865858_in#=

//  "ethernet_send:", dprint dnl
//  "top=",  dprint pkt_904865858_in#, ->netbuf.top#  hex dprint dnl
//  "size=", dprint pkt_904865858_in#, ->netbuf.size# dec dprint dnl
//  "addr=", dprint  pkt_904865858_in#, ->netbuf.ethernet_addr# dprint_macaddr dnl  

   pkt_904865858_in#, ->netbuf.top#  ethernet_header.SIZE, -  pkt_904865858_in#, ->netbuf.top#= 
   pkt_904865858_in#, ->netbuf.size# ethernet_header.SIZE, + pkt_904865858_in#, ->netbuf.size#= 
   pkt_904865858_in#, ->netbuf.top#  hdr_904865858_in#=
   my_macaddr,  hdr_904865858_in#, ->ethernet_header.src_addr  MACADDR_SIZE, memcpy
   pkt_904865858_in#, ->netbuf.ethernet_addr    hdr_904865858_in#, ->ethernet_header.dst_addr  MACADDR_SIZE, memcpy
   pkt_904865858_in#, ->netbuf.ethernet_type# hdr_904865858_in#, ->ethernet_header.type%=

//  "top=",  dprint pkt_904865858_in#, ->netbuf.top#  hex dprint dnl
//  "size=", dprint pkt_904865858_in#, ->netbuf.size# dec dprint dnl

   pkt_904865858_in#, netdrv_send

ethernet_send1:
//  "ethernet_send end:", dprint dnl

   end
 _1723716346_send

 end
_1401878366_in:
ethernet_recved:


  long pkt_1401878366_in#,hdr_1401878366_in#,ss_1401878366_in#,tt_1401878366_in#
  pkt_1401878366_in#=

//  "ethernet_received:", dprint dnl

  pkt_1401878366_in#, ->netbuf.top# hdr_1401878366_in#=
  hdr_1401878366_in#, ->ethernet_header.dst_addr# tt_1401878366_in#= 1, and ss_1401878366_in#=
  if ss_1401878366_in#=0x01 then "multi cast", dprint dnl gotoethernet_recved1 // マルチキャストの場合
  tt_1401878366_in#, 0xffffffffffff, and tt_1401878366_in#=
  if tt_1401878366_in#<>my_macaddr# then "not my mac address:", dprint dnl gotoethernet_recved2
ethernet_recved1:
   hdr_1401878366_in#, ->ethernet_header.src_addr#  pkt_1401878366_in#, ->netbuf.ethernet_addr#=
   hdr_1401878366_in#, ->ethernet_header.type%        pkt_1401878366_in#, ->netbuf.ethernet_type#=
   pkt_1401878366_in#, ->netbuf.top#  ethernet_header.SIZE, + pkt_1401878366_in#, ->netbuf.top#= 
   pkt_1401878366_in#, ->netbuf.size# ethernet_header.SIZE, -  pkt_1401878366_in#, ->netbuf.size#= 
   hdr_1401878366_in#, ->ethernet_header.type% tt_1401878366_in#=
   if tt_1401878366_in#=ETHERNET_TYPE_ARP then pkt_1401878366_in#, arp_recv
   if tt_1401878366_in#=ETHERNET_TYPE_IP    then pkt_1401878366_in#, ip_recv

ethernet_recved2:
//  "ethernet_received end:", dprint dnl

   end
 _884398732_rx_arp
 _1406577215_rx_ip

 end
_1244447435_recved:
 _171645279_in

 end
_48609740_tx:
 _2120510020_in

 end
_531494893_send:
 _1424048717_tx

 end
_235333366_rx_tcp:
 _1548249890_recved

 end
_977116194_rx_udp:
 _787683777_recved

 end
_1318541184_rx_icmp:
 _740362117_recved

 end
_1555122358_getaddr:
 _1542248735_getaddr

 end
_2120510020_in:
ip_send:



  long ipkt_2120510020_in#,mac0_2120510020_in#,maci_2120510020_in#,iphdr_2120510020_in#,hdrlen_2120510020_in#
  ipkt_2120510020_in#=

  "ip_send:", dprint dnl

  "req addr", dprint dnl
  RETRY_COUNT, maci_2120510020_in#=
ip_send1:
   maci_2120510020_in#--

   if maci_2120510020_in#<0 then "req addr fault", dprint dnl gotoip_send2
//  if maci_2120510020_in#<0 goto ip_send2

   ipkt_2120510020_in#, ->netbuf.ip_addr# arp_getaddr mac0_2120510020_in#=
   if mac0_2120510020_in#=NULL then 100, wait gotoip_send1
  "req addr success", dprint dnl
   mac0_2120510020_in#, ipkt_2120510020_in#, ->netbuf.ethernet_addr#=

  ip_header.SIZE, hdrlen_2120510020_in#=
  ipkt_2120510020_in#, ->netbuf.top#  hdrlen_2120510020_in#, -  ipkt_2120510020_in#, ->netbuf.top#=
  ipkt_2120510020_in#, ->netbuf.size# hdrlen_2120510020_in#, + ipkt_2120510020_in#, ->netbuf.size#=
  ipkt_2120510020_in#, ->netbuf.top# iphdr_2120510020_in#=
  hdrlen_2120510020_in#, 4, / 64, or iphdr_2120510020_in#, ->ip_header.v_hl$=
  0,   iphdr_2120510020_in#, ->ip_header.tos$=
  ipkt_2120510020_in#, ->netbuf.size# iphdr_2120510020_in#, ->ip_header.length set_int16
  id#, iphdr_2120510020_in#, ->ip_header.id%= id#++
  0,     iphdr_2120510020_in#, ->ip_header.fragment set_int16
  64,   iphdr_2120510020_in#, ->ip_header.ttl$=
  ipkt_2120510020_in#, ->netbuf.ip_protocol# iphdr_2120510020_in#, ->ip_header.protocol$=
  my_ipaddr#, iphdr_2120510020_in#, ->ip_header.src_addr!=
  ipkt_2120510020_in#, ->netbuf.ip_addr# iphdr_2120510020_in#, ->ip_header.dst_addr!=
  0, iphdr_2120510020_in#, ->ip_header.checksum%=
  iphdr_2120510020_in#, hdrlen_2120510020_in#, calc_checksum iphdr_2120510020_in#, ->ip_header.checksum set_int16
  ETHERNET_TYPE_IP, ipkt_2120510020_in#, ->netbuf.ethernet_type#=
  ipkt_2120510020_in#, ethernet_send

ip_send2:
//  "ip_send end:", dprint dnl
  end
 _1555122358_getaddr
 _531494893_send

 end
_171645279_in:
ip_recv:


  long ipkt_171645279_in#,iphdr_171645279_in#,hdrlen_171645279_in#,ss_171645279_in#,tt_171645279_in#
  ipkt_171645279_in#=
  "ip_recv:", dprint dnl

  ipkt_171645279_in#, ->netbuf.top# iphdr_171645279_in#=
  iphdr_171645279_in#, ->ip_header.v_hl$ 16, / 0x0f, and tt_171645279_in#=

  if tt_171645279_in#<>4 then "no ip packet", dprint dnl gotoip_recv1
//    if tt_171645279_in#<>4 goto ip_recv1

  iphdr_171645279_in#, ->ip_header.dst_addr! tt_171645279_in#=

  if tt_171645279_in#<>my_ipaddr# then "not my addr", dprint dnl gotoip_recv1
//    if tt_171645279_in#<>my_ipaddr# goto ip_recv1

  iphdr_171645279_in#, ->ip_header.v_hl$ 0x0f, and 4, * hdrlen_171645279_in#=
  
  "ip header length=", dprint hdrlen_171645279_in#, dec dprint dnl
  
  iphdr_171645279_in#,  hdrlen_171645279_in#, + ipkt_171645279_in#, ->netbuf.top#=
  ipkt_171645279_in#, ->netbuf.size# ss_171645279_in#=
  iphdr_171645279_in#, ->ip_header.length get_int16 tt_171645279_in#=
  if ss_171645279_in#>tt_171645279_in# then tt_171645279_in#, ss_171645279_in#=
  
  "ip pkt size=", dprint ss_171645279_in#, dec dprint dnl
  
  ss_171645279_in#,  hdrlen_171645279_in#,  -  ipkt_171645279_in#, ->netbuf.size#=

  iphdr_171645279_in#, ->ip_header.src_addr!            ipkt_171645279_in#, ->netbuf.ip_addr#=
  iphdr_171645279_in#, ->ip_header.protocol$ tt_171645279_in#= ipkt_171645279_in#, ->netbuf.ip_protocol#=

  if tt_171645279_in#=IP_PROTOCOL_ICMP then  ipkt_171645279_in#, icmp_recv

  if tt_171645279_in#<>IP_PROTOCOL_TCP goto ip_recvxx2
ip_recvxx1:
   if tcp_busy#>0 then sync gotoip_recvxx1
   ipkt_171645279_in#, tcp_recv
   goto ip_recv1

ip_recvxx2:
  if tt_171645279_in#<>IP_PROTOCOL_UDP goto ip_recv1
ip_recvxx3:
   if udp_busy#>0 then sync gotoip_recvxx3
   ipkt_171645279_in#, udp_recv

ip_recv1:

  "ip_recv end:", dprint dnl

  end
 _235333366_rx_tcp
 _977116194_rx_udp
 _1318541184_rx_icmp

 end
_740362117_recved:
 _283307187_in

 end
_1020482189_send:
 _48609740_tx

 end
_976949514_rx:
 _1085408304_icmp_recved

 end
_196068822_ping:
 _1521897595_in

 end
_965616161_set_callback:
 _419837942_in

 end
_288888639_init:
 _2069351127_in
 _144862992_start

 end
_283307187_in:
icmp_recv:



  long icmp_pkt_283307187_in#,icmp_hdr_283307187_in#,tt_283307187_in#
  icmp_pkt_283307187_in#=

  "icmp_recv:", dprint dnl

  icmp_pkt_283307187_in#, ->netbuf.top# icmp_hdr_283307187_in#=


  "icmp recved: ", dprint 
  icmp_hdr_283307187_in#, ->icmp_header.type$           hex dprint "  ",  dprint
  icmp_hdr_283307187_in#, ->icmp_header.code$          hex dprint "  ",  dprint
  icmp_hdr_283307187_in#, ->icmp_header.checksum% hex dprint dnl

  icmp_hdr_283307187_in#, ->icmp_header.type$ tt_283307187_in#=
  if tt_283307187_in#=ICMP_TYPE_REQUEST then icmp_pkt_283307187_in#, icmp_sendpkt gotoicmp_recv1
  if tt_283307187_in#=ICMP_TYPE_REPLY then icmp_pkt_283307187_in#, @icmp_callback
  icmp_pkt_283307187_in#, free
icmp_recv1:
  "icmp_recv:end", dprint dnl

  end
  
 _2086086298_in
 _976949514_rx

 end
_2086086298_in:
icmp_sendpkt:



  long icmp_pkt_2086086298_in#,icmp_hdr_2086086298_in#
  icmp_pkt_2086086298_in#=  

  "icmp_sendpkt:", dprint dnl
  icmp_pkt_2086086298_in#, ->netbuf.top# icmp_hdr_2086086298_in#=

  "size=", dprint icmp_pkt_2086086298_in#, ->netbuf.size# dec dprint dnl
  "code=", dprint  icmp_hdr_2086086298_in#, ->icmp_header.code$ dec dprint dnl
  "param_id=", dprint icmp_hdr_2086086298_in#, ->icmp_header.param_id%  dec dprint dnl
  "param_sequence_number=", dprint icmp_hdr_2086086298_in#, ->icmp_header.param_sequence_number%  dec dprint dnl

  ICMP_TYPE_REPLY,   icmp_hdr_2086086298_in#, ->icmp_header.type$=
  0, icmp_hdr_2086086298_in#, ->icmp_header.checksum%=
  icmp_hdr_2086086298_in#,  icmp_pkt_2086086298_in#, ->netbuf.size#  calc_checksum icmp_hdr_2086086298_in#, ->icmp_header.checksum  set_int16 

  IP_PROTOCOL_ICMP, icmp_pkt_2086086298_in#, ->netbuf.ip_protocol#=
  icmp_pkt_2086086298_in#, ip_send

//  "icmp_sendpkt:end", dprint dnl

  end
 _1020482189_send

 end
_1521897595_in:
icmp_ping:
 _2086086298_in

 end
_2069351127_in:
 nop, icmp_callback#=

 end
_419837942_in:
 icmp_callback#=

 end
_461795452_init:
 _77536454_in
 _1962466663_init

 end
_487051888_regport:
 _1190773672_in

 end
_900351036_relport:
 _896740957_in

 end
_787683777_recved:
 _160897356_in

 end
_730655697_tx:
 _1119286614_in

 end
_681942493_send:
 _48609740_tx

 end
_303836342_rx:
 _76024149_udp_recved

 end
_1123899008_finish:
 _1903576390_in

 end
_1119286614_in:
udp_send:




  ubuf#=
//  udp_busy#++
  
  "udp_send:", dprint dnl

  ubuf#, ->netbuf.udp_send_src_port#
  ubuf#, ->netbuf.udp_send_dst_port#
  ubuf#, ->netbuf.size#
  ubuf#, ->netbuf.top#
  udp_makepkt upkt#=
  if upkt#=NULL then "no packet", dprint dnl gotoudp_send1
  upkt#, my_ipaddr#, ubuf#, ->netbuf.udp_send_addr# udp_sendpkt
udp_send1:

  "udp_send:", dprint dnl
  
//  udp_busy#--
  
  end
 _2031762499_in
 _1956118447_in

 end
_160897356_in:
udp_recv:



  upkt#=
//  udp_busy#++

  "udp_recv:", dprint dnl

  upkt#, ->netbuf.top# udphdr#=
  0,
  upkt#, ->netbuf.ip_addr#
  udphdr#, ->udp_header.dst_port%
  udphdr#, ->udp_header.src_port%
  udp_get_portinfo pinfo#=
  if pinfo#<>NULL goto udp_recv1
    0, 0, udphdr#, ->udp_header.dst_port% 0, udp_get_portinfo pinfo#=
    goto udp_recv2
  udp_recv1:
  pinfo#, ->portinfo.callback# ucallback#=
  upkt#, ->netbuf.top#  udp_header.SIZE, + upkt#, ->netbuf.top#=
  upkt#, ->netbuf.size# udp_header.SIZE,  -  upkt#, ->netbuf.size#=
  udphdr#, ->udp_header.src_port% upkt#, ->netbuf.udp_recv_port#=
  upkt#,  @ucallback

udp_recv2:

  "udp_recv:end", dprint dnl
//  udp_busy#--

  end  
 _1429730555_in
 _303836342_rx

 end
_1956118447_in:
udp_sendpkt:




  long udp_src_adr#,udp_dst_adr#
  udp_dst_adr#= pop udp_src_adr#= pop upkt#=

  "udp_sendpkt:", dprint dnl

  upkt#, ->netbuf.top# udphdr#=
  
  udp_src_adr#, udp_dst_adr#, IP_PROTOCOL_UDP, upkt#, ->netbuf.size# calc_pseudosum
  udphdr#, ->udp_header.checksum%=
  
  0, udphdr#, ->udp_header.checksum%=
  udphdr#,  upkt#, ->netbuf.size#  calc_checksum  udphdr#, ->udp_header.checksum set_int16

  IP_PROTOCOL_UDP, upkt#, ->netbuf.ip_protocol#=
  udp_dst_adr#, upkt#, ->netbuf.ip_addr#=
  upkt#, ip_send

  "udp_sendpkt:end", dprint dnl

  end
 _681942493_send

 end
_1190773672_in:
udp_regport:




  ubuf#=
//  udp_busy#++
  
  "udp_regport:", dprint dnl

  portinfo.SIZE, malloc pinfo#=
  portinfo.SIZE, 0, memset
  ubuf#, ->netbuf.udp_callback#             pinfo#, ->portinfo.callback#=
  my_ipaddr#,                                            pinfo#, ->portinfo.src_addr#=
  ubuf#, ->netbuf.udp_regport_addr#      pinfo#, ->portinfo.dst_addr#=
  ubuf#, ->netbuf.udp_regport_src_port# pinfo#, ->portinfo.src_port#=
  ubuf#, ->netbuf.udp_regport_dst_port# pinfo#, ->portinfo.dst_port#=
  NULL, pinfo#, ->portinfo.prev#=
  top_portinfo#, pinfo#, ->portinfo.next#=
  pinfo#, top_portinfo#, ->portinfo.prev#=
  pinfo#, top_portinfo#=

  "udp_regport:end", dprint dnl
  
//  udp_busy#--
  
  end

 end
_896740957_in:
udp_relport:



    ubuf#=
  
//  udp_busy#++
  
  "udp_relport:", dprint dnl

    ubuf#, ->netbuf.udp_relport_port# udp_delete_portinfo

  "udp_relport:end", dprint dnl

//    udp_busy#--
    
    end
 _699575223_in

 end
_77536454_in:
  "udp_init:", dprint dnl



  NULL, top_portinfo#=
  0, udp_busy#=
  

 end
_1903576390_in:
clear_portinfo:



  "clear_portinfo:", dprint dnl

//  udp_busy#++
  
  if top_portinfo#=NULL then end
  top_portinfo#, tt#=
clear_portinfo1:
  tt#, ->portinfo.next# ss#=
  tt#, free
  ss#, tt#=
  if tt#<>NULL goto clear_portinfo1
  NULL, top_portinfo#=

  "clear_portinfo:end", dprint dnl
  
//  udp_busy#--
  
  end

 end
_2031762499_in:
udp_makepkt:


  udata#= pop usize#= pop udst_port#= pop usrc_port#= 

  "udp_makepkt:", dprint dnl

  udp_header.SIZE, uhdrlen#=
  DEFAULT_NETBUF_SIZE, malloc upkt#=
  upkt#, 0, DEFAULT_NETBUF_SIZE, memset
  upkt#, ->netbuf.data 64, + upkt#, ->netbuf.top#=
  upkt#, ->netbuf.top# udphdr#=
  usrc_port#, udphdr#, ->udp_header.src_port set_int16
  udst_port#, udphdr#, ->udp_header.dst_port set_int16
  uhdrlen#, usize#, + udphdr#, ->udp_header.length set_int16
  if udata#<>NULL then udphdr#, uhdrlen#, + udata#, usize#, memcpy
  uhdrlen#, usize#, + upkt#, ->netbuf.size#=

  "udp_makepkt:end", dprint dnl

  upkt#, end

 end
_1429730555_in:
udp_get_portinfo:


  udst_port#= pop usrc_port#= pop udst_addr#= pop usrc_addr#=

  "udp_get_portinfo:", dprint dnl

  if top_portinfo#=NULL then NULL, end
  top_portinfo#, tt#=  
udp_get_portinfo1:
  tt#, ->portinfo.src_addr# ss#=
  if usrc_addr#<>0 then if ss#<>usrc_addr# goto udp_get_portinfo2
  tt#, ->portinfo.dst_addr# ss#=
  if udst_addr#<>0 then if ss#<>udst_addr# goto udp_get_portinfo2
  tt#, ->portinfo.src_port# ss#=
  if usrc_port#<>0 then if ss#<>usrc_port# goto udp_get_portinfo2
  tt#, ->portinfo.dst_port# ss#=
  if udst_port#<>0 then if ss#<>udst_port# goto udp_get_portinfo2

  "udp_get_portinfo:portinfo found, end", dprint dnl

  tt#, end
udp_get_portinfo2:
  tt#, ->portinfo.next# tt#=
  if tt#<>NULL goto udp_get_portinfo1

  "udp_get_portinfo:portinfo not found, end", dprint dnl

  NULL, end

 end
_699575223_in:
udp_delete_portinfo:


  long uport#
  uport#=

  "udp_delete_portinfo:", dprint dnl

  if top_portinfo#=NULL goto udp_delete_portinfo3
  top_portinfo#, tt#=
udp_delete_portinfo1:
  tt#,  ->portinfo.src_port# ss#=
  if ss#<>uport# goto udp_delete_portinfo2
  tt#,  ->portinfo.prev# pp#=
  tt#,  ->portinfo.next# qq#=
  if tt#=top_portinfo# then qq#, top_portinfo#=
  if pp#<>NULL then qq#, pp#, ->portinfo.next#= 
  if qq#<>NULL then pp#, qq#, ->portinfo.prev#= 
  tt#, free

  "udp_delete_portinfo:success, end", dprint dnl

  0, end
  
udp_delete_portinfo2:
  tt#,  ->portinfo.next# tt#=
  if tt#<>NULL goto udp_delete_portinfo1
udp_delete_portinfo3:

  "udp_delete_portinfo:fault, end", dprint dnl

  -1, end

 end
_739985465_init:
 _1758656520_in
 _1186619421_init

 end
_1646621917_tx:
 _1524300318_in

 end
_1860828130_rx:
 _1657251551_recved

 end
_1758656520_in:
  // パケット受信タスクを生成する
netdrv_init:



// "netdrv_init:", dprint dnl

  const DRIVER_STACK_SIZE 16384
  snp_protocol_guid, snp_protocol, locate_protocol

  snp_protocol#, ->SNP.Start# _snp_start#=
  snp_protocol#, ->SNP.Stop# _snp_stop#=
  snp_protocol#, ->SNP.Initialise# _snp_initialise#=
  snp_protocol#, ->SNP.Reset# _snp_reset#=
  snp_protocol#, ->SNP.Statistics# _snp_statistics#=
  snp_protocol#, ->SNP.GetStatus# _snp_get_status#=
  snp_protocol#, ->SNP.Shutdown# _snp_shutdown#=
  snp_protocol#, ->SNP.Transmit# _snp_transmit#=
  snp_protocol#, ->SNP.Receive# _snp_receive#=


  tx_status, tx_buf, snp_get_status 
  "get_status=", dprint tt#, hex dprint dnl

//  snp_clr_statistics
//  snp_reset

  DRIVER_STACK_SIZE, malloc netdrv_stack#= DRIVER_STACK_SIZE-8, + netdrv_sp#=
  netdrv_task, netdrv_recv, netdrv_sp#, create_task
  "*netdrv", netdrv_task, ->TCB.cmd_line#=
  netdrv_task, run_task

// "netdrv_init end:", dprint dnl
  end

 end
_1524300318_in:
// パケットを送信
netdrv_send:


  long pkt_1524300318_in#,len_1524300318_in#,ss_1524300318_in#,tt_1524300318_in#
  
  pkt_1524300318_in#=
  if pkt_1524300318_in#=NULL then end

   pkt_1524300318_in#, ->netbuf.size# len_1524300318_in#=
   if len_1524300318_in#<64 then 64, len_1524300318_in#=

  "netdrv_send=", dprint len_1524300318_in#,  dec dprint dnl
  pkt_1524300318_in#, display_pkt

netdrv_send1:
   pkt_1524300318_in#, ->netbuf.top# len_1524300318_in#, snp_transmit ss_1524300318_in#=
   tx_status, tx_buf, snp_get_status tt_1524300318_in#= 
   
   "tranmit=0x", dprint ss_1524300318_in#, hex dprint dnl
   "get status=0x", dprint tt_1524300318_in#, hex dprint dnl  
   
   pkt_1524300318_in#, free

    "netdrv_send: end", dprint dnl 

  end

 end
_1394035945_in:
// パケット受信ループ
netdrv_recv:



//  "netdrv_recv:", dprint dnl
   long pkt_1394035945_in#,tt_1394035945_in#

   DEFAULT_NETBUF_SIZE, malloc pkt_1394035945_in#=
   0, DEFAULT_NETBUF_SIZE, memset
   pkt_1394035945_in#, ->netbuf.data pkt_1394035945_in#, ->netbuf.top#=
   1024, pkt_1394035945_in#, ->netbuf.size#=
netdrv_recv_loop:
   pkt_1394035945_in#, ->netbuf.top#  pkt_1394035945_in#, ->netbuf.size snp_receive tt_1394035945_in#=
   
   
//   tt_1394035945_in#, hex dprint dnl
   
   
   if tt_1394035945_in#=0 goto netdrv_recv_success
   if tt_1394035945_in#=0x8000000000000005 goto netdrv_recv_success
   sync 
   goto netdrv_recv_loop


netdrv_recv_success:

  "netdrv_recved: ", dprint dnl
  pkt_1394035945_in#, display_pkt

   pkt_1394035945_in#, ethernet_recved
   sync
   goto netdrv_recv
 _1860828130_rx

 end
_144862992_start:
 _939611777_in

 end
_939611777_in:
telnet:


  char xxbuf$(256)
  long tel_addr#,tel_port#,tbb#,tcc#,tdd#,tel_con#
  long tt9#

  "address: ? ", prints xxbuf, inputs
  xxbuf, 16, atoi tel_addr#=
 
  
  "port: ? ", prints xxbuf, inputs
  xxbuf, 10, atoi tel_port#=
  
  tel_addr#, tel_port#, tel_callback, tcp_connect tel_con#=
  if tel_con#=ERROR then end

  0, txp_939611777_in#= rxp_939611777_in#=
  

// ネゴシエーション
negos_loop:

//  "recv tel_loop1: ", prints
tel_loop01:
    tel_recv1 tbb#=
    sync
    if tbb#<0 goto tel_loop01
//  "recv tbb=", prints tbb#, printd nl

  if tbb#<>255 then "telnet enter", prints nl gototel_enter

//  "recv tel_loop2: ", prints
tel_loop02:
    tel_recv1 tcc#=
    sync
    if tcc#<0 goto tel_loop02
//  "recv tcc=", prints tcc#, printd nl

//  "recv tel_loop3: ", prints nl
tel_loop03:
    tel_recv1 tdd#=
    sync
    if tdd#<0 goto tel_loop03
//  "recv tdd=", prints tdd#, printd nl

  if tcc#=253 then 252, tcc#=

//  "send: tel_loop4", prints nl
tel_loop4:
  tbb#, tel_send1 tt9#=
  if tt9#=-1 then sync gototel_loop4
  
//  "send: tel_loop5", prints nl
tel_loop5:
  tcc#, tel_send1 tt9#=
  if tt9#=-1 then sync gototel_loop5
  
//  "send: tel_loop6", prints nl
tel_loop6:
  tdd#, tel_send1 tt9#=
  if tt9#=-1 then sync gototel_loop6
  
  goto negos_loop

// 受信ループ
tel_recv:
  tel_recv1 tbb#=
  sync
  if tbb#>=0 then tbb#, putchar0 gototel_recv


// 1バイト送信
tel_enter:
  getch tcc#=
  if tcc#=0 goto tel_recv
  if tcc#=3 goto tel_exit
  tcc#, tel_send1
  goto tel_recv

// 終了
tel_exit:
 nl
 tel_con#, tcp_close
 dclose
 end


// 受信コールバック
tel_callback:
  char buf_939611777_in$(BUFFERSIZE)
  long pkt_939611777_in#,pp_939611777_in#,ss_939611777_in#,tt_939611777_in#,ii_939611777_in#,txp_939611777_in#,rxp_939611777_in#
  pkt_939611777_in#=
  pkt_939611777_in#, ->netbuf.top# pp_939611777_in#=
  pkt_939611777_in#, ->netbuf.size# tt_939611777_in#=
  0, ii_939611777_in#=
tel_callback1:
  if ii_939611777_in#>=tt_939611777_in# goto tel_callback2
  txp_939611777_in#, BUFFERSIZE, mod ss_939611777_in#=
  (pp_939611777_in)$(ii_939611777_in#), buf_939611777_in$(ss_939611777_in#)=
  ii_939611777_in#++
  txp_939611777_in#++
  goto tel_callback1
tel_callback2:
 end
 

// 1バイト受信
tel_recv1:
  if rxp_939611777_in#>=txp_939611777_in# then -1, end
  rxp_939611777_in#, BUFFERSIZE, mod ss_939611777_in#= 
  rxp_939611777_in#++
  buf_939611777_in$(ss_939611777_in#), end


// 1バイト送信
tel_send1:
  char buf0_939611777_in$
  buf0_939611777_in$=
  buf0_939611777_in, 1, tel_con#, tcp_send
  end

 end
