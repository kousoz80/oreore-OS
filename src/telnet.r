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
  char c_1757126994$
  c_1757126994$=

esc_mode_start:
  if EscapeMode#<>ESC_START goto esc_mode_sharp
    if c_1757126994$='#' then ESC_SHARP,     EscapeMode#= end 
    if c_1757126994$='('  then  ESC_LPARM,     EscapeMode#= end
    if c_1757126994$=')'  then  ESC_RPARM,    EscapeMode#= end
    if c_1757126994$='['  then  ESC_BRACKET, EscapeMode#= end
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
    if c_1757126994$=';'  then  end
    if c_1757126994$<'0' then  ESC_NONE, EscapeMode#= end
    if c_1757126994$>'9' then  ESC_NONE, EscapeMode#= end
    end

esc_mode_non:
  if c_1757126994$=0x1b then ESC_START, EscapeMode#= end
  if c_1757126994$=10 then nl end
  c_1757126994$, putchar end

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
 _321205612_in

 end
_1892934824_udp_recved:

 end
_1911975657_udp_send:
 _1909199760_tx

 end
_1930172435_udp_regport:
 _1322047397_regport

 end
_426067816_udp_relport:
 _743995207_relport

 end
_1128341696_tcp_recved:

 end
_1201442688_tcp_send:
 _1375796139_tx

 end
_98513084_tcp_accept:
 _2061070257_accept

 end
_377519252_tcp_connect:
 _366267874_connect

 end
_627914539_tcp_close:
 _1599715512_close

 end
_173133147_icmp_recved:

 end
_112090249_icmp_ping:
 _519907039_ping

 end
_2047399472_icmp_callback:
 _22818016_set_callback

 end
_321205612_in:
 dopen
 _1937645764_init

 end
_2061070257_accept:
 _1465884019_in

 end
_366267874_connect:
 _1801091326_in

 end
_1599715512_close:
 _1334750229_in

 end
_1038917088_recved:
 _1660825521_in

 end
_1375796139_tx:
 _1239519896_in

 end
_994352967_init:
 _1900322514_in
 _1687760126_init

 end
_593610626_send:
 _123785157_tx

 end
_1145702806_rx:
 _1128341696_tcp_recved

 end
_1660825521_in:
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
 _1145702806_rx
 _1213715503_in
 _1484806031_in
 _1267755755_in

 end
_1239519896_in:
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
 _14166268_in
 _1522416455_in

 end
_14166268_in:
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
 _593610626_send

 end
_1465884019_in:
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
 _489716565_in

 end
_1801091326_in:
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
 _1213715503_in
 _489716565_in

 end
_1334750229_in:
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
 _1213715503_in

 end
_1900322514_in:
tcp_init:



  "tcp_init:", dprint dnl


  NULL, top_connection#=
  47323, tcp_port#=
  0, tcp_busy#=
  
  "tcp_init:end", dprint dnl
end

 end
_1522416455_in:
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
_1267755755_in:
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
_1484806031_in:
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
_489716565_in:
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
_1213715503_in:
  tcp_send_signal:



  tflags#= pop tcon#=
  
  "tcp_send_signal:", dprint dnl

  tcon#, tflags#, 1460, 0, 0, 0, NULL, tcp_create_pkt
  tcon#, tcp_send_pkt

  "tcp_send_signal:end", dprint dnl
  end
 _1522416455_in
 _14166268_in

 end
_448928713_getaddr:
 _1288296435_in

 end
_1007812600_recved:
 _750773069_in

 end
_147652112_init:
 _2095654480_in
 _688484340_init

 end
_1490777031_send:
 _1936272363_tx

 end
_761995636_finish:
 _2115829873_in

 end
