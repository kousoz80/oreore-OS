// USBIOプロトコルのコールテーブル
 struct UsbIO 
    long ControlTransfer#
    long BulkTransfer#
    long AsyncInterruptTransfer#
    long SyncInterruptTransfer#
    long IsochronousTransfer#
    long AsyncIsochronousTransfer#
    long GetDeviceDescriptor#
    long GetConfigDescriptor#
    long GetInterfaceDescriptor#
    long GetEndpointDescriptor#
    long GetStringDescriptor#
    long GetSupportedLanguages#
    long PortReset#
  end

// デバイスディスクリプタ
 struct DeviceDescriptor
   char  Length$
   char  Type$
   short USB_bcd%
   char  DeviceClass$
   char  DeviceSubClass$
   char  DeviceProtocol$
   char  MaxPacketSize0$
   short VendorID%
   short ProductID%
   short Device_bcd%
   char  Manufacture_str$
   char  Product_str$
   char  SerialNumber_str$
   char  NumConfiguretions$
 end


// インターフェースディスクリプタ
  struct InterfaceDescriptor
    char Length$
    char Type$
    char InterfaceNumber$
    char AlternateSetting$
    char NumEndpoints$
    char InterfaceClass$
    char InterfaceSubClass$
    char InterfaceProtocol$
    char Interface$
  end

 // コンフィギュレーションディスクリプタ
 struct ConfigDescriptor
    char  Length$
    char  Type$
    short TotalLength%
    char  NumInterfaces$
    char  ConfigurationValue$
    char  Configuration$
    char  Attributes$
    char  MaxPower$
  end

// エンドポイントディスクリプタ
  struct EndpointDescriptor
    char  Length$
    char  Type$
    char  EndpointAddress$
    char  Attributes$
    short MaxPacketSize%
    char  Interval$
  end

usb_io_guid:
  data 0x44cf0cd22b2f68d6
  data 0x755b1b0ba2bb8b8e

locate_handle_buffer:

  long handle_buffer_1040211308#,handle_count_1040211308#,ss_1040211308#
  handle_count_1040211308#= pop handle_buffer_1040211308#=
  __boot_service#, ->BootService.locate_handle_buffer# ss_1040211308#=

  "locate_handle_buffer:", prints nl

/ rcx=0x100/
/ rsp-=rcx/
/ rcx=EFI_LOCATE_BY_PROTOCOL/
/ rdx=usb_io_guid/
/ r8=NULL/
/ rax=handle_count_1040211308/
/ r9=(rax)/
/ rax=handle_buffer_1040211308/
/ rdi=(rax)/
/ 0x20(rsp)=rdi/
/ rax=ss_1040211308/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
end

handle_protocol:


   long ss_897690949#,tt_897690949#
   tt_897690949#=
    __boot_service#, ->BootService.handle_protocol# ss_897690949#=

  "handle_protocol:", prints nl

/   rax=tt_897690949/ 
/   rcx=(rax)/
/   rdx=usb_io_guid/
/   r8=usb_io/
/   rax=ss_897690949/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/

get_device_descriptor:

   long usb_io_2126364318#,device_descriptor_2126364318#,ss_2126364318#
   device_descriptor_2126364318#= pop usb_io_2126364318#= 
    usb_io_2126364318#, ->UsbIO.GetDeviceDescriptor# ss_2126364318#=
    
    "get_device_descriptor:", prints nl
    
/   rax=usb_io_2126364318/
/   rcx=(rax)/
/   rax=device_descriptor_2126364318/
/   rdx=(rax)/
/   rax=ss_2126364318/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    end

get_string_descriptor:
    long usb_io_1922437852#,buf_1922437852#,ss_1922437852#,tt_1922437852#
    buf_1922437852#= pop tt_1922437852#= pop usb_io_1922437852#=
    usb_io#, ->UsbIO.GetStringDescriptor# ss_1922437852#=
    
    "get_string_descriptor:", prints nl
    
/   rax=usb_io_1922437852/
/   rcx=(rax)/
/   rdx=0x0409/  // english
/   rax=tt_1922437852/
/   r8=(rax)/
/   rax=buf_1922437852/
/   r9=(rax)/
/   rax=ss_1922437852/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    end

get_config_descriptor:

   long usb_io_1312938719#,config_descriptor_1312938719#,ss_1312938719#
   config_descriptor_1312938719#= pop usb_io_1312938719#= 
    usb_io_1312938719#, ->UsbIO.GetConfigDescriptor# ss_1312938719#=
    
    "get_config_descriptor:", prints nl
    
/   rax=usb_io_1312938719/
/   rcx=(rax)/
/   rax=config_descriptor_1312938719/
/   rdx=(rax)/
/   rax=ss_1312938719/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    end

get_interface_descriptor:

   long usb_io_1989324247#,interface_descriptor_1989324247#,ss_1989324247#
   interface_descriptor_1989324247#= pop usb_io_1989324247#= 
    usb_io_1989324247#, ->UsbIO.GetInterfaceDescriptor# ss_1989324247#=

  "get_interface_descriptor:", prints nl

