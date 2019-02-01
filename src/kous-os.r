//  "kous-os.r" Kous-OS ver 0.03  for oregengo-R (x64) UEFIアプリケーション  
// (マルチタスク対応版)

 const TIMER_INTERVAL 1000000 // 割り込み周期(0.1us単位)
 const EOF         -1         /* ファイルの終わりをあらわす文字コード */
 const ERROR    -1          /* エラーが発生したことをあらわす */
 const NULL       0           /* ヌルポインタ */
 const SPACE     32          /* 空白文字 */
 const CR          13          /* キャリッジリターンコード */
 const LF           10          /* ラインフィードコード */
 const PLUS       43          /* プラス記号の文字コード */
 const MINUS    45          /* マイナス記号の文字コード */
 const MULT      42          /* 乗算記号の文字コード */
 const DIV         47          /* 除算記号の文字コード */
 const ESC        27          /* ESCキーの文字コード */
 const CONOUT 1
 const CONIN    2
 const NaN        0x8000000000000000  /* ゼロ除算が発生したことをあらわす */
 const STACK_SIZE 12000
 
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
 
// TCBの構造 （128バイト／タスク）
  const TCB_SIZE    128
  const STATUS       0x00  // 現在のタスクの状態 （ 1:RUN / 0:STOP ) */
  const CMD_LINE  0x08  // コマンドライン
  const START         0x10  // プログラムの先頭アドレス
  const SIZE           0x18  // プログラムサイズ
  const STACK        0x20  // スタックの先頭アドレス
  const INDEV        0x28  // タスクの入力デバイス
  const OUTDEV     0x30  // タスクの出力デバイス
  const MESSAGE   0x38  // メッセージ
  const CLIENT       0x40  // メッセージの発信元(タスク)
  const RCX            0x48  // rcxレジスタ
  const RDX           0x50  // rdxレジスタ
  const RDI            0x58  // rdiレジスタ
  const RSI             0x60  // rsiレジスタ
  const NEXT_TCB  0x68  // 次のTCB アドレス */
  const PREV_TCB  0x70  // 前のTCB アドレス */
  const SP              0x78  // スタックポインタ

// タスクの状態
  const RUN       1 // RUN状態
  const STOP      0 // STOP状態

 // 作業変数
 char   __fbuf$(1024)
 char   __sign$(1),__nbuf$(64)
 short  __wide_str%(1024)
 char   __nallow_str$(1024)
 long   __strbuf#,__inputkey#
 long   __sys_table#
 long   __conin#,__conout#
 long   __cls#,__puts#,__getch#
 long   __locate#,__cursor#
 long   __boot_service#
 long   __set_wdt#,__locate_protocol#
 long   __file_sys#,__vol_open#
 long   __allocate_pages#,__free_pages#
 long   __allocate_pool#,__free_pool#
 long   __create_event#,__set_timer#
 long   __fbuf_length#
 count __p0#
 long   __p1#,__p2#,__p3#,__p4#,__p5#,__p6#,__p7#
 long   __t#,read_p# // data文へのポインタ

 // クリティカルセクションに入ったことを示すフラグ
 long __critical#
 
 // スタックポインタ
 long __stack_p#

 // 割り込み許可フラグ
 long __int_enable#
 
 // 割り込み処理中フラグ
 long __int_busy#
 
 // システムコールのネスト数
 long __sys_nest#
  
 // イベントタスク
 long __event_task#

 // 現在の時刻(タイマー割り込みによりインクリメントされる)
 long time#
  
 // システムコールベクタ
 long SYS_CALL#
 
 // システムコール拡張ベクタ
 long SYS_EXT#
 
 // タスクの数
 long tasks#

 // 現在のタスク
 long present_task#
 
 // リターンスタック
 long  __stack_top#

 // デフォルトのTCB
 char tcb0$(TCB_SIZE)


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

 nop, SYS_EXT#= sys_ext0#= // システムコール拡張ベクタの初期化

// スタックポインタを初期化
/ rcx=2/
/ rdx=STACK_SIZE/
/ r8=__stack_top/
/ rax=__allocate_pool/
/ rax=(rax)/
/ call (rax)/
/ rax&rax/
/ jnz __end_loop/
  __stack_top#, STACK_SIZE, + __stack_p#=

  // 割り込み用変数の初期化
  0, __critical#= __int_enable#=  __int_busy#= time#=

// タイマー割り込みを設定
/ rax=0x40/
/ rsp-=rax/
/ rcx=0x80000200/  // EVT_TIMER | EVT_NOTIFY_SIGNAL
/ rdx=8/                    // TPL_CALLBACK
/ r8=__int_entry/
/ r9=0/                     // NULL
/ rax=__event_task/
/ 0x20(rsp)=rax/
/ rax=__create_event/
/ rax=(rax)/
/ call (rax)/
/ rcx=__event_task/
/ rcx=(rcx)/
/ rdx=1/             // TimerPeriodic
/ r8=TIMER_INTERVAL/  // 割り込み周期
/ rax=__set_timer/
/ rax=(rax)/
/ call (rax)/
/ rax=0x40/
/ rsp+=rax/

// ボリュームを開く
  vol_open __p1#=
  if __p1#<>0 goto __end_loop