_1288296435_in:
arp_getaddr:


  long ip_ad_1288296435_in#,mac_ad_1288296435_in#,ss_1288296435_in#,tt_1288296435_in#
  ip_ad_1288296435_in#=

  "arp_getaddr:", dprint
  " ip=", dprint ip_ad_1288296435_in#, dprint_ipaddr dnl

  NULL, mac_ad_1288296435_in#=
  ip_ad_1288296435_in#, 0xffffffff, and ip_ad_1288296435_in#=

  if arp_top_addr#=NULL then   "no addr list", dprint dnl gotoarp_getaddr2
//    if arp_top_addr#=NULL goto arp_getaddr2

  arp_top_addr#, tt_1288296435_in#=
arp_getaddr1:
  tt_1288296435_in#,  ->addrset.ipaddr# ss_1288296435_in#=

  if ss_1288296435_in#=ip_ad_1288296435_in# then tt_1288296435_in#, ->addrset.macaddr# mac_ad_1288296435_in#= "addr found", dprint dnl gotoarp_getaddr2
//    if ss_1288296435_in#=ip_ad_1288296435_in# then tt_1288296435_in#, ->addrset.macaddr# mac_ad_1288296435_in#= gotoarp_getaddr2

  tt_1288296435_in#,  ->addrset.next# ss_1288296435_in#=
  if ss_1288296435_in#<>NULL goto arp_getaddr1

 "addr not found", dprint dnl

arp_getaddr2:
  if mac_ad_1288296435_in#=NULL then ARP_OPERATION_REQUEST, 0xffffffffffff, ip_ad_1288296435_in#, arp_sendpkt

  "arp_getaddr end:", dprint 
  " mac=", dprint mac_ad_1288296435_in#, dprint_macaddr dnl

    mac_ad_1288296435_in#, end
 _1930697441_in

 end
_750773069_in:
arp_recv:


  long apkt_750773069_in#,addr_750773069_in#,arpop_750773069_in#,arphdr_750773069_in#,ipaddr_750773069_in#,tt_750773069_in#
  apkt_750773069_in#=

  "arp_recv:", dprint dnl
  apkt_750773069_in#, display_pkt
  
  apkt_750773069_in#, ->netbuf.top# arphdr_750773069_in#=
  arphdr_750773069_in#, ->arp_header.hardware% tt_750773069_in#=
  
  if tt_750773069_in#<>ARP_HARDWARE_ETHER then "not ethernet hardware", dprint dnl gotoarp_recv2
//    if tt_750773069_in#<>ARP_HARDWARE_ETHER goto arp_recv2

  arphdr_750773069_in#, ->arp_header.protocol% tt_750773069_in#=

  if tt_750773069_in#<>ETHERNET_TYPE_IP then "not ip protocol", dprint dnl gotoarp_recv2
//  if tt_750773069_in#<>ETHERNET_TYPE_IP goto arp_recv2

  arphdr_750773069_in#, ->arp_header.operation% arpop_750773069_in#=
  if arpop_750773069_in#=ARP_OPERATION_REPLY goto arp_recv1
  if arpop_750773069_in#=ARP_OPERATION_REQUEST goto arp_recv1

  "arp_recv invalid", dprint dnl

  goto arp_recv2

arp_recv1:
  arphdr_750773069_in#, ->arp_header.sender_ipaddr! ipaddr_750773069_in#=
  ipaddr_750773069_in#, arphdr_750773069_in#, ->arp_header.sender_macaddr# arp_setaddr
  if arpop_750773069_in#=ARP_OPERATION_REPLY goto arp_recv2
  arphdr_750773069_in#, ->arp_header.target_ipaddr! ipaddr_750773069_in#=
  if ipaddr_750773069_in#<>my_ipaddr# goto arp_recv2
  ARP_OPERATION_REPLY,
  arphdr_750773069_in#, ->arp_header.sender_macaddr#
  arphdr_750773069_in#, ->arp_header.sender_ipaddr!
  arp_sendpkt

arp_recv2:
  apkt_750773069_in#, free

  "arp_recv end:", dprint dnl

  end
 _2142189353_in
 _1930697441_in

 end