/   rax=usb_io_1989324247/
/   rcx=(rax)/
/   rax=interface_descriptor_1989324247/
/   rdx=(rax)/
/   rax=ss_1989324247/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    end

get_endpoint_descriptor:
    long usb_io_1707652309#,buf_1707652309#,ss_1707652309#,tt_1707652309#
    buf_1707652309#= pop tt_1707652309#= pop usb_io_1707652309#=
    usb_io#, ->UsbIO.GetEndpointDescriptor# ss_1707652309#=
    
    "get_endpoint_descriptor:", prints nl
    
/   rax=usb_io_1707652309/
/   rcx=(rax)/
/   rax=tt_1707652309/
/   rdx=(rax)/
/   rax=buf_1707652309/
/   r8=(rax)/
/   rax=ss_1707652309/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    end

control_transfer:

   long usb_io_663378498#,request_663378498#,direction_663378498#,timeout_663378498#,data_663378498#,length_663378498#,status_663378498#,ss_663378498#

   status_663378498#= pop length_663378498#= pop data_663378498#= pop timeout_663378498#= pop
   direction_663378498#= pop request_663378498#= pop usb_io_663378498#=
   usb_io_663378498#, ->UsbIO.ControlTransfer# ss_663378498#=
   
   "control_transfer:", prints nl
   
/  rcx=0x100/
/  rsp-=rcx/
/  rax=usb_io_663378498/
/  rcx=(rax)/
/  rax=request_663378498/
/  rdx=(rax)/
/  rax=direction_663378498/
/  r8=(rax)/
/  rax=timeout_663378498/
/  r9=(rax)/
/  rax=data_663378498/
/  rax=(rax)/
/  0x20(rsp)=rax/
/  rax=length_663378498/
/  rax=(rax)/
/  0x28(rsp)=rax/
/  rax=status_663378498/
/  rax=(rax)/
/  0x30(rsp)=rax/
/  rax=ss_663378498/
/  rax=(rax)/
/  call (rax)/
/  rcx=0x100/
/  rsp+=rcx/
/  rdi=rax/
   ss_663378498#=

  "control_transfer: end", prints nl

   ss_663378498#, end

async_interrupt_transfer:

   long usb_io_1742601038#,endpoint_1742601038#,isnew_1742601038#,interval_1742601038#,length_1742601038#,callback_1742601038#,context_1742601038#,ss_1742601038#
   context_1742601038#= pop callback_1742601038#= pop length_1742601038#= pop interval_1742601038#= pop
   isnew_1742601038#= pop endpoint_1742601038#= pop usb_io_1742601038#=
   
   usb_io_1742601038#, ->UsbIO.AsyncInterruptTransfer# ss_1742601038#=
   
   "async_interrupt_transfer:", prints nl
   
/  rcx=0x100/
/  rsp-=rcx/
/  rax=usb_io_1742601038/
/  rcx=(rax)/
/  rax=endpoint_1742601038/
/  rdx=(rax)/
/  rax=isnew_1742601038/
/  r8=(rax)/
/  rax=interval_1742601038/
/  r9=(rax)/
/  rax=length_1742601038/
/  rax=(rax)/
/  0x20(rsp)=rax/
/  rax=callback_1742601038/
/  rax=(rax)/
/  0x28(rsp)=rax/
/  rax=context_1742601038/
/  rax=(rax)/
/  0x30(rsp)=rax/
/  rax=ss_1742601038/
/  rax=(rax)/
/  call (rax)/
/  rcx=0x100/
/  rsp+=rcx/
/  rdi=rax/
   end

interrupt_transfer:

   long usb_io_71442039#,endpoint_71442039#,data_71442039#,length_71442039#,timeout_71442039#,status_71442039#,ss_71442039#,tt_71442039#
   status_71442039#= pop timeout_71442039#= pop length_71442039#= pop
   data_71442039#= pop endpoint_71442039#= pop usb_io_71442039#=
   usb_io_71442039#, ->UsbIO.SyncInterruptTransfer# ss_71442039#=
   
/  rcx=0x100/
/  rsp-=rcx/
/  rax=usb_io_71442039/
/  rcx=(rax)/
/  rax=endpoint_71442039/
/  rdx=(rax)/
/  rax=data_71442039/
/  r8=(rax)/
/  rax=length_71442039/
/  r9=(rax)/
/  rax=timeout_71442039/
/  rax=(rax)/
/  0x20(rsp)=rax/
/  rax=status_71442039/
/  rax=(rax)/
/  0x28(rsp)=rax/
/  rax=ss_71442039/
/  rax=(rax)/
/  call (rax)/
/  rcx=0x100/
/  rsp+=rcx/
/  rdi=rax/
   end

// ディスクリプタ共通構造
 struct Descriptor
   char  Length$
   char  Type$
 end


