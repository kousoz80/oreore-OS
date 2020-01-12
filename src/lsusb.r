// "lsusb.r"
// 接続されているUSB機器の一覧を表示するプログラム

 const EFI_LOCATE_BY_PROTOCOL     2
 
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
   char  DescriptorType$
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


main:
  count ii#
  long ss#,tt#,handle_count#,handle_buffer#,usb_io#
  long vendor#,product#,serial_number#
  char device_descriptor$(DeviceDescriptor.SIZE) 

  __boot_service#, ->BootService.locate_handle_buffer# ss#=
/ rcx=0x100/
/ rsp-=rcx/
/ rcx=EFI_LOCATE_BY_PROTOCOL/
/ rdx=usb_io_guid/
/ r8=NULL/
/ r9=handle_count/
/ rdi=handle_buffer/
/ 0x20(rsp)=rdi/
/ rax=ss/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rdi=rax/
  tt#=
  if tt#<>0 then "ERROR : Get USBIO count fail.", prints nl end
  if handle_count#=0 then  "no devices.", prints nl end
  "USB Devices=", prints handle_count#, printd nl
  handle_count#--

  for ii#=0 to handle_count#
  
  nl  "[Device", prints ii#, printd "]", prints nl 

    __boot_service#, ->BootService.handle_protocol# ss#=
    (handle_buffer)#(ii#), 
/   rcx=rdi/
/   rdx=usb_io_guid/
/   r8=usb_io/
/   rax=ss/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    tt#=
    if tt#<>0 then handle_buffer, free "ERROR : Open USBIO fail.", prints nl end

    usb_io#, ->UsbIO.GetDeviceDescriptor# ss#=
/   rcx=usb_io/
/   rcx=(rcx)/
/   rdx=device_descriptor/
/   rax=ss/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    tt#=
    if tt#<>0 then handle_buffer, free "ERROR : Usb Get Device Descriptor fail.", prints nl end

    "VendorID=0x", prints
    device_descriptor, ->DeviceDescriptor.VendorID% hex prints  "; ", prints
    usb_io#, ->UsbIO.GetStringDescriptor# ss#=
    device_descriptor, ->DeviceDescriptor.Manufacture_str$ tt#=
/   rcx=usb_io/
/   rcx=(rcx)/
/   rdx=0x0409/  // english
/   rax=tt/
/   r8=(rax)/
/   r9=vendor/
/   rax=ss/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    tt#=
    if tt#=0 then vendor#, _nallow prints vendor#, free
    nl

    "Product: ID=0x", prints
    device_descriptor, ->DeviceDescriptor.ProductID% hex prints "; ", prints
    usb_io#, ->UsbIO.GetStringDescriptor# ss#=
    device_descriptor, ->DeviceDescriptor.Product_str$ tt#=
/   rcx=usb_io/
/   rcx=(rcx)/
/   rdx=0x0409/  // english
/   rax=tt/
/   r8=(rax)/
/   r9=product/
/   rax=ss/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    tt#=
    if tt#=0 then product#, _nallow prints product#, free
    nl

    "Serial Number: ", prints
    usb_io#, ->UsbIO.GetStringDescriptor# ss#=
    device_descriptor, ->DeviceDescriptor.SerialNumber_str$ tt#=
/   rcx=usb_io/
/   rcx=(rcx)/
/   rdx=0x0409/  // english
/   rax=tt/
/   r8=(rax)/
/   r9=serial_number/
/   rax=ss/
/   rax=(rax)/
/   call (rax)/
/   rdi=rax/
    tt#=
    if tt#=0 then serial_number#, _nallow prints serial_number#, free
    nl

  next ii#
  handle_buffer, free 
  end

usb_io_guid:
  data 0x44cf0cd22b2f68d6
  data 0x755b1b0ba2bb8b8e