_1930697441_in:
arp_sendpkt:



  long apkt_1930697441_in#,arphdr_1930697441_in#,operation_1930697441_in#,ipaddr_1930697441_in#,macaddr_1930697441_in#
  ipaddr_1930697441_in#= pop macaddr_1930697441_in#= pop operation_1930697441_in#=

  "arp_sendpkt:", dprint dnl

  DEFAULT_NETBUF_SIZE, malloc apkt_1930697441_in#=
  apkt_1930697441_in#, 0, DEFAULT_NETBUF_SIZE, memset
  arp_header.SIZE, apkt_1930697441_in#, ->netbuf.size#=
  apkt_1930697441_in#, ->netbuf.data 64, +  arphdr_1930697441_in#= apkt_1930697441_in#, ->netbuf.top#=
  macaddr_1930697441_in#, apkt_1930697441_in#, ->netbuf.ethernet_addr#=
  ARP_HARDWARE_ETHER, arphdr_1930697441_in#, ->arp_header.hardware%=
  ETHERNET_TYPE_IP,         arphdr_1930697441_in#, ->arp_header.protocol%=
  MACADDR_SIZE,               arphdr_1930697441_in#, ->arp_header.macaddr_size$=
  IPADDR_SIZE,                   arphdr_1930697441_in#, ->arp_header.ipaddr_size$=
  operation_1930697441_in#,                    arphdr_1930697441_in#, ->arp_header.operation%=
  my_macaddr,                  arphdr_1930697441_in#, ->arp_header.sender_macaddr MACADDR_SIZE, memcpy
  my_ipaddr,                      arphdr_1930697441_in#, ->arp_header.sender_ipaddr    IPADDR_SIZE,      memcpy
  macaddr_1930697441_in,                       arphdr_1930697441_in#, ->arp_header.target_macaddr  MACADDR_SIZE, memcpy
  ipaddr_1930697441_in,                          arphdr_1930697441_in#, ->arp_header.target_ipaddr      IPADDR_SIZE,      memcpy
  ETHERNET_TYPE_ARP, apkt_1930697441_in#, ->netbuf.ethernet_type#=
  
  "top=",  dprint apkt_1930697441_in#, ->netbuf.top#  hex dprint dnl
  "size=", dprint apkt_1930697441_in#, ->netbuf.size# dec dprint dnl
  
  apkt_1930697441_in#, ethernet_send

  "arp_sendpkt end:", dprint dnl

  end
 _1490777031_send

 end
_2142189353_in:
arp_setaddr:


  long mac_ad_2142189353_in#,ip_ad_2142189353_in#,ss_2142189353_in#,tt_2142189353_in#
  mac_ad_2142189353_in#= pop ip_ad_2142189353_in#=

  "arp_setaddr:", dprint
  " mac_addr=", dprint mac_ad_2142189353_in#, dprint_macaddr
  ", ", dprint
  "ip addr=", dprint ip_ad_2142189353_in#, dprint_ipaddr dnl


  mac_ad_2142189353_in#, 0xffffffffffff, and mac_ad_2142189353_in#=
  ip_ad_2142189353_in#, 0xffffffff, and ip_ad_2142189353_in#=
  arp_top_addr#, tt_2142189353_in#=
  if arp_top_addr#<>NULL goto arp_setaddr1
  addrset.SIZE, malloc arp_top_addr#=
  ip_ad_2142189353_in#,     arp_top_addr#, ->addrset.ipaddr#=
  mac_ad_2142189353_in#, arp_top_addr#, ->addrset.macaddr#=
  NULL,       arp_top_addr#, ->addrset.next#=
  "new address", dprint dnl
  goto arp_setaddr2
arp_setaddr1:
  tt_2142189353_in#,  ->addrset.ipaddr# ss_2142189353_in#=
  
  if ss_2142189353_in#=ip_ad_2142189353_in# then mac_ad_2142189353_in#, tt_2142189353_in#, ->addrset.macaddr#= "update address", dprint dnl gotoarp_setaddr2