memset:
  long st_1361144495#,len_1361144495#,val_1361144495#
  val_1361144495#= pop len_1361144495#= pop st_1361144495#=
memset1:
  if len_1361144495#<=0 then end
  val_1361144495#, (st_1361144495)$=
  st_1361144495#++
  len_1361144495#--
  goto memset1

dump_mem:
  long adr_1504635982#,size_1504635982#,ss_1504635982#,tt_1504635982#
  size_1504635982#= pop adr_1504635982#=
  "memory dump: ", prints
  " addr=", prints  adr_1504635982#,  hex prints
  " size=",  prints  size_1504635982#, printd nl
  if size_1504635982#>64 then 64, size_1504635982#=
  0, tt_1504635982#=
dump_mem1:
  if size_1504635982#<=0 then  nl gotodump_mem2
  if (adr_1504635982)$<16 then "0", prints
  (adr_1504635982)$, hex prints
  " ", prints
  adr_1504635982#++
  size_1504635982#--
  tt_1504635982#++  tt_1504635982#, 16, mod ss_1504635982#= 
  if ss_1504635982#=0 then nl
  goto dump_mem1
dump_mem2:
  end

// マウスドライバテストプログラム ver 0.0.1
// EFI_SIMPLE_POINTER_PROTOCOLとほぼ同等の機能を実装
// ご使用の際は適当にカスタマイズして使って下さい
// 変数
  long usb_io#,endpoint#
  char if_desc$(InterfaceDescriptor.SIZE)
  char end_desc$(EndpointDescriptor.SIZE)
  char conf_desc$(ConfigDescriptor.SIZE)
  char hid_desc$(HidDescriptor.SIZE)
  long mouse_L#,mouse_R#,mouse_rx#,mouse_ry#
  long button_max_index#,button_min_index#
  long number_of_buttons#,button_detected#
  long xmax#,ymax#,xmin#,ymin#


// HIDディスクリプタ
  struct HidDescriptor
    char   Length$
    char   Type$
    short  HID_bcd%
    char   CountryCode$
    char   Descriptors$
    char   DescriptorType$
    short  DescriptorLength%
  end

// デバイスリクエスト
  struct DeviceRequest
    char  Type$
    char  Request$
    short Value%
    short Index%
    short Length%
  end

// HID項目
  struct HidItem
    short  Format%
    char   Size$
    char   Type$
    char   Tag$
    long    Data#
  end

// 定数
  const DRIVER_STACK_SIZE 16384
  const EFI_LOCATE_BY_PROTOCOL 2
  const BIT0 1
  const BIT1 2
  const USB_ENDPOINT_INTERRUPT 0x03
  const CLASS_HID  3
  const SUBCLASS_BOOT  1
  const PROTOCOL_MOUSE 2
  const XTIMEOUT 15
  const USB_DESC_TYPE_ENDPOINT 0x05 
  const USB_DESC_TYPE_HID  0x21
  const USB_DESC_TYPE_REPORT 0x22 
  const BOOT_PROTOCOL 0x0 
  const USB_DESC_TYPE_CONFIG 0x02 
  const USB_DEV_GET_DESCRIPTOR_REQ_TYPE 0x80 
  const USB_HID_GET_DESCRIPTOR_REQ_TYPE 0x81
  const USB_REQ_GET_DESCRIPTOR 0x06 
  const XDATA_IN 0
  const XDATA_OUT 1
  const XDATA_NON 2
  const HID_ITEM_FORMAT_SHORT 0 
  const HID_ITEM_FORMAT_LONG 1
  const USB_HID_CLASS_GET_REQ_TYPE 0xa1 
  const EFI_USB_GET_PROTOCOL_REQUEST 0x03 
  const USB_HID_CLASS_SET_REQ_TYPE 0x21
  const EFI_USB_SET_PROTOCOL_REQUEST 0x0b
  const HID_ITEM_TAG_LONG 15 
  const HID_ITEM_TYPE_MAIN 0x00
  const HID_ITEM_TYPE_GLOBAL 0x01
  const HID_GLOBAL_ITEM_TAG_USAGE_PAGE 0x00 
  const HID_ITEM_TYPE_LOCAL 0x02
  const HID_LOCAL_ITEM_TAG_USAGE_MINIMUM   0x01 
  const HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM  0x02


_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _2121135563_start

 end
_1827755036_in:
// データを表示
print_mouse_data:


  long mouse_l_1827755036_in#,mouse_r_1827755036_in#,mouse_rx_1827755036_in#,mouse_ry_1827755036_in#
  mouse_ry_1827755036_in#= pop mouse_rx_1827755036_in#= pop mouse_r_1827755036_in#= pop mouse_l_1827755036_in#=

 "L_Button=",  prints mouse_l_1827755036_in#,  printd nl
 "R_Button=", prints mouse_r_1827755036_in#,  printd nl
 "movement_X=", prints mouse_rx_1827755036_in#, printd nl
 "movement_Y=", prints mouse_ry_1827755036_in#, printd nl
 nl
 
 end 

 end