/ rax=SYS_CALL/        // システムコールベクタの設定
/ rcx=sys_call/
/ (rax)=rcx/
/ rax=SYS_EXT/        // システムコール拡張ベクタの設定
/ rcx=nop/
/ (rax)=rcx/
/ rax=__sys_nest/
/ rcx=0/
/ (rax)=rcx/               // システムコールのネストの初期化
/ rax=tasks/
/ rcx=1/
/ (rax)=rcx/
/ rax=tcb0/              // tcb0の初期化
/ rcx=present_task/
/ (rcx)=rax/
/ rcx=RUN/
/ STATUS(rax)=rcx/
/ NEXT_TCB(rax)=rax/
/ PREV_TCB(rax)=rax/
/ rcx=__stack_p/
/ rcx=(rcx)/
/ SP(rax)=rcx/
/ rax=main/
/ (rcx)=rax /              // プログラム開始番地はmain 

  1, __int_enable#=  // 割り込みを許可
  console_init            // コンソールデバイスドライバを初期化する
  goto switch_task     // メインタスクに切り替える
 

// エラートラップ(無限ループ)
__end_loop:
  goto __end_loop

// ファイルシステムプロトコルのガイド
 .data
__file_sys_guid:
 data  0x11d26459964e5b22
 data  0x3b7269c9a000398e


// デバッグ用文字列表示
dprint:
 long __sss#
 __sss#=
 __dprint1:
  if (__sss)$=NULL then CR, putch LF, putch end
  (__sss)$, putch
  __sss#++
 goto __dprint1


// システムコール：r13レジスタに機能コードを入れてコールする
sys_call:
/ rax=__sys_nest/     // システムコールのネストのレベルを+1する
/ r15=(rax)/
/ r15++/
/ (rax)=r15/

  @SYS_EXT  // システムコール拡張ベクタにジャンプ

/ rax=__stack_p/
/ r15=(rax)/
/ r15--/
/ r15--/
/ r15--/
/ r15--/
/ r15--/
/ r15--/
/ r15--/
/ r15--/
/ (rax)=r15/
/ rax=r15/
/ r15=sys_call1/
/ (rax)=r15/
/ rax=r13/
/ rax+=rax/
/ rax+=rax/
/ rax+=rax/
/ r15=jmp_tbl/      // jmp_tbl(r13)にジャンプする
/ rax+=r15/
/ rax=(rax)/
/ jmp (rax)/
sys_call1:
/ rax=__sys_nest/    // システムコールのネストのレベルを-1する
/ r15=(rax)/
/ r15--/
/ (rax)=r15/
/ r15&r15/
/ jnz sys_call2/   // （ネストされているときはタスクを切り替えない 

// タスクを切り替える
switch_task:
/ rax=present_task/     // TCBアドレスをロード
/ rax=(rax)/
/ RCX(rax)=rcx/     // レジスタを退避する
/ RDX(rax)=rdx/
/ RDI(rax)=rdi/
/ RSI(rax)=rsi/
/ rcx=__stack_p/
/ rcx=(rcx)/
/ SP(rax)=rcx/
switch_loop:
/ rax=NEXT_TCB(rax)/
/ r15=STATUS(rax)/
/ r15&r15/          // タスクの状態がRUNならタスクを切り替える
/ jz switch_loop/ // RUN状態のタスクが1つもないとハングするので注意
/ rcx=present_task/
/ (rcx)=rax/
/ rcx=RCX(rax)/         // レジスタを復帰する
/ rdx=RDX(rax)/
/ rdi=RDI(rax)/
/ rsi=RSI(rax)/
/ r15=SP(rax)/
/ rax=__stack_p/
/ (rax)=r15/
sys_call2:
/ rax=__stack_p/
/ r15=(rax)/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ (rax)=r15/
/ rax=r15/
/ rax=-8(rax)/
/ jmp (rax)/


// タイマー割り込みエントリーポイント
__int_entry:
/ push rax/
/ push rbx/
/ push rcx/
/ push rdx/
/ push rdi/
/ push rsi/
/ push r8/
/ push r9/
/ push r10/
/ push r11/
/ push r12/
/ push r13/
/ push r14/
/ push r15/
/ push rbp/

  time#++ // 時刻をインクリメント

  if __critical<>0     goto __int_exit
  if __int_enable=0  goto __int_exit
  if __int_busy<>0  goto __int_exit
  if __sys_nest<>0  goto __int_exit
    1, __int_busy#=
    @SYS_CALL(SYNC)  // タスクを切り替える
    0, __int_busy#=
  __int_exit:

/ pop rbp/
/ pop r15/
/ pop r14/
/ pop r13/
/ pop r12/
/ pop r11/
/ pop r10/
/ pop r9/
/ pop r8/
/ pop rsi/
/ pop rdi/
/ pop rdx/
/ pop rcx/
/ pop rbx/
/ pop rax/
/ ret/


// ジャンプテーブル
 .data