//    if ss_2142189353_in#=ip_ad_2142189353_in# then mac_ad_2142189353_in#, tt_2142189353_in#, ->addrset.macaddr#= gotoarp_setaddr2

  tt_2142189353_in#,  ->addrset.next# ss_2142189353_in#=
  if ss_2142189353_in#<>NULL goto arp_setaddr1
  "append address", dprint dnl
  addrset.SIZE, malloc  ss_2142189353_in#= tt_2142189353_in#, ->addrset.next#=
  ip_ad_2142189353_in#,     ss_2142189353_in#, ->addrset.ipaddr#=
  mac_ad_2142189353_in#, ss_2142189353_in#, ->addrset.macaddr#=
  NULL,         ss_2142189353_in#, ->addrset.next#=

arp_setaddr2:

  "arp_setaddr end:", dprint dnl

  end

 end
_2095654480_in:
//  "arp init:", dprint dnl


 NULL, arp_top_addr#=

 end
_2115829873_in:
arp_clraddr:


//  "arp_clraddr:", dprint dnl

  long ss_2115829873_in#,tt_2115829873_in#
  arp_top_addr#, tt_2115829873_in#=
arp_clraddr1:
  if tt_2115829873_in#=NULL goto arp_clraddr2
  tt_2115829873_in#,  ->addrset.next# ss_2115829873_in#=
  tt_2115829873_in#, free
  ss_2115829873_in#, tt_2115829873_in#=
  goto arp_clraddr1
arp_clraddr2:

//  "arp_clraddr end:", dprint dnl

  end

 end
_24117635_recved:
 _225406432_in

 end
_1936272363_tx:
 _988136542_in

 end
_2089369819_send:
 _774960946_tx

 end
_513090822_rx_ip:
 _355533579_recved

 end
_136159277_rx_arp:
 _1007812600_recved

 end
_988136542_in:
ethernet_send:


  long pkt_988136542_in#,hdr_988136542_in#
   pkt_988136542_in#=

//  "ethernet_send:", dprint dnl
//  "top=",  dprint pkt_988136542_in#, ->netbuf.top#  hex dprint dnl
//  "size=", dprint pkt_988136542_in#, ->netbuf.size# dec dprint dnl
//  "addr=", dprint  pkt_988136542_in#, ->netbuf.ethernet_addr# dprint_macaddr dnl  

   pkt_988136542_in#, ->netbuf.top#  ethernet_header.SIZE, -  pkt_988136542_in#, ->netbuf.top#= 
   pkt_988136542_in#, ->netbuf.size# ethernet_header.SIZE, + pkt_988136542_in#, ->netbuf.size#= 
   pkt_988136542_in#, ->netbuf.top#  hdr_988136542_in#=
   my_macaddr,  hdr_988136542_in#, ->ethernet_header.src_addr  MACADDR_SIZE, memcpy
   pkt_988136542_in#, ->netbuf.ethernet_addr    hdr_988136542_in#, ->ethernet_header.dst_addr  MACADDR_SIZE, memcpy
   pkt_988136542_in#, ->netbuf.ethernet_type# hdr_988136542_in#, ->ethernet_header.type%=

//  "top=",  dprint pkt_988136542_in#, ->netbuf.top#  hex dprint dnl
//  "size=", dprint pkt_988136542_in#, ->netbuf.size# dec dprint dnl

   pkt_988136542_in#, netdrv_send

ethernet_send1:
//  "ethernet_send end:", dprint dnl

   end
 _2089369819_send

 end
_225406432_in:
ethernet_recved:


  long pkt_225406432_in#,hdr_225406432_in#,ss_225406432_in#,tt_225406432_in#
  pkt_225406432_in#=

//  "ethernet_received:", dprint dnl

  pkt_225406432_in#, ->netbuf.top# hdr_225406432_in#=
  hdr_225406432_in#, ->ethernet_header.dst_addr# tt_225406432_in#= 1, and ss_225406432_in#=
  if ss_225406432_in#=0x01 then "multi cast", dprint dnl gotoethernet_recved1 // マルチキャストの場合
  tt_225406432_in#, 0xffffffffffff, and tt_225406432_in#=
  if tt_225406432_in#<>my_macaddr# then "not my mac address:", dprint dnl gotoethernet_recved2