_2121135563_start:
 _372754827_in

 end
_646166271_out:
 _1827755036_in

 end
_372754827_in:
mouse_start:


  count ii#,jj#
  long ss#,tt#,handle_count#,handle_buffer#,endpoints#
  long  interval#,packet_size#

  handle_buffer, handle_count, locate_handle_buffer tt#=
  if tt#<>0 then "ERROR : Get USBIO count fail.", prints nl end
  if handle_count#=0 then  "no devices.", prints nl end
  "USB Devices=", prints handle_count#, printd nl
  handle_count#--
  for ii#=0 to handle_count#
    nl  "[Device", prints ii#, printd "]", prints nl 
    (handle_buffer)#(ii#), handle_protocol tt#=
    if tt#<>0 goto usb_init_error
    usb_io#, is_usb_mouse tt#=
    if tt#=0 goto next_usb_device
    usb_io#, if_desc, get_interface_descriptor tt#=
    if tt#<>0 then "error on get interface descriptor", prints nl gotousb_init_error
    if_desc, ->InterfaceDescriptor.NumEndpoints$ endpoints#=
    endpoints#--
    for jj#=0 to endpoints#
       end_desc, EndpointDescriptor.SIZE, 0, memset
       usb_io#, jj#, end_desc, get_endpoint_descriptor tt#=
       
       tt#, hex prints nl
       
       if tt#<>0 then "error on get endpoint descriptor", prints nl gotousb_init_error
       end_desc, ->EndpointDescriptor.Attributes$ BIT0+BIT1, and tt#=
       if tt#=USB_ENDPOINT_INTERRUPT goto usb_init_success
    next jj#

next_usb_device:
  next ii#
  handle_buffer, free 

usb_init_error:
  "usb init error", prints nl
  end

usb_init_success:
  end_desc, ->EndpointDescriptor.EndpointAddress$ endpoint#=
  end_desc, ->EndpointDescriptor.Interval$                interval#=
  end_desc, ->EndpointDescriptor.MaxPacketSize%   packet_size#=
  
  initialize_mouse_device tt#=
  if tt#<>0 goto usb_init_error
  
  "device no=", prints ii#, printd nl
  endpoints#++ "endpoints=", prints endpoints#, printd nl
  "endpoint=", prints endpoint#, hex prints nl
  
  // マウス受信ループへジャンプ
  goto mouse_recv
  end
 _2010628926_in
 _1033572832_in
 _2080992138_in

 end
_2080992138_in:
initialize_mouse_device:


  long start_2080992138_in#,pos_2080992138_in#,buf_2080992138_in#,head_2080992138_in#,hid_desc_2080992138_in#,report_desc_2080992138_in#
  long total_length_2080992138_in#,rep_len_2080992138_in#,protocol_2080992138_in#,tt_2080992138_in#,status_2080992138_in#
  
  "initialize_mouse_device:", prints nl
  
  usb_io#, conf_desc, get_config_descriptor tt_2080992138_in#=
  if tt_2080992138_in#<>0 then "error in get_config_descriptor", prints nl end
  conf_desc, ->ConfigDescriptor.TotalLength% total_length_2080992138_in#= malloc buf_2080992138_in#=
  
  "total_length=", prints total_length_2080992138_in#, printd nl
  
  buf_2080992138_in#, total_length_2080992138_in#, 0, memset
  conf_desc, ->ConfigDescriptor.ConfigurationValue$ 1, - USB_DESC_TYPE_CONFIG*256, or tt_2080992138_in#=
  usb_io#, tt_2080992138_in#, 0, total_length_2080992138_in#, buf_2080992138_in#, get_descriptor  tt_2080992138_in#=

  tt_2080992138_in#, hex prints nl

  if tt_2080992138_in#<>0 then "get_descriptor: error", prints nl gotoexit2_2080992138_in

  buf_2080992138_in#, total_length_2080992138_in#, dump_mem

  0, start_2080992138_in#=
  0, pos_2080992138_in#=
  buf_2080992138_in#, head_2080992138_in#=
  NULL, hid_desc_2080992138_in#=
loop1_2080992138_in:

  "pos=", prints pos_2080992138_in#, printd nl

  if pos_2080992138_in#>=total_length_2080992138_in# goto exit1_2080992138_in
  head_2080992138_in#, ->InterfaceDescriptor.InterfaceNumber$ 
  if_desc, ->InterfaceDescriptor.InterfaceNumber$ - tt_2080992138_in#=
  head_2080992138_in#, ->InterfaceDescriptor.AlternateSetting$ 
  if_desc, ->InterfaceDescriptor.AlternateSetting$  - tt_2080992138_in#, or tt_2080992138_in#=
  if tt_2080992138_in#=0 then 1, start_2080992138_in#= 
  if start_2080992138_in#=0 goto skip1_2080992138_in
  head_2080992138_in#, ->Descriptor.Type$  USB_DESC_TYPE_ENDPOINT, - tt_2080992138_in#=
  if tt_2080992138_in#=0 goto exit1_2080992138_in
  head_2080992138_in#, ->Descriptor.Type$  USB_DESC_TYPE_HID, - tt_2080992138_in#=
  if tt_2080992138_in#=0 then head_2080992138_in#, hid_desc_2080992138_in#= gotoexit1_2080992138_in