jmp_tbl:
 const SYNC 0
 data sync
 const CREATE_TASK 1
 data create_task
 const EXIT_TASK 2
 data exit_task
 const DELETE_TASK 3
 data delete_task
 const RUN_TASK 4
 data run_task
 const GO_TASK 5
 data go_task
 const WAIT_TASK 6
 data wait_task
 const STOP_TASK 7
 data stop_task
 const SEND_MESSAGE 8
 data send_message
 const GET_MESSAGE 9
 data get_message
 const EXIT_PROCESS 10
 data exit_process
 const _WIDE 11
 data _wide
 const _NALLOW 12
 data _nallow
 const GETC 13
 data getc
 const _READ 14
 data _read
 const PUTC 15
 data putc
 const _WRITE 16
 data _write
 const WOPEN 17
 data wopen
 const ROPEN 18
 data ropen
 const OPEN 19
 data open
 const RCLOSE 20
 data rclose
 const WCLOSE 21
 data wclose
 const DELETE 22
 data delete
 const VOL_OPEN 23
 data vol_open
 const VOL_CLOSE 24
 data vol_close
 const VOL_READ 25
 data vol_read
 const FPRINTS 26
 data fprints
 const FPRINTD 27
 data fprintd
 const FNL 28
 data fnl
 const FINPUTS 29
 data finputs
 const STRCMP 30
 data strcmp
 const STRCPY 31
 data strcpy
 const STRNCPY 32
 data strncpy
 const STRCAT 33
 data strcat
 const STRSTR 34
 data strstr
 const STRLEN 35
 data strlen
 const ATOI 36
 data atoi
 const ITOA 37
 data itoa
 const BIN 38
 data bin
 const OCT 39
 data oct
 const DEC 40
 data dec
 const HEX 41
 data hex
 const ABS 42
 data abs
 const PALLOC 43
 data palloc
 const PFREE 44
 data pfree
 const MALLOC 45
 data malloc
 const FREE 46
 data free
 const LOAD 47
 data load 


// なにもしない（タスク切り替え・システム拡張用）
nop:
sync:
  end


// タスクを生成する
// 入力パラメータ | rdx：新しいタスク,  rsi:プログラム先頭アドレス,rdi：スタックポインタ値
// (以後，タスクと呼ぶときはそのタスクのTCBアドレスを指すものとする）
create_task:
/ (rdi)=rsi/                   // スタックポインタの示すアドレスにプログラム開始アドレスをセット
/ rsi=STOP/
/ rax=present_task/
/ rax=(rax)/                  // rax:現在のタスク
/ rcx=PREV_TCB(rax)/  // rcx:前のタスク
/ STATUS(rdx)=rsi/       // 新しいタスクはSTOP状態にする
/ NEXT_TCB(rdx)=rax/  // 新しいタスクのNEXT_TCBエリアに現在のタスクをセット
/ PREV_TCB(rdx)=rcx/  // 新しいタスクのPREV_TCBエリアに前のタスクをセット
/ SP(rdx)=rdi/              // 新しいタスクのスタックポインタ値をセット
/ NEXT_TCB(rcx)=rdx/  // 前のタスクのNEXT_TCBエリアに新しいタスクをセット
/ PREV_TCB(rax)=rdx/  // 現在のタスクのPREV_TCBエリアを新しいタスクにセット
/ rax=tasks/                // tasksを＋１する */
/ rcx=(rax)/
/ rcx++/
/ (rax)=rcx/
  end


// 現在実行中のタスクを終了する
exit_task:
/ rax=present_task/
/ rdi=(rax)/


// タスク削除
// 入力パラメータ｜rdi:削除するタスク
delete_task:
  long __d0#,__dn#,__dp#
  __d0#=
  if __d0#=tcb0 then end
  (__d0)#(NEXT_TCB/8), __dn#=
  (__d0)#(PREV_TCB/8), __dp#=
  __dn#, (__dp)#(NEXT_TCB/8)=
  __dp#, (__dn)#(PREV_TCB/8)=
  tasks#--
  __dn#, present_task#= // 削除したタスクの次のタスクから実行する
  end


// タスクをRUN状態にする
// 入力パラメータ|rdi:走らせるタスク
run_task:
/ rax=RUN/
/ STATUS(rdi)=rax/
  end


// タスクにメッセージを送って実行を移す
// 入力パラメータ|rsi:メッセージ,rdi:呼び出すタスク
go_task:
 send_message
 run_task


// 現在実行中のタスクを一時停止する
wait_task:
/ rdi=present_task/
/ rdi=(rdi)/


// タスクをSTOP状態にする
// 入力パラメータ｜rdi:停止させるタスク
stop_task:
/ rax=STOP/
/ STATUS(rdi)=rax/
  end


// メッセージを指定タスクに送る
// 入力パラメータ|rsi:メッセージ,rdi:指定タスク
send_message:
/ rax=present_task/
/ rax=(rax)/
/ MESSAGE(rdi)=rsi/
/ CLIENT(rdi)=rax/
  end


// メッセージ(とメッセージの発信元)を得る
get_message:
/ rax=present_task/
/ rax=(rax)/
/ rdi=MESSAGE(rax)/
/ rsi=CLIENT(rax)/
  end


// プロセスを終了して使用メモリを開放する
exit_process:
  long __k1#,__k2#,__k3#,__k4#
  if present_task#=tcb0 then end
   present_task#,    __k1#=
  (__k1)#(START/8),  __k2#=
  (__k1)#(SIZE/8),    __k3#=
  (__k1)#(STACK/8), __k4#=
  __k1#, @SYS_CALL(STOP_TASK)
  __k1#, @SYS_CALL(DELETE_TASK)
  __k2#, __k3#, @SYS_CALL(PFREE)
  __k4#, @SYS_CALL(FREE)

  0, __sys_nest#=  // システムコール状態を解除する