ethernet_recved1:
   hdr_225406432_in#, ->ethernet_header.src_addr#  pkt_225406432_in#, ->netbuf.ethernet_addr#=
   hdr_225406432_in#, ->ethernet_header.type%        pkt_225406432_in#, ->netbuf.ethernet_type#=
   pkt_225406432_in#, ->netbuf.top#  ethernet_header.SIZE, + pkt_225406432_in#, ->netbuf.top#= 
   pkt_225406432_in#, ->netbuf.size# ethernet_header.SIZE, -  pkt_225406432_in#, ->netbuf.size#= 
   hdr_225406432_in#, ->ethernet_header.type% tt_225406432_in#=
   if tt_225406432_in#=ETHERNET_TYPE_ARP then pkt_225406432_in#, arp_recv
   if tt_225406432_in#=ETHERNET_TYPE_IP    then pkt_225406432_in#, ip_recv

ethernet_recved2:
//  "ethernet_received end:", dprint dnl

   end
 _136159277_rx_arp
 _513090822_rx_ip

 end
_355533579_recved:
 _1906988384_in

 end
_123785157_tx:
 _1973607473_in

 end
_1764039495_send:
 _1936272363_tx

 end
_874251990_rx_tcp:
 _1038917088_recved

 end
_192973678_rx_udp:
 _441761145_recved

 end
_525564910_rx_icmp:
 _1846509221_recved

 end
_2122214336_getaddr:
 _448928713_getaddr

 end
_1973607473_in:
ip_send:



  long ipkt_1973607473_in#,mac0_1973607473_in#,maci_1973607473_in#,iphdr_1973607473_in#,hdrlen_1973607473_in#
  ipkt_1973607473_in#=

  "ip_send:", dprint dnl

  "req addr", dprint dnl
  RETRY_COUNT, maci_1973607473_in#=
ip_send1:
   maci_1973607473_in#--

   if maci_1973607473_in#<0 then "req addr fault", dprint dnl gotoip_send2
//  if maci_1973607473_in#<0 goto ip_send2

   ipkt_1973607473_in#, ->netbuf.ip_addr# arp_getaddr mac0_1973607473_in#=
   if mac0_1973607473_in#=NULL then 100, wait gotoip_send1
  "req addr success", dprint dnl
   mac0_1973607473_in#, ipkt_1973607473_in#, ->netbuf.ethernet_addr#=

  ip_header.SIZE, hdrlen_1973607473_in#=
  ipkt_1973607473_in#, ->netbuf.top#  hdrlen_1973607473_in#, -  ipkt_1973607473_in#, ->netbuf.top#=
  ipkt_1973607473_in#, ->netbuf.size# hdrlen_1973607473_in#, + ipkt_1973607473_in#, ->netbuf.size#=
  ipkt_1973607473_in#, ->netbuf.top# iphdr_1973607473_in#=
  hdrlen_1973607473_in#, 4, / 64, or iphdr_1973607473_in#, ->ip_header.v_hl$=
  0,   iphdr_1973607473_in#, ->ip_header.tos$=
  ipkt_1973607473_in#, ->netbuf.size# iphdr_1973607473_in#, ->ip_header.length set_int16
  id#, iphdr_1973607473_in#, ->ip_header.id%= id#++
  0,     iphdr_1973607473_in#, ->ip_header.fragment set_int16
  64,   iphdr_1973607473_in#, ->ip_header.ttl$=
  ipkt_1973607473_in#, ->netbuf.ip_protocol# iphdr_1973607473_in#, ->ip_header.protocol$=
  my_ipaddr#, iphdr_1973607473_in#, ->ip_header.src_addr!=
  ipkt_1973607473_in#, ->netbuf.ip_addr# iphdr_1973607473_in#, ->ip_header.dst_addr!=
  0, iphdr_1973607473_in#, ->ip_header.checksum%=
  iphdr_1973607473_in#, hdrlen_1973607473_in#, calc_checksum iphdr_1973607473_in#, ->ip_header.checksum set_int16
  ETHERNET_TYPE_IP, ipkt_1973607473_in#, ->netbuf.ethernet_type#=
  ipkt_1973607473_in#, ethernet_send