skip1_2080992138_in:
  head_2080992138_in#, ->Descriptor.Length$ pos_2080992138_in#, + pos_2080992138_in#=
  buf_2080992138_in#, pos_2080992138_in#, + head_2080992138_in#=
  goto loop1_2080992138_in 
exit1_2080992138_in:
  -1, status_2080992138_in$=
  if hid_desc_2080992138_in#=NULL then "no endpoint", prints nl gotoexit3_2080992138_in
  
  "hid desc type=", prints hid_desc_2080992138_in#, ->HidDescriptor.DescriptorType$ hex prints nl
  
  hid_desc_2080992138_in#, ->HidDescriptor.DescriptorType$ USB_DESC_TYPE_REPORT, - tt_2080992138_in#=
  if tt_2080992138_in#<>0 then "is not report descriptor", prints nl gotoexit3_2080992138_in
  hid_desc_2080992138_in#, ->HidDescriptor.DescriptorLength% rep_len_2080992138_in#= malloc report_desc_2080992138_in#=
  report_desc_2080992138_in#, rep_len_2080992138_in#, 0, memset
  usb_io#,  if_desc, ->InterfaceDescriptor.InterfaceNumber$  rep_len_2080992138_in#,  report_desc_2080992138_in#,  get_report_descriptor tt_2080992138_in#=
  
  tt_2080992138_in#, hex prints nl
  
  if tt_2080992138_in#<>0 then "error", prints nl gotoexit2_2080992138_in
  report_desc_2080992138_in#, rep_len_2080992138_in#, parse_report_descriptor tt_2080992138_in#=
  if tt_2080992138_in#<>0 then "error", prints nl gotoexit2_2080992138_in
  usb_io#, if_desc, ->InterfaceDescriptor.InterfaceNumber$ protocol_2080992138_in, get_protocol_request tt_2080992138_in#=
  
  tt_2080992138_in#, hex prints nl
  
  if protocol_2080992138_in#=BOOT_PROTOCOL goto skip2_2080992138_in
    usb_io#, if_desc, ->InterfaceDescriptor.InterfaceNumber$ BOOT_PROTOCOL, set_protocol_request
  
  tt_2080992138_in#, hex prints nl
  
  skip2_2080992138_in:
  0, status_2080992138_in$=
exit2_2080992138_in:
  report_desc_2080992138_in#, free
exit3_2080992138_in:
  buf_2080992138_in#, free
  status_2080992138_in#, end
 _169466439_in
 _49383316_in
 _1091124528_in
 _1767561729_in
 _921678187_in

 end
_921678187_in:
get_descriptor:

  long status_921678187_in#,descriptor_921678187_in#,length_921678187_in#,index_921678187_in#,value_921678187_in#,usb_io_921678187_in#
  char dev_req_921678187_in$(DeviceRequest.SIZE)
  
  descriptor_921678187_in#= pop length_921678187_in#= pop
  index_921678187_in#= pop  value_921678187_in#= pop usb_io_921678187_in#=
  
  "get_descriptor:", prints nl
  
  USB_DEV_GET_DESCRIPTOR_REQ_TYPE, dev_req_921678187_in, ->DeviceRequest.Type$=
  USB_REQ_GET_DESCRIPTOR, dev_req_921678187_in, ->DeviceRequest.Request$=
  value_921678187_in#,   dev_req_921678187_in, ->DeviceRequest.Value%=
  index_921678187_in#,   dev_req_921678187_in, ->DeviceRequest.Index%=
  length_921678187_in#, dev_req_921678187_in, ->DeviceRequest.Length%=
  usb_io_921678187_in#,  dev_req_921678187_in,  XDATA_IN, XTIMEOUT,  descriptor_921678187_in#,  length_921678187_in#,  status_921678187_in,  control_transfer
  end

 end
