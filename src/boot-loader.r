//  "boot-loader.r" oreore-OS専用ブートローダ  

 const NULL             0
 const STACK_SIZE    8000

 // ファイル関連構造体定数
  const FILE_SIZE         0x10
  const VOL_SIZE          0x400
  const VOL_FP             0x00
  const FILE_FP            0x08
  const VOL_CLOSE0     0x10
  const VOL_READ0      0x20
  const FILE_OPEN       0x08
  const FILE_CLOSE      0x10
  const FILE_DELETE    0x18
  const FILE_READ       0x20
  const FILE_WRITE      0x28
  const FILE_SET_POS   0x30
  const FILE_GET_POS   0x38
  const FILE_GET_INFO  0x40
  const FILE_SET_INFO  0x48
  const FILE_FLUSH       0x50
 
 // 作業変数
 long   __sys_table#
 long   __conin#,__conout#
 long   __cls#,__puts#,__getch#
 long   __locate#,__cursor#
 long   __sys_table#
 long   __conin#,__conout#
 long   __cls#,__puts#,__getch#
 long   __locate#,__cursor#
 long   __boot_service#,__runtime_service#
 long   __set_wdt#,__locate_protocol#
 long   __file_sys#,__vol_open#
 long   __allocate_pages#,__free_pages#
 long   __allocate_pool#,__free_pool#
 long   __create_event#,__set_timer#

 short  __wide_str%(32)
 long   __fbuf_length#
 count __p0#
 long   __p1#,__p2#,__p3#,__p4#,__p5#,__p6#,__p7#,__t#
 long   __paddr#        // palloc関数用のポインタ
 long   read_p#         // data文へのポインタ

 // クリティカルセクションに入ったことを示すフラグ
 long __critical#
 
 // スタックポインタ
 long __stack_p#

 // リターンスタック
 long  __stack_top#


// プログラム開始位置
_start:
/ push rbp/
/ rbp=rsp/
/ 0x10(rbp)=rcx/
/ 0x18(rbp)=rdx/

/ rax=0x18(rbp)/
/ rdi=__sys_table/
/ (rdi)=rax/

/ rsi=0x30(rax)/
/ rdi=__conin/
/ (rdi)=rsi/

/ rcx=0x08(rsi)/
/ rdi=__getch/
/ (rdi)=rcx/

/ rsi=0x40(rax)/
/ rdi=__conout/
/ (rdi)=rsi/

/ rcx=0x30(rsi)/
/ rdi=__cls/
/ (rdi)=rcx/

/ rcx=0x08(rsi)/
/ rdi=__puts/
/ (rdi)=rcx/

/ rcx=0x38(rsi)/
/ rdi=__locate/
/ (rdi)=rcx/

/ rcx=0x40(rsi)/
/ rdi=__cursor/
/ (rdi)=rcx/

/ rsi=0x58(rax)/
/ rdi=__runtime_service/
/ (rdi)=rsi/

/ rsi=0x60(rax)/
/ rdi=__boot_service/
/ (rdi)=rsi/

/ rcx=0x28(rsi)/
/ rdi=__allocate_pages/
/ (rdi)=rcx/

/ rcx=0x30(rsi)/
/ rdi=__free_pages/
/ (rdi)=rcx/

/ rcx=0x40(rsi)/
/ rdi=__allocate_pool/
/ (rdi)=rcx/

/ rcx=0x48(rsi)/
/ rdi=__free_pool/
/ (rdi)=rcx/

/ rcx=0x50(rsi)/
/ rdi=__create_event/
/ (rdi)=rcx/

/ rcx=0x58(rsi)/
/ rdi=__set_timer/
/ (rdi)=rcx/

/ rcx=0x100(rsi)/
/ rdi=__set_wdt/
/ (rdi)=rcx/

/ rcx=0x140(rsi)/
/ rdi=__locate_protocol/
/ (rdi)=rcx/
/ rax=rcx/
/ rcx=__file_sys_guid/
/ rdx=0/
/ r8=__file_sys/
/ call (rax)/

/ rdi=__file_sys/
/ rsi=(rdi)/
/ rcx=0x08(rsi)/
/ rdi=__vol_open/
/ (rdi)=rcx/

/ rcx=0/
/ rdx=0/
/ r8=0/
/ r9=0/
/ rax=__set_wdt/
/ rax=(rax)/
/ call (rax)/

// スタックポインタを初期化
/ rcx=2/
/ rdx=STACK_SIZE/
/ r8=__stack_top/
/ rax=__allocate_pool/
/ rax=(rax)/
/ call (rax)/
/ rax&rax/
/ jnz __end_loop/        // 初期化に失敗したときは無限ループ
  __stack_top#, STACK_SIZE-8, + __stack_p#=

// ボリュームを開く
  vol_open __p1#=
  if __p1#<>0 goto __end_loop
  "oreore-os.EFI", load 
  jmp@