ip_send2:
//  "ip_send end:", dprint dnl
  end
 _2122214336_getaddr
 _1764039495_send

 end
_1906988384_in:
ip_recv:


  long ipkt_1906988384_in#,iphdr_1906988384_in#,hdrlen_1906988384_in#,ss_1906988384_in#,tt_1906988384_in#
  ipkt_1906988384_in#=
  "ip_recv:", dprint dnl

  ipkt_1906988384_in#, ->netbuf.top# iphdr_1906988384_in#=
  iphdr_1906988384_in#, ->ip_header.v_hl$ 16, / 0x0f, and tt_1906988384_in#=

  if tt_1906988384_in#<>4 then "no ip packet", dprint dnl gotoip_recv1
//    if tt_1906988384_in#<>4 goto ip_recv1

  iphdr_1906988384_in#, ->ip_header.dst_addr! tt_1906988384_in#=

  if tt_1906988384_in#<>my_ipaddr# then "not my addr", dprint dnl gotoip_recv1
//    if tt_1906988384_in#<>my_ipaddr# goto ip_recv1

  iphdr_1906988384_in#, ->ip_header.v_hl$ 0x0f, and 4, * hdrlen_1906988384_in#=
  
  "ip header length=", dprint hdrlen_1906988384_in#, dec dprint dnl
  
  iphdr_1906988384_in#,  hdrlen_1906988384_in#, + ipkt_1906988384_in#, ->netbuf.top#=
  ipkt_1906988384_in#, ->netbuf.size# ss_1906988384_in#=
  iphdr_1906988384_in#, ->ip_header.length get_int16 tt_1906988384_in#=
  if ss_1906988384_in#>tt_1906988384_in# then tt_1906988384_in#, ss_1906988384_in#=
  
  "ip pkt size=", dprint ss_1906988384_in#, dec dprint dnl
  
  ss_1906988384_in#,  hdrlen_1906988384_in#,  -  ipkt_1906988384_in#, ->netbuf.size#=

  iphdr_1906988384_in#, ->ip_header.src_addr!            ipkt_1906988384_in#, ->netbuf.ip_addr#=
  iphdr_1906988384_in#, ->ip_header.protocol$ tt_1906988384_in#= ipkt_1906988384_in#, ->netbuf.ip_protocol#=

  if tt_1906988384_in#=IP_PROTOCOL_ICMP then  ipkt_1906988384_in#, icmp_recv

  if tt_1906988384_in#<>IP_PROTOCOL_TCP goto ip_recvxx2
ip_recvxx1:
   if tcp_busy#>0 then sync gotoip_recvxx1
   ipkt_1906988384_in#, tcp_recv
   goto ip_recv1

ip_recvxx2:
  if tt_1906988384_in#<>IP_PROTOCOL_UDP goto ip_recv1
ip_recvxx3:
   if udp_busy#>0 then sync gotoip_recvxx3
   ipkt_1906988384_in#, udp_recv

ip_recv1:

  "ip_recv end:", dprint dnl

  end
 _874251990_rx_tcp
 _192973678_rx_udp
 _525564910_rx_icmp

 end
_1846509221_recved:
 _1778558811_in

 end
_1235286618_send:
 _123785157_tx

 end
_1731195312_rx:
 _173133147_icmp_recved

 end
_519907039_ping:
 _1254211242_in

 end
_22818016_set_callback:
 _1660974239_in

 end
_1687760126_init:
 _2067441721_in
 _1712423512_start

 end