_1767561729_in:
get_report_descriptor:


  long status_1767561729_in#,interface_1767561729_in#,descriptor_1767561729_in#,length_1767561729_in#,usb_io_1767561729_in#
  char dev_req_1767561729_in$(DeviceRequest.SIZE)
  
  descriptor_1767561729_in#= pop length_1767561729_in#= pop interface_1767561729_in#= pop usb_io_1767561729_in#=
  
  "get_report_descriptor:", prints nl
  
  USB_HID_GET_DESCRIPTOR_REQ_TYPE, dev_req_1767561729_in, ->DeviceRequest.Type$=
  USB_REQ_GET_DESCRIPTOR, dev_req_1767561729_in, ->DeviceRequest.Request$=
  USB_DESC_TYPE_REPORT*256,   dev_req_1767561729_in, ->DeviceRequest.Value%=
  interface_1767561729_in#,   dev_req_1767561729_in, ->DeviceRequest.Index%=
  length_1767561729_in#, dev_req_1767561729_in, ->DeviceRequest.Length%=
  usb_io_1767561729_in#,  dev_req_1767561729_in,  XDATA_IN, XTIMEOUT,  descriptor_1767561729_in#,  length_1767561729_in#,  status_1767561729_in,  control_transfer
  end

 end
_1091124528_in:
parse_report_descriptor:


  long rep_desc_1091124528_in#,size_1091124528_in#,rep_end_1091124528_in#,pp_1091124528_in#,tt_1091124528_in#
  char hid_item_1091124528_in$(HidItem.SIZE)
  
  size_1091124528_in#= pop rep_desc_1091124528_in#= 
  
  "parse_report_descriptor:", prints nl
  
  rep_desc_1091124528_in#, size_1091124528_in#, +  rep_end_1091124528_in#=
  rep_desc_1091124528_in#, rep_end_1091124528_in#, hid_item_1091124528_in, get_next_item pp_1091124528_in#=
loop1_1091124528_in:
  if pp_1091124528_in#=NULL goto exit1_1091124528_in
  hid_item_1091124528_in, ->HidItem.Format% tt_1091124528_in#=
  if tt_1091124528_in#<>HID_ITEM_FORMAT_SHORT then ERROR, end
  hid_item_1091124528_in, parse_item
  pp_1091124528_in#, rep_end_1091124528_in#, hid_item_1091124528_in, get_next_item pp_1091124528_in#=
  goto loop1_1091124528_in
exit1_1091124528_in:
  button_max_index#, button_min_index#, - 1, + number_of_buttons#=
   127, xmax#= ymax#=
  -127, xmin#=  ymin#=
  0, end

 _1036306687_in
 _1995135904_in

 end
_1995135904_in:
parse_item:


  long hid_item_1995135904_in#,dat_1995135904_in#,tt_1995135904_in#
  hid_item_1995135904_in#=
  
  "parse_item:", prints nl
  
  hid_item_1995135904_in#, ->HidItem.Type$ tt_1995135904_in#=
  
case_HID_ITEM_TYPE_MAIN:
  if tt_1995135904_in#<>HID_ITEM_TYPE_MAIN goto case_HID_ITEM_TYPE_GLOBAL 
  end

case_HID_ITEM_TYPE_GLOBAL:
  if tt_1995135904_in#<>HID_ITEM_TYPE_GLOBAL goto case_HID_ITEM_TYPE_LOCAL
  hid_item_1995135904_in#, ->HidItem.Tag$ tt_1995135904_in#=
  if tt_1995135904_in#<>HID_GLOBAL_ITEM_TAG_USAGE_PAGE then end
  hid_item_1995135904_in#, ->HidItem.Data# tt_1995135904_in#=
  if tt_1995135904_in#=0x09 then 1, button_detected#=    
  end

case_HID_ITEM_TYPE_LOCAL:
  if tt_1995135904_in#<>HID_ITEM_TYPE_LOCAL then end
  hid_item_1995135904_in#, ->HidItem.Size$ tt_1995135904_in#=
  if tt_1995135904_in#=0 then end
  hid_item_1995135904_in#, ->HidItem.Data# dat_1995135904_in#=
  hid_item_1995135904_in#, ->HidItem.Tag$ tt_1995135904_in#=

case_HID_LOCAL_ITEM_TAG_USAGE_MINIMUM:
  if tt_1995135904_in#<>HID_LOCAL_ITEM_TAG_USAGE_MINIMUM goto case_HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM
  if button_detected#<>0 then end
  dat_1995135904_in#, button_min_index#=
  end

case_HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM:
  if tt_1995135904_in#<>HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM then end
  if button_detected#<>0 then end
  dat_1995135904_in#, button_max_index#=
  end

 end
_1036306687_in:
get_next_item:
  

   long start_1036306687_in#,end_1036306687_in#,hid_item_1036306687_in#,ss_1036306687_in#,tt_1036306687_in#
   
   hid_item_1036306687_in#= pop end_1036306687_in#= pop start_1036306687_in#=
   
   "get_next_item:", prints nl
   
   if end_1036306687_in#<=start_1036306687_in# then NULL, end
   (start_1036306687_in)$, tt_1036306687_in#=
   start_1036306687_in#++
   
  //
  // Bit format of prefix byte:
  // Bits 0-1: Size
  // Bits 2-3: Type
  // Bits 4-7: Tag
  //
  tt_1036306687_in#, 2, 3, read_bit_field hid_item_1036306687_in#, ->HidItem.Type$=
  tt_1036306687_in#, 4, 7, read_bit_field  ss_1036306687_in#= hid_item_1036306687_in#, ->HidItem.Tag$=