// プログラムをロードする
load:
  const PROG_HEADER_SIZE 1024
  const MAGIC1 0x00905a4d
  const PMAGIC1 0
  const MAGIC2 0x00004550
  const PMAGIC2 32
  const PROG_ADDR 42
  const IMAGE_BASE 22
  const PROG_SIZE   52
  long __load_file#,__load_header#,__load_addr#,__load_size#,__pp#
  char __load_fp$(FILE_SIZE)

  __load_fp, ropen __pp#=
  if __pp#<>0 goto __end_loop
  PROG_HEADER_SIZE, malloc __load_header#=
  if __load_header#=NULL goto __load_error2
  PROG_HEADER_SIZE, __load_header#, __load_fp, _read __pp#=
  if __pp#<>PROG_HEADER_SIZE goto __load_error1
  if (__load_header)!(PMAGIC1)<>MAGIC1 goto __load_error1
  if (__load_header)!(PMAGIC2)<>MAGIC2 goto __load_error1
  (__load_header)!(PROG_ADDR), (__load_header)#(IMAGE_BASE), + __load_addr#=
  (__load_header)!(PROG_SIZE), __load_size#=
  __load_header#, free
  __load_size#, __load_addr#, __load_fp, _read __pp#=
  __load_fp, rclose
  __load_size#, __load_addr#, end

// エラー処理1
__load_error1:
  __load_header#, free

// エラー処理2
__load_error2:
  __load_fp, rclose
  goto __end_loop


// ファイルから読み込む( size, buf, fp, _read ),戻り値は読み込んだバイト数 
_read:
/ rcx=FILE_FP(rdi)/
/ rax=rdx/
/ rdx=__fbuf_length/
/ (rdx)=rax/
/ r8=rsi/
/ rax=FILE_READ(rcx)/
/ call (rax)/
/ rax=__fbuf_length/
/ rdi=(rax)/
  end


// 読み出しモードでファイルを開く
ropen:
/ rdx=1/


// ファイルを開く (mode, fname, hfile, open)
open:
  long __fp#,__mode#,__name#,__vol_fp#,__file_fp#,__file_open#
/ rax=__fp/
/ (rax)=rdi/
/ rax=__mode/
/ (rax)=rdx/
/ rdi=rsi/
  _wide
/ rax=__name/
/ rdi=__wide_str/
/ (rax)=rdi/

/ rdx=__fp/
/ rdx=(rdx)/
/ rax=FILE_FP/
/ rdx+=rax/
/ rax=__file_fp/
/ (rax)=rdx/

/ rcx=0x100/
/ rsp-=rcx/
/ rcx=__vol_fp/
/ rcx=(rcx)/
/ rcx=FILE_OPEN(rcx)/
/ rax=__file_open/
/ (rax)=rcx/
/ rcx=__vol_fp/
/ rcx=(rcx)/
/ rdx=__file_fp/
/ rdx=(rdx)/
/ rdi=__name/
/ r8=(rdi)/
/ rdi=__mode/
/ r9=(rdi)/
/ rdi=0/
/ 0x20(rsp)=rdi/
/ rax=__file_open/
/ rax=(rax)/
/ call (rax)/
/ rcx=0x100/
/ rsp+=rcx/
/ rax&rax/
/ jnz open_error/
  0,  end 

// open失敗
open_error:
 -1,  end


// ワイド文字列に変換する
_wide:
  __p1#=
  0, __p2#= __wide_str%(0)=
__wide1:
  (__p1)$(__p2#), __t#= __wide_str%(__p2#)= 
  __p2#, 1, + __p2#=
  if __t#<>0 goto __wide1
  __wide_str, return


// ファイルを閉じる
rclose:
  long __t2#
/ rax=__t2/
/ (rax)=rdi/
/ rcx=FILE_FP(rdi)/
/ rax=FILE_CLOSE(rcx)/
/ call (rax)/
  0,  end 
// ボリュームを開く
vol_open:
 char __vfp$(FILE_SIZE)
/ rdi=__vfp/
/ rdx=__fp/
/ (rdx)=rdi/
/ rdx=(rdx)/
/ rax=VOL_FP/
/ rdx+=rax/
/ rax=__vol_fp/
/ (rax)=rdx/

/ rdi=__file_sys/
/ rcx=(rdi)/
/ rdx=__vol_fp/
/ rax=__vol_open/
/ rax=(rax)/
/ call (rax)/
/ rax&rax/
/ jnz vol_open_error/
  0, end 

// エラー終了
vol_open_error:
   -1, end 
 
 
// メモリを確保する
// 書式: size, malloc
// 戻り値:成功したときはアドレス,失敗したときはNULL
malloc:
  long __maddr#
/ rcx=2/
/ rdx=rdi/
/ r8=__maddr/
/ rax=__allocate_pool/
/ rax=(rax)/
/ call (rax)/
/ rdi=NULL/
/ rax&rax/
/ jnz __malloc1/
/ rdi=__maddr/
/ rdi=(rdi)/
__malloc1:
  end


// メモリを開放する
// 書式: address, free
// 戻り値:成功したときは0,失敗したときは1
free:
/ rcx=rdi/
/ rax=__free_pool/
/ rax=(rax)/
/ call (rax)/
/ rdi=rax/
  end


// (無限ループ)
__end_loop:
  goto __end_loop


// ファイルシステムプロトコルのガイド
 .data
__file_sys_guid:
 data  0x11d26459964e5b22
 data  0x3b7269c9a000398e


// ここからアプリケーション領域
  char __prog_start$(4000000)