_1778558811_in:
icmp_recv:



  long icmp_pkt_1778558811_in#,icmp_hdr_1778558811_in#,tt_1778558811_in#
  icmp_pkt_1778558811_in#=

  "icmp_recv:", dprint dnl

  icmp_pkt_1778558811_in#, ->netbuf.top# icmp_hdr_1778558811_in#=


  "icmp recved: ", dprint 
  icmp_hdr_1778558811_in#, ->icmp_header.type$           hex dprint "  ",  dprint
  icmp_hdr_1778558811_in#, ->icmp_header.code$          hex dprint "  ",  dprint
  icmp_hdr_1778558811_in#, ->icmp_header.checksum% hex dprint dnl

  icmp_hdr_1778558811_in#, ->icmp_header.type$ tt_1778558811_in#=
  if tt_1778558811_in#=ICMP_TYPE_REQUEST then icmp_pkt_1778558811_in#, icmp_sendpkt gotoicmp_recv1
  if tt_1778558811_in#=ICMP_TYPE_REPLY then icmp_pkt_1778558811_in#, @icmp_callback
  icmp_pkt_1778558811_in#, free
icmp_recv1:
  "icmp_recv:end", dprint dnl

  end
  
 _83754882_in
 _1731195312_rx

 end
_83754882_in:
icmp_sendpkt:



  long icmp_pkt_83754882_in#,icmp_hdr_83754882_in#
  icmp_pkt_83754882_in#=  

  "icmp_sendpkt:", dprint dnl
  icmp_pkt_83754882_in#, ->netbuf.top# icmp_hdr_83754882_in#=

  "size=", dprint icmp_pkt_83754882_in#, ->netbuf.size# dec dprint dnl
  "code=", dprint  icmp_hdr_83754882_in#, ->icmp_header.code$ dec dprint dnl
  "param_id=", dprint icmp_hdr_83754882_in#, ->icmp_header.param_id%  dec dprint dnl
  "param_sequence_number=", dprint icmp_hdr_83754882_in#, ->icmp_header.param_sequence_number%  dec dprint dnl

  ICMP_TYPE_REPLY,   icmp_hdr_83754882_in#, ->icmp_header.type$=
  0, icmp_hdr_83754882_in#, ->icmp_header.checksum%=
  icmp_hdr_83754882_in#,  icmp_pkt_83754882_in#, ->netbuf.size#  calc_checksum icmp_hdr_83754882_in#, ->icmp_header.checksum  set_int16 

  IP_PROTOCOL_ICMP, icmp_pkt_83754882_in#, ->netbuf.ip_protocol#=
  icmp_pkt_83754882_in#, ip_send

//  "icmp_sendpkt:end", dprint dnl

  end
 _1235286618_send

 end
_1254211242_in:
icmp_ping:
 _83754882_in

 end
_2067441721_in:
 nop, icmp_callback#=

 end
_1660974239_in:
 icmp_callback#=

 end
_688484340_init:
 _2137545808_in
 _994352967_init

 end
_1322047397_regport:
 _1049714811_in

 end
_743995207_relport:
 _2083338191_in

 end
_441761145_recved:
 _953643560_in

 end
_1909199760_tx:
 _1024009826_in

 end
_1632389858_send:
 _123785157_tx

 end
_17333976_rx:
 _1892934824_udp_recved

 end
_793813210_finish:
 _187060201_in

 end
_1024009826_in:
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
 _1048671310_in
 _1335449672_in

 end
_953643560_in:
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
 _730316574_in
 _17333976_rx

 end
_1335449672_in:
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
 _1632389858_send

 end
_1049714811_in:
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
_2083338191_in:
udp_relport:



    ubuf#=
  
//  udp_busy#++
  
  "udp_relport:", dprint dnl

    ubuf#, ->netbuf.udp_relport_port# udp_delete_portinfo

  "udp_relport:end", dprint dnl

//    udp_busy#--
    
    end
 _380693730_in

 end
_2137545808_in:
  "udp_init:", dprint dnl



  NULL, top_portinfo#=
  0, udp_busy#=
  

 end