// タスクをリロードする
/ rax=present_task/
/ rax=(rax)/
/ rcx=RCX(rax)/         // レジスタを復帰する
/ rdx=RDX(rax)/
/ rdi=RDI(rax)/
/ rsi=RSI(rax)/
/ r15=SP(rax)/
/ rax=__stack_p/
/ (rax)=r15/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ r15++/
/ (rax)=r15/
/ rax=r15/
/ rax=-8(rax)/
/ jmp (rax)/
  

// ワイド文字列に変換する
_wide:
  __p1#=
  0, __p2#= __wide_str%(0)=
__wide1:
  (__p1)$(__p2#), __t#= __wide_str%(__p2#)= 
  __p2#, 1, + __p2#=
  if __t#<>0 goto __wide1
  __wide_str, return


// ワイド文字列を通常文字列に変換する
_nallow:
  __p1#=
  0, __p2#= __nallow_str$(0)=
__nallow1:
  (__p1)%(__p2#),  __t#= __nallow_str$(__p2#)= 
  __p2#, 1, + __p2#=
  if __t#<>0 goto __nallow1
  __nallow_str, return


// ファイルから一文字読み込む( fp, getc ch$= )
getc:
  __t#=
  0, __fbuf$=
  1, __fbuf, __t#, _read __t#=
  if __t#=0 then EOF, return
  __fbuf$, return


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


// ファイルへ一文字書き込む( ch, fp, putc )
putc:
  __t#= pop __fbuf$=
  0, __fbuf$(1)=
  1, __fbuf, __t#, _write
  return


// ファイルへ書き込む( size, buf, fp, _write ) ,戻り値は書き込んだバイト数
_write:

/ rcx=FILE_FP(rdi)/
/ rax=rdx/
/ rdx=__fbuf_length/
/ (rdx)=rax/
/ r8=rsi/
/ rax=FILE_WRITE(rcx)/
/ call (rax)/
/ rax=__fbuf_length/
/ rdi=(rax)/
 end


// 書き込みモードでファイルを開く(ファイルの内容は消去される)
wopen:
 long __wfname#,__wfp#
 __wfp#= pop __wfname#=
 __wfname#, delete
 __wfname#, __wfp#,


// 書き込みモードでファイルを開く(ファイルの内容は消去されない)
_wopen:
/ rdx=0x8000000000000003/
/ jmp open/


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


// ファイルを閉じる
rclose:
  long __t2#
/ rax=__t2/
/ (rax)=rdi/
/ rcx=FILE_FP(rdi)/
/ rax=FILE_CLOSE(rcx)/
/ call (rax)/
  0,  end 

 
// ファイルを閉じる
wclose:
  long __t3#
/ rax=__t3/
/ (rax)=rdi/
/ rcx=FILE_FP(rdi)/
/ rax=FILE_FLUSH(rcx)/
/ call (rax)/
/ rax=__t3/
/ rdi=(rax)/
/ rcx=FILE_FP(rdi)/
/ rax=FILE_CLOSE(rcx)/
/ call (rax)/
  0,  end 

 
// ファイルを消去する("ファイル名", delete )
delete:
  char __dfp$(FILE_SIZE)
  __dfp, _wopen
  __dfp,
/ rcx=FILE_FP(rdi)/
/ rax=FILE_DELETE(rcx)/
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
 
 
// ボリュームを閉じる
vol_close:
/ rcx=__vol_fp/
/ rcx=(rcx)/
/ rax=VOL_CLOSE0(rcx)/
/ call (rax)/
  end

 
// ボリューム情報を読み込む ( buf, vol_read : 戻り値がゼロなら終わり)
vol_read:
/ rsi=__p1/
/ (rsi)=rdi/
/ rcx=__vol_fp/
/ rcx=(rcx)/
/ rdx=__fbuf_length/
/ rax=VOL_SIZE/
/ (rdx)=rax/
/ rsi=__p1/
/ r8=(rsi)/
/ rax=VOL_READ0(rcx)/
/ call (rax)/
/ rdi=__fbuf_length/
/ rdi=(rdi)/
  end

 
// 文字列をファイルへ出力する
fprints:
 __p7#= swap __p6#=
 __fprints1:
  if (__p6)$=NULL then NULL, end
  (__p6)$, __p7#, @SYS_CALL(PUTC) __p5#=
  if __p5#=ERROR then ERROR, end
  __p6#, 1, + __p6#=
 goto __fprints1


// 数値をファイルに出力する 
fprintd:
 __p7#= swap dec __p7#, fprints
 end


// 改行コードをファイルに出力する
fnl:
 __p7#=
 LF, __p7#, putc
 end


// ファイルから文字列を入力する
finputs:
 __p7#= swap __p6#=
 __finputs1:
  __p7#, @SYS_CALL(GETC) __p5#=
  if __p5#=CR   goto __finputs2
  if __p5#=LF    goto __finputs2
  if __p5#=EOF goto __finputs2
  __p5#, (__p6)$=
  __p6#++
 goto __finputs1
 __finputs2:
 NULL,  (__p6)$=
 __p5#, end


// 文字列を比較する
strcmp:
 __p2#= swap __p1#=
 __strcmp1:
  if (__p1)$<>(__p2)$ then 1, end
  if (__p1)$=NULL then 0, end
  __p1#, 1, + __p1#=
  __p2#, 1, + __p2#=
 goto __strcmp1


// 文字列をコピーする
strcpy:
 __p2#= pop __p1#=
 __strcpy1:
  (__p1)$, (__p2)$= __p3#=
  __p1#++
  __p2#++
 if __p3#<>NULL goto __strcpy1
 end


// 文字数制限付きで文字列をコピーする
strncpy:
 __p3#= pop __p2#= pop __p1#=
 __strncpy1:
  if __p3#<=0 then NULL, (__p2)$= end
  (__p1)$, (__p2)$= __p4#=
  __p1#++
  __p2#++
  __p3#--
 if __p4#<>NULL goto __strncpy1
 end


// 文字列を連結する
strcat:
 __p2#= swap __p1#=
__strcat1:
 if (__p2)$<>NULL then __p2#++ goto__strcat1
__strcat2:
 (__p1)$, (__p2)$= __p3#=
 __p1#++
 __p2#++
 if __p3#<>NULL goto __strcat2
 end


// 文字列を検索する
strstr:
 __p2#= swap __p1#=
__strstr1:
 if (__p1)$=NULL then NULL, end
 __p1#, __p3#=
 __p2#, __p4#=
__strstr2:
 if (__p3)$<>(__p4)$ then __p1#++ goto__strstr1
 __p3#++
 __p4#++
 if (__p4)$<>NULL goto __strstr2
 __p1#, end


// 文字列の長さを得る
strlen:
 __p1!=
 0, __p2#=
__strlen1:
 if (__p1)$=NULL then __p2#, end
 __p1#++
 __p2#++
 goto __strlen1


// 文字列を数値に変換する(基数指定あり)
atoi:
 __p2#= swap __p1#=
 1, __p3#=   0, __p4#=
 if (__p1)$=PLUS   then __p1#++
 if (__p1)$=MINUS then __p1#++ -1, __p3#=
__atoi1:
 0, __p5#=
__atoi2:
 if __p5#>=__p2# then __p3#, __p4#, * end
 if "0123456789abcdef"$(__p5#)<>(__p1)$ then __p5#++ goto__atoi2
 __p4#, __p2#, umul __p5#, + __p4#=
 __p1#++
 goto __atoi1


// 数値を文字列に変換する(基数指定あり)
itoa:
  __p2#= swap __p1#=
  if __p1#=0 then "0", __nbuf, strcpy __nbuf, end
  __nbuf, __p3#=
  1,      __p4#=
  __p1#,  __p5#=
__itoa1:
 if __p5#<__p2# goto __itoa2
  __p5#, __p2#, udiv __p5#=
  __p4#, __p2#, umul __p4#=
  goto __itoa1
__itoa2:
  __p1#, __p4#, udiv __p5#=
  __p4#, __p5#, umul __p1#, swap - __p1#=
  "0123456789abcdef"$(__p5#),  (__p3)$=
  __p3#++
  __p4#, __p2#, udiv __p4#=
  if __p4#<>0 goto __itoa2
 NULL, (__p3)$=
 __nbuf, end


// 数値を2進文字列に変換する 
bin:
 2, itoa end


// 数値を8進文字列に変換する
oct:
 8, itoa end


// 数値を10進文字列に変換する
dec:
 __p1#=
 if __p1#>=0 then __p1#, 10, itoa end
 __p1#,  neg 10, itoa
 MINUS,  __sign$=
 __sign, end


// 数値を16進文字列に変換する
hex:
 16, itoa end


// 数値の絶対値を求める
abs:
  __p1#=
  if __p1#>=0 then __p1#, end
  0, __p1#, - end


// アドレスを指定してメモリページを確保する(1ページは4kB)
// 書式: address, pages, palloc
// 戻り値:成功したときはアドレス,失敗したときはNULL
palloc:
  long __paddr#
/ rax=__paddr/
/ (rax)=rsi/
/ rcx=2/
/ rdx=2/
/ r8=rdi/
/ r9=__paddr/
/ rax=__allocate_pages/
/ rax=(rax)/
/ call (rax)/
/ rdi=NULL/
/ rax&rax/
/ jnz __palloc1/
/ rdi=__paddr/
/ rdi=(rdi)/
__palloc1:
  end


// メモリページを開放する
// 書式: address, size, pfree (sizeはバイト単位)
// 戻り値: 成功したときは0,失敗したときは1
pfree:
/ rcx=rsi/
/ rdx=rdi/
/ rax=__free_pages/
/ rax=(rax)/
/ call (rax)/
/ rdi=rax/
  end


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

  __load_fp, @SYS_CALL(ROPEN) __pp#=
  if __pp#<>0 then ERROR, end
  PROG_HEADER_SIZE, @SYS_CALL(MALLOC) __load_header#=
  if __load_header#=NULL goto __load_error2
  PROG_HEADER_SIZE, __load_header#, __load_fp, @SYS_CALL(_READ) __pp#=
  if __pp#<>PROG_HEADER_SIZE goto __load_error1
  if (__load_header)!(PMAGIC1)<>MAGIC1 goto __load_error1
  if (__load_header)!(PMAGIC2)<>MAGIC2 goto __load_error1
  (__load_header)!(PROG_ADDR), (__load_header)#(IMAGE_BASE), + __load_addr#=
  (__load_header)!(PROG_SIZE), __load_size#=
  __load_header#, @SYS_CALL(FREE)
  __load_size#, 4096, / __pp#=
  __load_addr#, __pp#, @SYS_CALL(PALLOC) __pp#=
  if __pp#=NULL goto __load_error2
  __load_size#, __load_addr#, __load_fp, @SYS_CALL(_READ) __pp#=
  __load_fp, @SYS_CALL(RCLOSE)
  __load_size#, __load_addr#, end

// エラー処理1
__load_error1:
  __load_header#, @SYS_CALL(FREE)

// エラー処理2
__load_error2:
  __load_fp, @SYS_CALL(RCLOSE)
  ERROR, end


//  以下はコンソールデバイスドライバ

// ドライバ初期化
console_init:
  const DRIVER_STACK_SIZE 8192
  char keyin_task$(TCB_SIZE),inline_task$(TCB_SIZE)
  long sys_ext0#
  long _xx#,_yy#,_zz#,_uu#,_vv#

  // キー入力タスクを生成する
  DRIVER_STACK_SIZE, @SYS_CALL(MALLOC) keyin_stack#= DRIVER_STACK_SIZE-8, + keyin_sp#=
  keyin_task, keyin, keyin_sp#, @SYS_CALL(CREATE_TASK)
  "*keyin", keyin_task+CMD_LINE, strcpy

  // １行入力タスクを生成する
  DRIVER_STACK_SIZE, @SYS_CALL(MALLOC) inline_stack#= DRIVER_STACK_SIZE-8, + inline_sp#=
  inline_task, inline, inline_sp#, @SYS_CALL(CREATE_TASK)
  "*inline", inline_task+CMD_LINE, strcpy

  SYS_EXT#, sys_ext0#=
  console_handler, SYS_EXT#=
  end

// ドライバ削除
console_remove:
  sys_ext0#, SYS_EXT#=
  inline_task, @SYS_CALL(DELETE_TASK)
  keyin_task,  @SYS_CALL(DELETE_TASK)
  inline_stack#, @SYS_CALL(FREE)
  keyin_stack#,  @SYS_CALL(FREE)
  end

// キー入力タスク
keyin:
  long  keyin_stack#,keyin_sp#
  long  k_cc#,k_client#  // キー入力を依頼してきたタスク

  @SYS_CALL(GET_MESSAGE) pop k_client#=
  loop_keyin:
    @SYS_CALL(SYNC)  // 他のタスクとの同期をとる
    getch k_cc#=
  if k_cc#=NULL   goto loop_keyin
  k_cc#, (k_client)#(RDI/8)=          // 戻り値をセットする
  k_client#, @SYS_CALL(GO_TASK) // 呼び出したタスクに戻る
  goto keyin

// １行入力タスク
inline:
  long  inline_stack#,inline_sp#
  long  i_cc#,i_st#,i_client#   // 1行入力を依頼してきたタスク

  @SYS_CALL(GET_MESSAGE)  i_st#= pop i_client#=
  loop_inline:
    keyin_task, @SYS_CALL(GO_TASK)  i_cc#= // １文字入力
    @SYS_CALL(PUTCH)
    if i_cc#=CR then CONOUT, @SYS_CALL(FNL)
    if i_cc#<' ' goto exit_inline  // コントロールコードで入力終わり
    i_cc#, (i_st)$=
    i_st#++
    goto loop_inline
  exit_inline:
  NULL, (i_st)$=
  i_cc#, (i_client)#(RDI/8)=           // 戻り値をセットする
  i_client#, @SYS_CALL(GO_TASK) // 呼び出したタスクに戻る
  goto inline

// ファンクションコールハンドラ

console_handler:
  const CLS          100
  const LOCATE    101
  const CURSOR   102
  const INKEY       103
  const GETCH      104
  const PUTCH      105

/ rax=CLS/      // cls関数
/ r13-rax/
/ jz cls/
/ rax=LOCATE/ // locate関数
/ r13-rax/
/ jz locate/
/ rax=CURSOR/ // cursor関数
/ r13-rax/
/ jz cursor/
/ rax=INKEY/    // inkey関数
/ r13-rax/
/ jz inkey/
/ rax=GETCH/   // getch関数
/ r13-rax/
/ jz getch/
/ rax=PUTCH/   // putch関数
/ r13-rax/
/ jz putch/
/ rax=GETC/      // getc関数を拡張する
/ r13-rax/
/ jz getc_con/
/ rax=PUTC/      // putc関数を拡張する
/ r13-rax/
/ jz putc_con/
/ rax=FNL/        // fnl関数を拡張する
/ r13-rax/
/ jz fnl_con/
/ rax=ROPEN/   // ropen関数を拡張する
/ r13-rax/
/ jz ropen_con/
/ rax=WOPEN/   // wopen関数を拡張する
/ r13-rax/
/ jz wopen_con/
/ rax=RCLOSE/   // rclose関数を拡張する
/ r13-rax/
/ jz rclose_con/
/ rax=WCLOSE/  // wclose関数を拡張する
/ r13-rax/
/ jz wclose_con/
/ rax=FINPUTS/  // finput関数を拡張する
/ r13-rax/
/ jz finputs_con/

// 失敗したときの処理
handler_fault:
 @sys_ext0  // 元のシステム拡張ベクタを呼び出す
  end

// 成功したときの処理
handler_success:
/ r13=SYNC/ // 呼び出し元のシステムコールルーチンでは何もしないようにする 
 @sys_ext0  // 元のシステム拡張ベクタを呼び出す
  end

// 画面クリア
cls:
/ rsi=__conout/
/ rcx=(rsi)/
/ rsi=__cls/
/ rax=(rsi)/
/ call (rax)/
  goto handler_success

// カーソル位置をセット
locate:
/ rdx=rsi/
/ r8=rdi/
/ rsi=__conout/
/ rcx=(rsi)/
/ rsi=__locate/
/ rax=(rsi)/
/ call (rax)/
  goto handler_success

// カーソル点灯・消灯
cursor:
/ rdx=rdi/
/ rsi=__conout/
/ rcx=(rsi)/
/ rsi=__cursor/
/ rax=(rsi)/
/ call (rax)/
  goto handler_success

// キーボードからからキーコードを読み込む (入力待ちなし)
inkey:
/ rdx=__inputkey/
/ rsi=__conin/
/ rcx=(rsi)/
/ rsi=__getch/
/ rax=(rsi)/
/ call (rax)/
/ rax=0/
/ rsi=__inputkey/
/ rdi=(rsi)/
  goto handler_success

// コンソールからから一文字読み込む(入力待ちなし) 
getch:
/ rdx=__inputkey/
/ rsi=__conin/
/ rcx=(rsi)/
/ rsi=__getch/
/ rax=(rsi)/
/ call (rax)/
/ rax=0/
/ rsi=__inputkey+2/
/ rax=(rsi)/
/ rdi=0xff/
/ rdi&=rax/
  goto handler_success

// コンソールへ1文字出力する
putch:
  __strbuf#=
/ rdx=__strbuf/
/ rsi=__conout/
/ rcx=(rsi)/
/ rsi=__puts/
/ rax=(rsi)/
/ call (rax)/
  goto handler_success

// ここからシステムコール拡張(注意:パラメータ用レジスタの保存を忘れないこと)

// getc関数の拡張ルーチン
getc_con:
  _xx#=
  if _xx#=CONIN goto getc_con1
    if (_xx)#(FILE_FP/8)<>CONIN  then _xx#, gotohandler_fault
  getc_con1:
  keyin_task, @SYS_CALL(GO_TASK)
  goto handler_success

// putc関数の拡張ルーチン
putc_con:
  _xx#= pop _yy#=
  if _xx#=CONOUT goto putc_con1
    if (_xx)#(FILE_FP/8)<>CONOUT then _yy#, _xx#, gotohandler_fault
  putc_con1:
  _yy#, putch
  goto handler_success

// fnl関数の拡張ルーチン
fnl_con:
  _xx#=
  if _xx#=CONOUT goto fnl_con1
    if (_xx)#(FILE_FP/8)<>CONOUT then _xx#, gotohandler_fault
  fnl_con1:
  CR, putch LF, putch
  goto handler_success

// ropen関数の拡張ルーチン
ropen_con:
  _vv#= pop _zz#=
  _zz#, "CON", strcmp _uu#=
  if _uu#<>0 then _zz#, _vv#, gotohandler_fault
  CONIN,  (_vv)#(FILE_FP/8)=
  0, gotohandler_success

// wopen関数の拡張ルーチン
wopen_con:
  _vv#= pop _zz#=
  _zz#, "CON", strcmp _uu#=
  if _uu#<>0 then _zz#, _vv#, gotohandler_fault
  CONOUT,  (_vv)#(FILE_FP/8)=
  0, gotohandler_success

// rclose関数の拡張ルーチン
rclose_con:
  _xx#=
  if _xx#=CONIN goto rclose_con1
    if (_xx)#(FILE_FP/8)<>CONIN then _xx#, gotohandler_fault
  rclose_con1:
  0, gotohandler_success

// wclose関数の拡張ルーチン
wclose_con:
  _xx#=
  if _xx#=CONOUT goto wclose_con1
    if (_xx)#(FILE_FP/8)<>CONOUT then _xx#, gotohandler_fault
  wclose_con1:
  0, gotohandler_success

// finputs関数の拡張ルーチン
finputs_con:
  _xx#= pop _yy#=
  if _xx#=CONIN goto finputs_con1
    if (_xx)#(FILE_FP)<>CONIN then _yy#, _xx#, gotohandler_fault
  finputs_con1:
  _yy#, inline_task, @SYS_CALL(GO_TASK)
  goto handler_success


//  以下はメインプログラム

// 入力したコマンドを実行する
main:
  const MAX_CHAR 256
  count pp0#
  char cmd_buf$(MAX_CHAR),cmd0$(MAX_CHAR),exe_file$(MAX_CHAR)
  long argc#
  long argv#(16)
  long f#,s#,t#,u#,p#,q#
  long indev#,outdev#,task#,stack#,sp#
  char cc$,mode$

// スタートアップルーチン
  1, @SYS_CALL(CURSOR)
  @SYS_CALL(CLS)
  "Kous-OS version 0.0.3", CONOUT, @SYS_CALL(FPRINTS) CONOUT, @SYS_CALL(FNL)

main_loop:
  "$ ", CONOUT, @SYS_CALL(FPRINTS)
  fault:
  cmd_buf, CONIN, @SYS_CALL(FINPUTS) f#=
  if f#<>CR then CONOUT, @SYS_CALL(FNL)  "? ", CONOUT, @SYS_CALL(FPRINTS) gotofault
  if cmd_buf$=NULL goto main_loop
  cmd_buf, cmd0, strcpy
  cmd_buf, @SYS_CALL(STRLEN) cmd_buf, + p#=

// 実行モード（フォアグラウンド／バックグラウンド）の取得
get_mode:
  p#--
  if p#>cmd_buf then if (p)$=' ' goto get_mode
  0, mode$=
  if (p)$='&' then 1, mode$= NULL, (p)$=

// 入力デバイス名の取得 
set_indev:
  NULL, indev#= outdev#=
  cmd_buf, "<", @SYS_CALL(STRSTR) p#=
  cmd_buf, ">", @SYS_CALL(STRSTR) q#=
  if p#=NULL goto set_outdev
  NULL, (p)$=
  head_indev:
    p#++
  if (p)$='>'  goto set_outdev
  if (p)$=NULL  goto set_outdev
  if (p)$=' ' goto head_indev
  p#, indev#=
  tail_indev:
    p#++
  if (p)$<>' ' then if (p)$<>NULL goto tail_indev
  NULL, (p)$=
  
// 出力デバイス名の取得
set_outdev:
  if q#=NULL goto split_arg
  NULL, (q)$=
  head_outdev:
    q#++
  if (q)$=NULL  goto split_arg
  if (q)$=' ' goto head_outdev
  q#, outdev#=
  tail_outdev:
    q#++
  if (q)$<>' ' then if (q)$<>NULL goto tail_outdev
  NULL, (q)$=

// 引数の分離
split_arg:
  0,  argc#=   cmd_buf+MAX_CHAR-1$=
  if cmd_buf$=NULL then end
  ' ', cc$=
  for pp0#=cmd_buf to cmd_buf+MAX_CHAR
    if cc$<>' ' goto split_arg1
      if (pp0)$<>' ' then pp0#, argv#(argc#)= argc#++
    split_arg1:
    if cc$=' '  then (pp0)$, cc$= gotosplit_arg2
      (pp0)$, cc$=
      if (pp0)$=' '  then NULL, (pp0)$=
    split_arg2:
  if (pp0)$(1)<>NULL then next pp0#

  argv#(0), exe_file, @SYS_CALL(STRCPY)
  ".EFI", exe_file, @SYS_CALL(STRCAT)

// フォアグラウンドで実行する
foreground:
   if mode$=1 goto background
   exe_file, @SYS_CALL(LOAD) s#= pop t#=
   if s#=ERROR goto program_error
   s#, (present_task)#(START/8)=
   t#, (present_task)#(SIZE/8)=
   __stack_p#, (present_task)#(STACK/8)=    
   indev#, (present_task)#(INDEV/8)=    
   outdev#, (present_task)#(OUTDEV/8)=
   present_task#, CMD_LINE, + p#=  // コマンドライン領域に文字列を書き込む
   cmd0, p#, 7, @SYS_CALL(STRNCPY)
   NULL, (present_task)#(CLIENT/8)=  // フォアグラウンドの場合クライアント領域にNULLが書き込まれる
   s#, call@
   s#, t#, @SYS_CALL(PFREE)
   goto main_loop

// バックグラウンドで実行する
background:
   "*** background ***", CONOUT, @SYS_CALL(FPRINTS) CONOUT, @SYS_CALL(FNL)
   exe_file, @SYS_CALL(LOAD) s#= pop t#=
   if s#=ERROR goto program_error
   STACK_SIZE, @SYS_CALL(MALLOC) stack#=
   if stack#=NULL then s#, t#, @SYS_CALL(PFREE) gotoprogram_error
   stack#, STACK_SIZE, + sp#=
   s#, 8, + task#=                       // TCB領域はプログラム領域の先頭から8バイト目
   task#, s#, sp#, @SYS_CALL(CREATE_TASK)
   s#, (task)#(START/8)=
   t#, (task)#(SIZE/8)=
   stack#, (task)#(STACK/8)=    
   indev#, (task)#(INDEV/8)=    
   outdev#, (task)#(OUTDEV/8)=
   task#, CMD_LINE, + p#=  // コマンドライン領域に文字列を書き込む
   cmd0, p#, 7, @SYS_CALL(STRNCPY)
   present_task#, (task)#(CLIENT/8)=  // クライアント領域に現在のタスクが書き込まれる
   task#, @SYS_CALL(RUN_TASK)
   goto main_loop

// エラー処理
program_error:
  "command not found", CONOUT, @SYS_CALL(FPRINTS) CONOUT, @SYS_CALL(FNL)
  goto main_loop

// ここからアプリケーション領域
  char __prog_start$(0)
 