format_long_1036306687_in:
  if ss_1036306687_in#<>HID_ITEM_TAG_LONG goto format_short_1036306687_in 
    HID_ITEM_FORMAT_LONG, hid_item_1036306687_in#, ->HidItem.Format%=
    end_1036306687_in#, start_1036306687_in#, - tt_1036306687_in#=
     if tt_1036306687_in#<2 then NULL, end 
      (start_1036306687_in)$, hid_item_1036306687_in#, ->HidItem.Size$= start_1036306687_in#++
      (start_1036306687_in)$, hid_item_1036306687_in#, ->HidItem.Tag$=  start_1036306687_in#++
      hid_item_1036306687_in#, ->HidItem.Size$ end_1036306687_in#, - start_1036306687_in#, + tt_1036306687_in#=
      if tt_1036306687_in#>0 then NULL, end
      start_1036306687_in#, hid_item_1036306687_in#, ->HidItem.Data#=
      hid_item_1036306687_in#, ->HidItem.Size$ start_1036306687_in#, + start_1036306687_in#=
      start_1036306687_in#, end 

format_short_1036306687_in:
    HID_ITEM_FORMAT_SHORT, hid_item_1036306687_in#, ->HidItem.Format%=
    tt_1036306687_in#, 0, 1, read_bit_field  tt_1036306687_in#= hid_item_1036306687_in#, ->HidItem.Size$=
    if tt_1036306687_in#=0 then start_1036306687_in#, end

format_short1_1036306687_in:
    if tt_1036306687_in#<>1 goto format_short2_1036306687_in
    if end_1036306687_in#<=start_1036306687_in# then NULL, end
    (start_1036306687_in)$, hid_item_1036306687_in#, ->HidItem.Data#=
    start_1036306687_in#++
    start_1036306687_in#, end

format_short2_1036306687_in:
    if tt_1036306687_in#<>2 goto format_short3_1036306687_in
    end_1036306687_in#, start_1036306687_in#, - 2, - tt_1036306687_in#=
    if tt_1036306687_in#<0 then NULL, end
    (start_1036306687_in)%, hid_item_1036306687_in#, ->HidItem.Data#=
    start_1036306687_in#++
    start_1036306687_in#++
    start_1036306687_in#, end
    
format_short3_1036306687_in:
    if tt_1036306687_in#<>3 then NULL, end
    4, hid_item_1036306687_in#, ->HidItem.Size$=
    end_1036306687_in#, start_1036306687_in#, - 4, - tt_1036306687_in#=
    if tt_1036306687_in#<0 then NULL, end
    (start_1036306687_in)!, hid_item_1036306687_in#, ->HidItem.Data#=
    start_1036306687_in#, 4, + start_1036306687_in#=
    start_1036306687_in#, end
 _869858528_in

 end
_49383316_in:
get_protocol_request:



  long protocol_49383316_in#,interface_49383316_in#,usb_io_49383316_in#,status_49383316_in#
  char dev_req_49383316_in$(DeviceRequest.SIZE)
  
  protocol_49383316_in#= pop interface_49383316_in#= pop usb_io_49383316_in#=
  
  "get_protocol_request:", prints nl
  
  USB_HID_CLASS_GET_REQ_TYPE, dev_req_49383316_in, ->DeviceRequest.Type$=
  EFI_USB_GET_PROTOCOL_REQUEST, dev_req_49383316_in, ->DeviceRequest.Request$=
  0,   dev_req_49383316_in, ->DeviceRequest.Value%=
  interface_49383316_in#,   dev_req_49383316_in, ->DeviceRequest.Index%=
  1, dev_req_49383316_in, ->DeviceRequest.Length%=
  usb_io_49383316_in#,  dev_req_49383316_in,  XDATA_IN, XTIMEOUT,  protocol_49383316_in#,  1,  status_49383316_in,  control_transfer
  end

 end
_169466439_in:
set_protocol_request:



  long protocol_169466439_in#,interface_169466439_in#,usb_io_169466439_in#,status_169466439_in#
  char dev_req_169466439_in$(DeviceRequest.SIZE)
  
  protocol_169466439_in#= pop interface_169466439_in#= pop usb_io_169466439_in#=
  
  "set_protocol_request:", prints nl
  
  USB_HID_CLASS_SET_REQ_TYPE, dev_req_169466439_in, ->DeviceRequest.Type$=
  EFI_USB_SET_PROTOCOL_REQUEST, dev_req_169466439_in, ->DeviceRequest.Request$=
  protocol_169466439_in#,    dev_req_169466439_in, ->DeviceRequest.Value%=
  interface_169466439_in#,   dev_req_169466439_in, ->DeviceRequest.Index%=
  0, dev_req_169466439_in, ->DeviceRequest.Length%=
  usb_io_169466439_in#,  dev_req_169466439_in,  XDATA_NON, XTIMEOUT,  NULL,  0,  status_169466439_in,  control_transfer
  end

 end