_187060201_in:
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
_1048671310_in:
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
_730316574_in:
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
_380693730_in:
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
_1937645764_init:
 _932556543_in
 _147652112_init

 end
_774960946_tx:
 _212836723_in

 end
_493460472_rx:
 _24117635_recved

 end
_932556543_in:
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
_212836723_in:
// パケットを送信
netdrv_send:


  long pkt_212836723_in#,len_212836723_in#,ss_212836723_in#,tt_212836723_in#
  
  pkt_212836723_in#=
  if pkt_212836723_in#=NULL then end

   pkt_212836723_in#, ->netbuf.size# len_212836723_in#=
   if len_212836723_in#<64 then 64, len_212836723_in#=

  "netdrv_send=", dprint len_212836723_in#,  dec dprint dnl
  pkt_212836723_in#, display_pkt

netdrv_send1:
   pkt_212836723_in#, ->netbuf.top# len_212836723_in#, snp_transmit ss_212836723_in#=
   tx_status, tx_buf, snp_get_status tt_212836723_in#= 
   
   "tranmit=0x", dprint ss_212836723_in#, hex dprint dnl
   "get status=0x", dprint tt_212836723_in#, hex dprint dnl  
   
   pkt_212836723_in#, free

    "netdrv_send: end", dprint dnl 

  end

 end
_435040037_in:
// パケット受信ループ
netdrv_recv:



//  "netdrv_recv:", dprint dnl
   long pkt_435040037_in#,tt_435040037_in#

   DEFAULT_NETBUF_SIZE, malloc pkt_435040037_in#=
   0, DEFAULT_NETBUF_SIZE, memset
   pkt_435040037_in#, ->netbuf.data pkt_435040037_in#, ->netbuf.top#=
   1024, pkt_435040037_in#, ->netbuf.size#=
netdrv_recv_loop:
   pkt_435040037_in#, ->netbuf.top#  pkt_435040037_in#, ->netbuf.size snp_receive tt_435040037_in#=
   
   
//   tt_435040037_in#, hex dprint dnl
   
   
   if tt_435040037_in#=0 goto netdrv_recv_success
   if tt_435040037_in#=0x8000000000000005 goto netdrv_recv_success
   sync 
   goto netdrv_recv_loop


netdrv_recv_success:

  "netdrv_recved: ", dprint dnl
  pkt_435040037_in#, display_pkt

   pkt_435040037_in#, ethernet_recved
   sync
   goto netdrv_recv
 _493460472_rx

 end
_1712423512_start:
 _970736102_in

 end
_970736102_in:
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

  0, txp_970736102_in#= rxp_970736102_in#=
  

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
  char buf_970736102_in$(BUFFERSIZE)
  long pkt_970736102_in#,pp_970736102_in#,ss_970736102_in#,tt_970736102_in#,ii_970736102_in#,txp_970736102_in#,rxp_970736102_in#
  pkt_970736102_in#=
  pkt_970736102_in#, ->netbuf.top# pp_970736102_in#=
  pkt_970736102_in#, ->netbuf.size# tt_970736102_in#=
  0, ii_970736102_in#=
tel_callback1:
  if ii_970736102_in#>=tt_970736102_in# goto tel_callback2
  txp_970736102_in#, BUFFERSIZE, mod ss_970736102_in#=
  (pp_970736102_in)$(ii_970736102_in#), buf_970736102_in$(ss_970736102_in#)=
  ii_970736102_in#++
  txp_970736102_in#++
  goto tel_callback1
tel_callback2:
 end
 

// 1バイト受信
tel_recv1:
  if rxp_970736102_in#>=txp_970736102_in# then -1, end
  rxp_970736102_in#, BUFFERSIZE, mod ss_970736102_in#= 
  rxp_970736102_in#++
  buf_970736102_in$(ss_970736102_in#), end


// 1バイト送信
tel_send1:
  char buf0_970736102_in$
  buf0_970736102_in$=
  buf0_970736102_in, 1, tel_con#, tcp_send
  end

 end