_2010628926_in:
// マウス受信ループ
mouse_recv:


   char data_2010628926_in$(256)
   long length_2010628926_in#,status_2010628926_in#,tt_2010628926_in#

   inkey tt_2010628926_in#=
   if tt_2010628926_in#<>0 then end  // 何かキー入力すると終了

   packet_size#, length_2010628926_in#=
   usb_io#, endpoint#, data_2010628926_in, length_2010628926_in, interval#, status_2010628926_in, interrupt_transfer tt_2010628926_in#=

//  "usbio=", prints usb_io#, hex prints
//  ", endpoint=0x", prints endpoint#, hex prints 
//  ", length=", prints length_2010628926_in#, printd 
//  ", status=", prints status_2010628926_in#, hex prints 
//  ", ret=", prints tt_2010628926_in#, hex prints nl

   if tt_2010628926_in#<>0 goto mouse_recv
   if length_2010628926_in#=0 goto mouse_recv

  //
  // Check mouse Data
  // USB HID Specification specifies following data format:
  // Byte    Bits    Description
  // 0       0       Button 1
  //         1       Button 2
  //         2       Button 3
  //         4 to 7  Device-specific
  // 1       0 to 7  X displacement
  // 2       0 to 7  Y displacement
  // 3 to n  0 to 7  Device specific (optional)
  //
  0, mouse_L#= mouse_R#=
  data_2010628926_in$(0), BIT0, and tt_2010628926_in#=
  if tt_2010628926_in#<>0 then 1, mouse_L#=
  data_2010628926_in$(0), BIT1, and tt_2010628926_in#=
  if tt_2010628926_in#<>0 then 1, mouse_R#=
  data_2010628926_in$(1), tt_2010628926_in#=
  if tt_2010628926_in#>127 then tt_2010628926_in#, 256, - tt_2010628926_in#=
  tt_2010628926_in#, mouse_rx#=
  data_2010628926_in$(2), tt_2010628926_in#=
  if tt_2010628926_in#>127 then tt_2010628926_in#, 256, - tt_2010628926_in#=
  tt_2010628926_in#, mouse_ry#=
  
  mouse_L#, mouse_R#, mouse_rx#, mouse_ry#,  print_mouse_data
  
  goto mouse_recv



 _646166271_out

 end
_1033572832_in:
is_usb_mouse:


   long usb_io_1033572832_in#,tt_1033572832_in#
   char if_desc_1033572832_in$(InterfaceDescriptor.SIZE)

  usb_io_1033572832_in#= 
  
  "is_usb_mouse:", prints nl
  
  usb_io_1033572832_in#, if_desc_1033572832_in, get_interface_descriptor tt_1033572832_in#=
  if tt_1033572832_in#<>0 goto not_usb_mouse_1033572832_in

  if_desc_1033572832_in, ->InterfaceDescriptor.InterfaceClass$ tt_1033572832_in#=
  if tt_1033572832_in#<>CLASS_HID goto not_usb_mouse_1033572832_in

  if_desc_1033572832_in, ->InterfaceDescriptor.InterfaceSubClass$ tt_1033572832_in#=
  if tt_1033572832_in#<>SUBCLASS_BOOT goto not_usb_mouse_1033572832_in

  if_desc_1033572832_in, ->InterfaceDescriptor.InterfaceProtocol$ tt_1033572832_in#=
  if tt_1033572832_in#<>PROTOCOL_MOUSE goto not_usb_mouse_1033572832_in

  "1", prints nl 
  1, end

not_usb_mouse_1033572832_in:
  "0", prints nl 
  0, end
  

 end
_869858528_in:
read_bit_field:


  long d_869858528_in#,s_869858528_in#,e_869858528_in#,x_869858528_in#,y_869858528_in#,a_869858528_in#,r_869858528_in#,t_869858528_in#
  e_869858528_in#= pop s_869858528_in#= pop d_869858528_in#=

  "read_bit_field:", prints nl

  1, x_869858528_in#= y_869858528_in#=
  0, r_869858528_in#= t_869858528_in#=
loop1_869858528_in:
  if t_869858528_in#<s_869858528_in# then t_869858528_in#++ x_869858528_in#, 2, * x_869858528_in#= gotoloop1_869858528_in
loop2_869858528_in:
  if t_869858528_in#>e_869858528_in# goto exit2_869858528_in
  x_869858528_in#, d_869858528_in#, and a_869858528_in#=
  if a_869858528_in#<>0 then y_869858528_in#, r_869858528_in#, + r_869858528_in#=
  x_869858528_in#, 2, * x_869858528_in#=
  y_869858528_in#, 2, * y_869858528_in#=
  t_869858528_in#++
  goto loop2_869858528_in
exit2_869858528_in:
  r_869858528_in#, end

 end
