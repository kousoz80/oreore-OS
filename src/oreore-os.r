//  "oreore-os.r" oreore-OS ver 0.0.9  for oregengo-R (x64) UEFIアプリケーション  
// 変更点：タスク切り替えのときの保存レジスタを追加

 const TIMER_INTERVAL 10000 // 割り込み周期(0.1us単位)
 const EOF         -1         // ファイルの終わりをあらわす文字コード 
 const ERROR    -1          // エラーが発生したことをあらわす 
 const NULL       0           // ヌルポインタ 
 const SPACE     32          // 空白文字 
 const CR          13          // キャリッジリターンコード 
 const LF           10          // ラインフィードコード 
 const PLUS       43          // プラス記号の文字コード 
 const MINUS    45          // マイナス記号の文字コード 
 const MULT      42          // 乗算記号の文字コード 
 const DIV         47          // 除算記号の文字コード 
 const ESC        27          // ESCキーの文字コード 
 const CONOUT 1
 const CONIN    2
 const NaN        0x8000000000000000  // ゼロ除算が発生したことをあらわす 

// OSのメモリ領域を決める定数(この辺はトライ＆エラーで決める必要あり)
 const MAX_PROG_PAGES             1024    // 4MBプログラムエリア
 const MAIN_STACK_SIZE             8000000
 const DRIVER_STACK_SIZE          16384
 const APPLICATION_STACK_SIZE 8000000

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
 
// タスク制御ブロック
  struct TCB
    long status#
    long cmd_line#       // コマンドライン
    long prog_start#     // プログラム開始アドレス
    long prog_size#      // プログラムサイズ
    long stack#             // スタックの先頭アドレス
    long indev#            // タスクの入力デバイス
    long outdev#          // タスクの出力デバイス
    long message#      // メッセージ
    long client#           // メッセージの発信元(タスク)
    long rcx#               // レジスタrcx
    long rdx#               // レジスタrdx
    long rdi#               // レジスタrdi
    long rsi#                // レジスタrsi
    long r8#                // レジスタr8
    long r9#                // レジスタr9
    long r10#              // レジスタr10
    long r11#              // レジスタr11
    long r12#              // レジスタr12
    long xmm0#         // レジスタxmm0
    long xmm1#         // レジスタxmm1
    long prev#            // 前のTCB
    long next#          // 次のTCB 
    long sp#               // スタックポインタ
  end

// タスクの状態
  enum
     RUN      // 0:実行(可能)状態
     READY   // 停止状態
     WAIT     // 待機状態
  end

 // 作業変数
 char   __fbuf$(1024)
 char   __sign$(1),__nbuf$(64)
 short  __wide_str%(1024)
 char   __nallow_str$(1024)
 long   __strbuf#,__inputkey#
 long   __fbuf_length#
 count __p0#
 long   __p1#,__p2#,__p3#,__p4#,__p5#,__p6#,__p7#,__t#
 long   __paddr#        // palloc関数用のポインタ
 long   read_p#         // data文へのポインタ

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
 char tcb0$(TCB.SIZE)


// プログラム開始位置
_start:


// スタックポインタを初期化
/ rcx=2/
/ rdx=MAIN_STACK_SIZE/
/ r8=__stack_top/
/ rax=__allocate_pool/
/ rax=(rax)/
/ call (rax)/
/ rax&rax/
/ jnz __end_loop/        // 初期化に失敗したときは無限ループ
  __stack_top#, MAIN_STACK_SIZE-8, + __stack_p#=

 // システムコール拡張ベクタの初期化
 nop, SYS_EXT#= sys_ext0#=

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
/ TCB.status(rax)=rcx/
/ TCB.next(rax)=rax/
/ TCB.prev(rax)=rax/
/ rcx=__stack_p/
/ rcx=(rcx)/
/ TCB.sp(rax)=rcx/
/ rax=main/
/ (rcx)=rax /              // プログラム開始番地はmain 

  "*shell", tcb0, ->TCB.cmd_line#=

  1, __int_enable#=                                 // 割り込みを許可
  taskman_init                                          // タスクマネージャを初期化する
  console_init                                           // コンソールデバイスドライバを初期化する
  goto switch_task                                   // メインタスクに切り替える
 

// エラートラップ(無限ループ)
__end_loop:
  goto __end_loop

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
/ TCB.rcx(rax)=rcx/     // レジスタを退避する
/ TCB.rdx(rax)=rdx/
/ TCB.rdi(rax)=rdi/
/ TCB.rsi(rax)=rsi/
/ TCB.r8(rax)=r8/
/ TCB.r9(rax)=r9/
/ TCB.r10(rax)=r10/
/ TCB.r11(rax)=r11/
/ TCB.r12(rax)=r12/
/ rcx=xmm0/
/ TCB.xmm0(rax)=rcx/
/ rcx=xmm1/
/ TCB.xmm1(rax)=rcx/
/ rcx=__stack_p/
/ rcx=(rcx)/
/ TCB.sp(rax)=rcx/
switch_loop:
/ rax=TCB.next(rax)/
/ r15=TCB.status(rax)/
/ r15&r15/            // タスクの状態がRUNならタスクを切り替える
/ jnz switch_loop/ // RUN状態のタスクが1つもないとハングするので注意
/ rcx=present_task/
/ (rcx)=rax/
/ rcx=TCB.xmm0(rax)/         // レジスタを復帰する
/ xmm0=rcx/
/ rcx=TCB.xmm1(rax)/
/ xmm1=rcx/
/ rcx=TCB.rcx(rax)/
/ rdx=TCB.rdx(rax)/
/ rdi=TCB.rdi(rax)/
/ rsi=TCB.rsi(rax)/
/ r8=TCB.r8(rax)/
/ r9=TCB.r9(rax)/
/ r10=TCB.r10(rax)/
/ r11=TCB.r11(rax)/
/ r12=TCB.r12(rax)/
/ r15=TCB.sp(rax)/
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


// システムコールパラメータ一覧
 enum
    SYNC
    CREATE_TASK
    KILL_TASK
    RUN_TASK
    STOP_TASK
    WAIT_TASK
    GO_TASK
    RET_TASK
    SEND_MESSAGE
    GET_MESSAGE
    _WIDE
    _NALLOW
    GETC
    _READ
    PUTC
    _WRITE
    WOPEN
    ROPEN
    OPEN
    RCLOSE
    WCLOSE
    DELETE
    VOL_OPEN
    VOL_CLOSE
    VOL_READ
    FPRINTS
    FPRINTD
    FNL
    FINPUTS
    STRCMP
    STRNCMP
    STRCPY
    STRNCPY
    STRCAT
    STRNCAT
    STRSTR
    STRLEN
    ATOI
    ITOA
    BIN
    OCT
    DEC
    HEX
    ABS
    PALLOC
    PFREE
    MALLOC
    FREE
    LOAD
    EXEC_COMMAND
    LOCATE_PROTOCOL
 end

// ジャンプテーブル
 .data
jmp_tbl:
 data sync
 data create_task
 data kill_task
 data run_task
 data stop_task
 data wait_task
 data go_task
 data ret_task
 data send_message
 data get_message
 data _wide
 data _nallow
 data getc
 data _read
 data putc
 data _write
 data wopen
 data ropen
 data open
 data rclose
 data wclose
 data delete
 data vol_open
 data vol_close
 data vol_read
 data fprints
 data fprintd
 data fnl
 data finputs
 data strcmp
 data strncmp
 data strcpy
 data strncpy
 data strcat
 data strncat
 data strstr
 data strlen
 data atoi
 data itoa
 data bin
 data oct
 data dec
 data hex
 data abs
 data palloc
 data pfree
 data malloc
 data free
 data load 
 data exec_command
 data locate_protocol 


// なにもしない（タスク切り替え・システム拡張用）
nop:
sync:
  end


// タスクを生成する
// 入力パラメータ | rdx：新しいタスク,  rsi:プログラム先頭アドレス,rdi：スタックポインタ値
// (以後，タスクと呼ぶときはそのタスクのTCBアドレスを指すものとする）
create_task:
/ (rdi)=rsi/                   // スタックポインタの示すアドレスにプログラム開始アドレスをセット
/ rsi=READY/
/ rax=present_task/
/ rax=(rax)/                  // rax:現在のタスク
/ rcx=TCB.prev(rax)/  // rcx:前のタスク
/ TCB.status(rdx)=rsi/       // 新しいタスクはREADY状態にする
/ TCB.next(rdx)=rax/  // 新しいタスクのTCB.nextエリアに現在のタスクをセット
/ TCB.prev(rdx)=rcx/  // 新しいタスクのTCB.prevエリアに前のタスクをセット
/ TCB.sp(rdx)=rdi/              // 新しいタスクのスタックポインタ値をセット
/ TCB.next(rcx)=rdx/  // 前のタスクのTCB.nextエリアに新しいタスクをセット
/ TCB.prev(rax)=rdx/  // 現在のタスクのTCB.prevエリアを新しいタスクにセット
/ rax=tasks/                // tasksを＋１する 
/ rcx=(rax)/
/ rcx++/
/ (rax)=rcx/
  end


// タスクを削除する
// 入力パラメータ｜rdi:削除するタスク
kill_task:
  long __d0#,__dn#,__dp#
  __d0#=
  if __d0#=tcb0 then end                  // タスク0は削除できない
  if __d0#=present_task# then end  // 自分自身のタスクは削除できない
  READY, __d0#, ->TCB.status#=
  __d0#, ->TCB.next# __dn#=
  __d0#, ->TCB.prev# __dp#=
  __dn#, __dp#, ->TCB.next#=
  __dp#, __dn#, ->TCB.prev#=
  tasks#--
  end


// タスクをRUN状態にする
// 入力パラメータ|rdi:走らせるタスク
run_task:
/ rax=RUN/
/ TCB.status(rdi)=rax/
  end


// タスクをREADY(停止)状態にする
// 入力パラメータ|rdi:走らせるタスク
stop_task:
/ rax=READY/
/ TCB.status(rdi)=rax/
  end


// タスクをWAIT(待ち)状態にする
// 入力パラメータ|rdi:走らせるタスク
wait_task:
/ rax=WAIT/
/ TCB.status(rdi)=rax/
  end


// タスクにメッセージを送って実行を依頼してWAIT状態に遷移する
// 入力パラメータ|rsi:メッセージ,rdi:呼び出すタスク
go_task:
/ rax=TCB.status(rdi)/
/ rcx=READY/
/ rax-rcx/            // 呼び出すタスクがREADY状態でないときははエラー
/ jnz error_end/
 send_message
 run_task
/ rdi=present_task/
/ rdi=(rdi)/
/ rax=WAIT/
/ TCB.status(rdi)=rax/
  end


// 実行を依頼してきたタスクにメッセージを送って実行を移してREADY状態に遷移する
// 入力パラメータ|rsi:メッセージ,rdi:返すタスク
ret_task:
/ rax=TCB.status(rdi)/
/ rcx=WAIT/
/ rax-rcx/            // 呼び出すタスクがWAIT状態でないときははエラー
/ jnz error_end/
/ rcx=present_task/
/ rcx=(rcx)/
/ rax=TCB.client(rcx)/
/ rax-rdi/            // 呼び出すタスクが依頼してきたタスクでないときはエラー
/ jnz error_end/
/ TCB.message(rdi)=rsi/
 run_task
/ rax=READY/
/ TCB.status(rcx)=rax/
  end


// メッセージを指定タスクに送る
// 入力パラメータ|rsi:メッセージ,rdi:指定タスク
send_message:
/ rax=present_task/
/ rax=(rax)/
/ TCB.message(rdi)=rsi/
/ TCB.client(rdi)=rax/
  end


// メッセージ(とメッセージの発信元)を得る
get_message:
/ rax=present_task/
/ rax=(rax)/
/ rdi=TCB.message(rax)/
/ rsi=TCB.client(rax)/
  end


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
  end


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
  if __p5#=ERROR goto error_end
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
 __p2#= pop __p1#=
 __strcmp1:
  if (__p1)$<>(__p2)$ then 1, end
  if (__p1)$=NULL then 0, end
  __p1#++
  __p2#++
 goto __strcmp1


// 文字数制限付きで文字列を比較する
strncmp:
 __p3#= pop __p2#= pop __p1#=
 __strncmp1:
  if __p3#<=0 then 0, end
  if (__p1)$<>(__p2)$ then 1, end
  if (__p1)$=NULL then 0, end
  __p1#++
  __p2#++
  __p3#--
 goto __strncmp1


// 文字列をコピーする
strcpy:
 __p2#= pop __p1#=
 __strcpy1:
  (__p1)$, (__p2)$= __p4#=
  __p1#++
  __p2#++
 if __p4#<>NULL goto __strcpy1
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
 __p2#= pop __p1#=
__strcat1:
 if (__p2)$<>NULL then __p2#++ goto__strcat1
__strcat2:
 (__p1)$, (__p2)$= __p4#=
 __p1#++
 __p2#++
 if __p4#<>NULL goto __strcat2
 end


// 文字数制限付きで文字列を連結する
strncat:
 __p3#= pop __p2#= pop __p1#=
__strncat1:
 if (__p2)$<>NULL then __p2#++ goto__strncat1
__strncat2:
 if __p3#<=0 then NULL, (__p2)$= end
 (__p1)$, (__p2)$= __p4#=
 __p1#++
 __p2#++
 __p3#--
 if __p4#<>NULL goto __strncat2
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

// if __p5#<__p2# goto __itoa2
/ rax=__p5/
/ rax=(rax)/
/ rdi=__p2/
/ rdi=(rdi)/
/ rax-rdi/
/ jb __itoa2/

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
  if __pp#<>0 goto error_end
  PROG_HEADER_SIZE, @SYS_CALL(MALLOC) __load_header#=
  if __load_header#=NULL goto __load_error2
  PROG_HEADER_SIZE, __load_header#, __load_fp, @SYS_CALL(_READ) __pp#=
  if __pp#<>PROG_HEADER_SIZE goto __load_error1
  if (__load_header)!(PMAGIC1)<>MAGIC1 goto __load_error1
  if (__load_header)!(PMAGIC2)<>MAGIC2 goto __load_error1
  (__load_header)!(PROG_ADDR), (__load_header)#(IMAGE_BASE), + __load_addr#=
  (__load_header)!(PROG_SIZE), __load_size#=
  __load_header#, @SYS_CALL(FREE)
  __load_size#, __load_addr#, __load_fp, @SYS_CALL(_READ) __pp#=
  __load_fp, @SYS_CALL(RCLOSE)
  __load_size#, __load_addr#, end

// エラー処理1
__load_error1:
  __load_header#, @SYS_CALL(FREE)

// エラー処理2
__load_error2:
  __load_fp, @SYS_CALL(RCLOSE)
  goto error_end


// コマンドを実行する
exec_command:
  const MAX_CHAR 256
  count pp0#
  char cmd_buf$(MAX_CHAR),cmd0$(MAX_CHAR),exe_file$(MAX_CHAR)
  long argc#
  long argv#(16)
  long s#,t#,u#,p#,q#
  long indev#,outdev#,task#,stack#,sp#
  char cc$,mode$

  cmd_buf, @SYS_CALL(STRCPY)
  cmd_buf, cmd0, @SYS_CALL(STRCPY)
  cmd_buf, @SYS_CALL(STRLEN) cmd_buf, + p#=

// 実行モード（フォアグラウンド／バックグラウンド）の取得
get_mode:
  p#--
  if p#>cmd_buf then if (p)$=' ' goto get_mode
  'F', mode$=
  if (p)$='&' then 'B', mode$= NULL, (p)$=

// 入力デバイス名の取得 
set_indev:
  "", indev#= outdev#=
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
  exe_file, ".EFI", @SYS_CALL(STRSTR) t#=
  if t#=NULL then ".EFI", exe_file, @SYS_CALL(STRCAT)

   exe_file, @SYS_CALL(LOAD) s#= pop t#=
   if s#=ERROR goto error_end

   APPLICATION_STACK_SIZE, @SYS_CALL(MALLOC) stack#=
   stack#, APPLICATION_STACK_SIZE, + sp#=
   s#, 8, + task#=                       // TCB領域はプログラム領域の先頭から8バイト目
   task#, s#, sp#, @SYS_CALL(CREATE_TASK)
   s#, task#, ->TCB.prog_start#=
   t#, task#, ->TCB.prog_size#=
   stack#, task#, ->TCB.stack#=    
   indev#, task#, ->TCB.indev#=    
   outdev#, task#, ->TCB.outdev#=
   cmd0, @SYS_CALL(STRLEN) 1, + @SYS_CALL(MALLOC) p#= // コマンドライン文字列を生成
   mode, p#, 1, @SYS_CALL(STRNCPY)     // 実行モードを書き込む
   cmd0, p#, @SYS_CALL(STRCAT)            // コマンドライン文字列を書き込む
   p#, task#, ->TCB.cmd_line#=              // コマンドライン文字列領域をセット
   present_task#, task#, ->TCB.client#= // クライアント領域に現在のタスクを書き込む
   task#, @SYS_CALL(RUN_TASK)              // アプリのタスクを起動
   if mode$='F' then present_task#, @SYS_CALL(STOP_TASK) // フォアグラウンド起動の場合は停止状態に入る
   0, end


// UEFIプロトコルを取得する
// 書式: uefi_guid, protocol_address, locate_protocol
// 戻り値:成功したときは0,失敗したときは1
locate_protocol:
/ rcx=rsi/
/ rdx=0/
/ r8=rdi/
/ rax=__locate_protocol/
/ rax=(rax)/
/ call (rax)/
/ rdi=rax/
  end


//  以下は タスクマネージャ(現在は削除のみ)

// 初期化
taskman_init:
  char taskman$(TCB.SIZE)
  long  taskman_stack#,taskman_sp#

  // タスクを生成する
  DRIVER_STACK_SIZE, @SYS_CALL(MALLOC) taskman_stack#= DRIVER_STACK_SIZE-8, + taskman_sp#=
  taskman, taskman_loop, taskman_sp#, @SYS_CALL(CREATE_TASK)
  "*task manager", taskman, ->TCB.cmd_line#=
  end

// 終了
taskman_remove:
  taskman, @SYS_CALL(KILL_TASK)
  taskman_stack#, @SYS_CALL(FREE)
  end

// タスク削除処理
taskman_loop:
  long  t_client#  // 削除を依頼してきたタスク

  @SYS_CALL(GET_MESSAGE) pop t_client#=
  t_client#, @SYS_CALL(KILL_TASK)
  present_task#, @SYS_CALL(STOP_TASK)
  goto taskman_loop


//  以下はコンソールデバイスドライバ

// 初期化
console_init:
  char keyin_task$(TCB.SIZE),inline_task$(TCB.SIZE)
  long sys_ext0#
  long _xx#,_yy#,_zz#,_uu#,_vv#

  // キー入力タスクを生成する
  DRIVER_STACK_SIZE, @SYS_CALL(MALLOC) keyin_stack#= DRIVER_STACK_SIZE-8, + keyin_sp#=
  keyin_task, keyin, keyin_sp#, @SYS_CALL(CREATE_TASK)
  "*keyin task", keyin_task, ->TCB.cmd_line#=

  // １行入力タスクを生成する
  DRIVER_STACK_SIZE, @SYS_CALL(MALLOC) inline_stack#= DRIVER_STACK_SIZE-8, + inline_sp#=
  inline_task, inline, inline_sp#, @SYS_CALL(CREATE_TASK)
  "*inline task", inline_task, ->TCB.cmd_line#=

  SYS_EXT#, sys_ext0#=
  console_handler, SYS_EXT#=
  end

// 終了
console_remove:
  sys_ext0#, SYS_EXT#=
  inline_task, @SYS_CALL(KILL_TASK)
  keyin_task,  @SYS_CALL(KILL_TASK)
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
  k_cc#, k_client#, ->TCB.rdi#=      // 戻り値をセットする
  k_client#, @SYS_CALL(RET_TASK) // 呼び出したタスクに戻る
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
  i_cc#, i_client#, ->TCB.rdi#=       // 戻り値をセットする
  i_client#, @SYS_CALL(RET_TASK) // 呼び出したタスクに戻る
  goto inline

// ファンクションコールハンドラ

console_handler:
  const CLS          100
  const LOCATE    101
  const CURSOR   102
  const INKEY       103
  const GETCH      104
  const PUTCH      105
  const WPUTS      106

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
/ rax=WPUTS/   // wputs関数
/ r13-rax/
/ jz wputs/
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

 if __inputkey!=72 then capture_screen

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

 if __inputkey!=72 then capture_screen

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


// コンソールへワイド文字列を出力する
wputs:
/ rdx=rdi/
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
  char bat_file$(FILE_SIZE)
  long infile#,f#

  long graphic_protocol#
  long pointer_protocol#
  long graphic_mode#,graphic_info#,graphic_base#
  long set_mode#,screen_width#,screen_height#
  long mouse_reset#,mouse_get_state#

// スタートアップルーチン
  graphic_guid, graphic_protocol, locate_protocol    // UEFIのグラフィックAPIを取得する
  (graphic_protocol)#(1), set_mode#=
  (graphic_protocol)#(3), graphic_mode#=
  (graphic_mode)#(1), graphic_info#=
  (graphic_mode)#(3), graphic_base#=
  (graphic_info)!(1), screen_width#=
  (graphic_info)!(2), screen_height#=
  pointer_guid, pointer_protocol, locate_protocol    // UEFIのマウスAPIを取得する
  (pointer_protocol)#(0), mouse_reset#=
  (pointer_protocol)#(1), mouse_get_state#=

  1, @SYS_CALL(CURSOR)
  @SYS_CALL(CLS)
  "oreore-OS version 0.09", CONOUT, @SYS_CALL(FPRINTS) CONOUT, @SYS_CALL(FNL)

  // バッチファイル"autoexec.bat"が存在すれば、それを実行する
  "autoexec.bat", bat_file, ropen f#=
  bat_file, infile#=
  if f#=ERROR then CONIN, infile#=  

main_loop:
  "# ", CONOUT, @SYS_CALL(FPRINTS)
  fault:
  cmd_buf, infile#, @SYS_CALL(FINPUTS) f#=

  // バッチファイルの終わりに達したらコンソール入力に切り替える
  if f#=EOF then infile#, rclose CONIN, infile#= gotofault
  if f#=LF goto main2
  if f#<>CR then CONOUT, @SYS_CALL(FNL)  "? ", CONOUT, @SYS_CALL(FPRINTS) gotofault
main2:
  if cmd_buf$=NULL goto main_loop
  cmd_buf, @SYS_CALL(EXEC_COMMAND) f#=
  if f#=ERROR then "command input error",  CONOUT, @SYS_CALL(FPRINTS) CONOUT, @SYS_CALL(FNL)
  goto main_loop


// エラーを返して終了する
error_end:
  ERROR, end


// sin関数
math_sin:
  long sin_x#,sin_x2#
  sin_x#=  ^6.28318530717959, ./ (_long) tt#=
  if  tt#<0 then tt#--
  tt#, (double) ^6.28318530717959, .* sin_x#, swap .- sin_x#=
  sin_x#, .* sin_x2#=
                    ^0.0000000000000028,
  sin_x2#, .* ~0.0000000000007647, .+ 
  sin_x2#, .* ^0.0000000001605904, .+
  sin_x2#, .* ~0.0000000250521083, .+
  sin_x2#, .* ^0.0000027557319223, .+
  sin_x2#, .* ~0.0001984126984126, .+
  sin_x2#, .* ^0.0083333333333333, .+
  sin_x2#, .* ~0.1666666666666666, .+
  sin_x2#, .* ^1.0,  .+
  sin_x#, .*
  end


// cos関数
math_cos:
  ^1.570796326767849, .+ math_sin end


// tan関数
math_tan:
  long tan_a#,tan_x#,tan_y#
  tan_a#=
  tan_a#, math_cos tan_x#=
  if tan_x#.=^0.0 then NaN, end 
  tan_a#, math_sin tan_y#= 
  tan_y#, tan_x#, ./  end


// arctan関数
math_arctan:
  long arctan_a#,arctan_s#
  arctan_a#=
  ^1.0, arctan_s#= 
  if arctan_a#.<^0.0 then ^0.0, arctan_a#, .- arctan_a#= ~1.0, arctan_s#=

math_arctan0:
  if arctan_a#.<=^2.41421356237 goto math_arctan1
  ^1.0, arctan_a#, ./ xarctan ^1.5707963268, swap .-
  arctan_s#, .*
  end
  
math_arctan1:
  if arctan_a#.<=^0.41421356237 goto math_arctan2
  arctan_a#,  ^1.0, .+ tt#=
  ^2.0, .- tt#, ./ xarctan  ^0.78539816339, .+
  arctan_s#, .*
  end

math_arctan2:
  arctan_a#, xarctan 
  arctan_s#, .*
  end


// 部分的に求める
xarctan:
  long txx#,txx2#,tkk#,tsign#,tret#
  txx#= txx#, .* txx2#=
  ^1.0, tkk#=
  ^1.0, tsign#=
  ^0.0, tret#=
  for ii#=1 to 38
    txx#, tkk#, ./ tsign#, .* tret#, .+ tret#=
    txx#, txx2#, .* txx#=
    tkk#, ^2.0, .+ tkk#=
    tsign#, ~1.0, .* tsign#=
  next ii#
  tret#, end


// exp関数
math_exp:
  long exp_a#,exp_s#,exp_n#,exp_r#
  exp_a#=
  if exp_a#.=^0.0 then ^1.0, end
  if exp_a#.=^1.0 then ^2.718281828459, end
  if exp_a#.=~1.0 then ^0.367879441171, end
  0, exp_s#=
  if exp_a#.<^0.0 then ^0.0, exp_a#, .- exp_a#= 1, exp_s#=
  exp_a#, (_long) exp_n#= (double) exp_a#, swap .- exp_a#=
  ^1.0, exp_r#=
  for ii#=17 to 1 step -1
    ii#, (double) tt#=
    exp_r#, exp_a#, .* tt#, ./ ^1.0, .+ exp_r#=
  next ii#
math_exp0:
  if exp_n#<=0 goto math_exp1
  exp_r#, ^2.718281828459, .* exp_r#=
  exp_n#--
  goto math_exp0
math_exp1:
  if exp_s#=1 then ^1.0, exp_r#, ./ exp_r#= 
  exp_r#, end


// log関数
math_log:
  long log_a#,log_d#,log_r#,log_s#
  log_a#=
  0, log_s#=
  if log_a#.<=^0.0 then NaN, end
  if log_a#.=^1.0 then ^0.0, end
  if log_a#.<^1.0 then ^1.0, log_a#, ./ log_a#= 1, log_s#=
  log_a#, 0x10000000000000, / 0xfff, and 1023, - // 指数部を抜き出してeのべき数に正規化した値を初期値とする
   (double)  ^0.69315, .* log_r#=                           // ニュートン法で解を求める
math_log1:
  log_r#, math_exp log_a#, swap ./ ^1.0, .- log_d#=
  log_r#, log_d#, .+ log_r#=
  if log_d#.<^0.0 then ^0.0, log_d#, .- log_d#=
  if log_d#.>^0.0000000001 goto math_log1
  if log_s#=1 then ^0.0, log_r#, .- log_r#=
  log_r#, end


// random関数
math_random:
  long random_a#,random_v#
  random_a#=
  random_v#, end


// べき乗関数
math_power:
  long power_a1#,power_a2#
  power_a2#= pop power_a1#=
  power_a1#, math_log power_a2#, .* math_exp
  end


// 画像操作関数
 const COLOR_CLEAR 0xff000000 //透明色の定義

// 作業変数
 count ix#,iy#,ii#,jj#
 long pp#,qq#,rr#,ss#,tt#,uu#,vv#,ww#
 long xx#,yy#,zz#
 
 long xcolor#
 long px#,py#,gx#,gy#,gx1#,gy1#
 long tx#,ty#,rx#,ry#,ox#,oy#,vx#,vy#
 long vx1#,vy1#,qx#,qy#,co#

// 点を打つ
xdraw_point:
  py#= pop px#=
  if xcolor#=COLOR_CLEAR then end
  py#, screen_width#, * px#, +
  4, * graphic_base#, + pp#=
  xcolor#, (pp)!=
  end


// 与えられた座標の色を返す
xget_point:
  py#= pop px#=
  py#, screen_width#, * px#, +
  4, * graphic_base#, + pp#=
  (pp)!,  end

  
// 線を引く
// 使用法: gx, gy, gx1, gy1, xdraw_line
xdraw_line:
  gy1#= pop gx1#= pop gy#= pop gx#=
  if xcolor#=COLOR_CLEAR then end

xline:
  gx#, gx1#, - tx#= abs rx#=
  gy#, gy1#, - ty#= abs ry#=
  if ry#>rx# goto xline_y
  if gx#=gx1# then gx#, gy#, xdraw_point end
  
  // モードX
  xline_x:
    1, rx#=
    if tx#<0  then -1, rx#=
    for ix#=0 to tx# step rx#
      ix#, ty#,  * tx#, / gy1#, + ry#=
      ix#, gx1#, + ry#, xdraw_point
    next ix#
    end
    
  xline_y: /* モード　ｙ */
    1, ry#=
    if ty#<0  then -1, ry#=
    for iy#=0 to ty# step ry#
      iy#, tx#,  * ty#, / gx1#, + rx#=
      iy#, gy1#, + rx#, swap xdraw_point
    next iy#
    end
    
// 画像を消去
xgcls:
  screen_width#,  screen_height#, * 1, + tt#=
  for ii#=2 to tt#
    xcolor#, (graphic_base)!(ii#)=
  next ii#
  end

// 長方形を描いてうめる
// 使用法: gx, gy, gx1, gy1, xfill_rect
xfill_rect: 
  gy1#= pop gx1#= pop gy#= pop gx#=
  if xcolor#=COLOR_CLEAR then end

  1, rx#= ry#=
  if gy#<gy1# then -1, ry#=
  if gx#<gx1# then -1, rx#=
  for iy#=gy1# to gy# step ry#
    for ix#=gx1# to gx# step rx#
      ix#,  iy#, xdraw_point
    next ix#
  next iy#
  end

// 長方形を描く
// 使用法: gx, gy, gx1, gy1, xdraw_rect
xdraw_rect: 
  gy1#= pop gx1#= pop gy#= pop gx#=
  if xcolor#=COLOR_CLEAR then end
  1, rx#= ry#=
  if gy#<gy1# then -1, ry#=
  if gx#<gx1# then -1, rx#=
  for ix#=gx1# to gx# step rx#
    ix#, gy#,  xdraw_point
    ix#, gy1#, xdraw_point
  next ix#
  for iy#=gy1# to gy# step ry#
    gx#,  iy#, xdraw_point
    gx1#, iy#, xdraw_point
  next iy#
  end
  
// 楕円を描いてうめる
// 使用法: gx, gy, gx1, gy1, xfill_circle
xfill_circle:
  xdraw_circle
  ox1#, oy1#, xpaint
  end

// 楕円を描く
// 使用法: gx, gy, gx1, gy1, xdraw_circle
xdraw_circle:
  long ox1#,oy1#
  gy1#= pop gx1#= pop gy#= pop gx#=
  if xcolor#=COLOR_CLEAR then end
  gx#,  vx#=  gy#,  vy#=
  gx1#, vx1#= gy1#, vy1#=
  if gx1#>gx# then gx1#, gx#, swap gx#= swap gx1#=
  if gy1#>gy# then gy1#, gy#, swap gy#= swap gy1#=
  gx#, gx1#, + 2, / ox1#=
  gy#, gy1#, + 2, / oy1#=
  gx#, gx1#, - 2, / qx#=
  if qx#=0 then xline end
  gy#, gy1#, - 2, / qy#=
  if qy#=0 then xline end
  gx#, gx1#=  oy1#, gy1#=
  for ii#=0 to TABLE_N
    qx#, cos2table#(ii#), * 32767, / ox1#, + gx#=
    qy#, sin2table#(ii#), * 32767, / oy1#, + gy#=
    xline
    gx#, gx1#= gy#, gy1#=
  next ii#
  end


// 塗る
xpaint:
  const Q_SIZE   4096
  long   q_buf#(Q_SIZE)
  long   put_p#,get_p#
  
  gy#= pop gx#=
  if xcolor#=COLOR_CLEAR then end
  0, put_p#= get_p#=
  gx#, gy#, xget_point co#=
  if co#=xcolor# then end
  gx#, gy#, xput_pset

  xpaint1:  // うった点の座標を求める
    if get_p#=put_p# then end
    q_buf#(get_p#), vx#=   get_p#++
    q_buf#(get_p#), vy#=   get_p#++
    if get_p#>=Q_SIZE then 0, get_p#=

    // うった点の四方にまた点をうつ
    vx#, 1, + vy#, xput_pset
    vx#, 1,  - vy#, xput_pset
    vy#, 1, + vx#, swap xput_pset
    vy#, 1,  -  vx#, swap xput_pset
  goto xpaint1
  
  //  点をうってその座標を記録する
  xput_pset:
    qy#= pop qx#=
    if qx#<0     then end  // 範囲外ならしない
    if qx#>=screen_width#  then end
    if qy#<0     then end
    if qy#>=screen_height# then end
    qx#, qy#, xget_point co#=
    if co#=xcolor# then end // すでに点がうってあるときもしない
    qx#, qy#, xdraw_point
    qx#, q_buf#(put_p#)=  put_p#++
    qy#, q_buf#(put_p#)=  put_p#++
    if put_p#>=Q_SIZE then 0, put_p#=
    end


// 画像を描画
// 使用法: gx, gy, address, xdraw_image
xdraw_image:
  qq#= pop gy#= pop gx#=
  if qq#=NULL then end
  (qq)!, rx#=
  if rx#<0 then end
  if rx#>=screen_width# then end
  qq#, 4, + qq#=
  (qq)!, ry#=
  if ry#<0 then end
  if ry#>=screen_height# then end
  qq#, 4, + qq#=
  gx#, rx#, + 1, - gx1#=
  gy#, ry#, + 1, - gy1#=
  for ii#=gy# to gy1#
    for jj#=gx# to gx1#
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp#=
      if (qq)$(3)=0 then (qq)!, (pp)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  jj#, ii#, end
    

// 画像をロード
// 使用法:  fname, load_image address#= pop size#=
load_image:
  char image_fp$(FILE_SIZE)
  long fnm#,fsz#,sx#,sy#

  fnm#=
  fnm#, image_fp, ropen tt#=
  if tt#=ERROR then NULL, end
  4, sx, image_fp, _read
  4, sy, image_fp, _read

  sx!, sy!, *  4, *  tt#=
  8, +  fsz#=  malloc pp#=
  sx!, (pp)!(0)=   sy!, (pp)!(1)= 
  pp#, 8, + qq#=
  tt#, qq#,  image_fp, _read
  image_fp, rclose
  fsz#, pp#, end

  
// 画像をセーブ
// 使用法: address, fname, save_image
save_image:
  pp#= pop qq#=
  pp#, image_fp, wopen tt#=
  if tt#=ERROR then ERROR, end
  qq#, 4, + tt#=
  4, qq#, image_fp, _write
  4, tt#,  image_fp, _write
  (qq)!, (tt)!, *  4, * tt#=
  qq#, 8, + qq#=
  tt#, qq#, image_fp, _write
  image_fp, wclose
  0, end

  
// スクリーン画像をセーブ
capture_screen:
  "screenshot.img", image_fp, wopen tt#=
  if tt#=ERROR then end
  4, screen_width,   image_fp, _write
  4, screen_height,  image_fp, _write
  screen_width#,  1, - xx#=
  screen_height#, 1, - yy#=
  for iy#=0 to yy#
    for ix#=0 to xx#
      screen_width#, iy#, * ix#, +  4, *
      graphic_base#, + tt#=
      4, tt#, image_fp, _write
    next ix#
  next iy#
  image_fp, wclose
  end

  
 .data

// 三角関数テーブル
  const TABLE_N 256 // 区分点 （全データ数＝３２１）
sin2table: // ｆ（ｘ）＝３２７６７＊ｓｉｎ（ｘ）
  data 0,804,1607,2410
  data 3211,4011,4807,5601
  data 6392,7179,7961,8739
  data 9511,10278,11038,11792
  data 12539,13278,14009,14732
  data 15446,16150,16845,17530
  data 18204,18867,19519,20159
  data 20787,21402,22004,22594
  data 23169,23731,24278,24811
  data 25329,25831,26318,26789
  data 27244,27683,28105,28510
  data 28897,29268,29621,29955
  data 30272,30571,30851,31113
  data 31356,31580,31785,31970
  data 32137,32284,32412,32520
  data 32609,32678,32727,32757
cos2table: /* ｆ（ｘ）＝３２７６７＊ｃｏｓ（ｘ） */
  data 32767,32757,32727,32678
  data 32609,32520,32412,32284
  data 32137,31970,31785,31580
  data 31356,31113,30851,30571
  data 30272,29955,29621,29268
  data 28897,28510,28105,27683
  data 27244,26789,26318,25831
  data 25329,24811,24278,23731
  data 23169,22594,22004,21402
  data 20787,20159,19519,18867
  data 18204,17530,16845,16150
  data 15446,14732,14009,13278
  data 12539,11792,11038,10278
  data 9511,8739,7961,7179
  data 6392,5601,4807,4011
  data 3211,2410,1607,804
  data 0,-805,-1608,-2411
  data -3212,-4012,-4808,-5602
  data -6393,-7180,-7962,-8740
  data -9512,-10279,-11039,-11793
  data -12540,-13279,-14010,-14733
  data -15447,-16151,-16846,-17531
  data -18205,-18868,-19520,-20160
  data -20788,-21403,-22005,-22595
  data -23170,-23732,-24279,-24812
  data -25330,-25832,-26319,-26790
  data -27245,-27684,-28106,-28511
  data -28898,-29269,-29622,-29956
  data -30273,-30572,-30852,-31114
  data -31357,-31581,-31786,-31971
  data -32138,-32285,-32413,-32521
  data -32610,-32679,-32728,-32758
  data -32767,-32758,-32728,-32679
  data -32610,-32521,-32413,-32285
  data -32138,-31971,-31786,-31581
  data -31357,-31114,-30852,-30572
  data -30273,-29956,-29622,-29269
  data -28898,-28511,-28106,-27684
  data -27245,-26790,-26319,-25832
  data -25330,-24812,-24279,-23732
  data -23170,-22595,-22005,-21403
  data -20788,-20160,-19520,-18868
  data -18205,-17531,-16846,-16151
  data -15447,-14733,-14010,-13279
  data -12540,-11793,-11039,-10279
  data -9512,-8740,-7962,-7180
  data -6393,-5602,-4808,-4012
  data -3212,-2411,-1608,-805
  data -1,804,1607,2410
  data 3211,4011,4807,5601
  data 6392,7179,7961,8739
  data 9511,10278,11038,11792
  data 12539,13278,14009,14732
  data 15446,16150,16845,17530
  data 18204,18867,19519,20159
  data 20787,21402,22004,22594
  data 23169,23731,24278,24811
  data 25329,25831,26318,26789
  data 27244,27683,28105,28510
  data 28897,29268,29621,29955
  data 30272,30571,30851,31113
  data 31356,31580,31785,31970
  data 32137,32284,32412,32520
  data 32609,32678,32727,32757
  data 32767,32757,32727,32678
  data 32609,32520,32412,32284
  data 32137,31970,31785,31580


// 文字列を数値に変換する
xval:
  long xval_p#,xval_sign#,xval_x#,xval_exp#,xval_exp_sign#,xval_d#,xval_order#
  long xval_state#
  enum
    XVAL_SIGN
    XVAL_INTEGER
    XVAL_FRAC
    XVAL_EXP_SIGN
    XVAL_EXP
    XVAL_OCT
    XVAL_HEX
    XVAL_BIN
    XVAL_OTHER
  end
  
  xval_p#=
  ^1.0, xval_sign#= 
  ^0.0, xval_x#=
  ^0.1, xval_order#=
  1, xval_exp_sign#=
  0, xval_exp#=
  XVAL_SIGN, xval_state#=
xval0:
  (xval_p)$, xval_d#=

// 符号入力状態
xval1:
  if xval_state#<>XVAL_SIGN goto xval2
  if xval_d#='+' goto xval_next
  if xval_d#='-' then xval_sign#, ^-1.0, .* xval_sign#= gotoxval_next
  if xval_d#='&' then XVAL_OCT,   xval_state#= gotoxval_next
  if xval_d#='.'   then XVAL_FRAC, xval_state#= gotoxval_next
  XVAL_INTEGER, xval_state#=
  if xval_d#>='0' then if xval_d#<='9' goto xval2
  goto xval_error

// 整数入力状態
xval2:
  if xval_state#<>XVAL_INTEGER goto xval3
  if xval_d#='.' then XVAL_FRAC, xval_state#= gotoxval_next
  if xval_d#='e' then XVAL_EXP_SIGN, xval_state#= gotoxval_next
  if xval_d#<'0' goto xval_end
  if xval_d#>'9' goto xval_end
  xval_d#, '0', - (double) tt#=
  xval_x#, ^10.0, .* tt#, .+ xval_x#=
  goto xval_next

// 小数入力状態
xval3:
  if xval_state#<>XVAL_FRAC goto xval4
  if xval_d#='e' then XVAL_EXP_SIGN, xval_state#= gotoxval_next
  if xval_d#='E' then XVAL_EXP_SIGN, xval_state#= gotoxval_next
  if xval_d#<'0' goto xval_end
  if xval_d#>'9' goto xval_end
  xval_d#,  '0', - (double)  xval_order#, .*
  xval_x#, .+ xval_x#=
  xval_order#, ^10.0, ./ xval_order#=
  goto xval_next

// 指数符号入力状態
xval4:
  if xval_state#<>XVAL_EXP_SIGN goto xval5
  if xval_d#='+' goto xval_next
  if xval_d#='-' then xval_exp_sign#, -1, * xval_exp_sign#= gotoxval_next
  XVAL_EXP, xval_state#=
  if xval_d#>='0' then if xval_d#<='9' goto xval5
  goto xval_error

// 指数入力状態
xval5:
  if xval_state#<>XVAL_EXP goto xval6
  if xval_d#<'0' goto xval5_0
  if xval_d#>'9' goto xval5_0
  xval_d#, '0', - tt#=
  xval_exp#, 10, * tt#, + xval_exp#=
  goto xval_next

// 指数がプラスで終了
xval5_0:
  if xval_x#.=^0.0 goto xval_end
  if xval_exp#=0 goto xval_end
  if xval_exp_sign#<0 goto xval5_1
  if xval_exp#>=40 goto xval_error
  for ii#=1 to xval_exp#
     xval_x#, ^10.0, .* xval_x#=
  next ii#
  goto xval_end

// 指数がマイナスで終了
xval5_1:
  if xval_exp#>=40 then ^0.0, xval_x#= gotoxval_end
  for ii#=1 to xval_exp#
     xval_x#, ^10.0, ./ xval_x#=
  next ii#
  goto xval_end

// 8進数入力
xval6:
  if xval_state#<>XVAL_OCT goto xval7
  if xval_d#='h' then XVAL_HEX, xval_state#= gotoxval_next
  if xval_d#='b' then XVAL_BIN, xval_state#= gotoxval_next
  if xval_d#='o' goto xval_next
  if xval_d#<'0' goto xval_end
  if xval_d#>'7' goto xval_end
  xval_d#, '0', - (double) tt#=
  xval_x#, ^8.0, .* tt#, .+ xval_x#=
  goto xval_next
  
// 16進数入力
xval7:
  if xval_state#<>XVAL_HEX goto xval8
  if xval_d#<'0' goto xval7_1
  if xval_d#>'9' goto xval7_1
  xval_d#, '0', - (double) tt#=
  xval_x#, ^16.0, .* tt#, .+ xval_x#=
  goto xval_next
xval7_1:
  if xval_d#<'a' goto xval_end
  if xval_d#>'f' goto xval_end
  xval_d#, 'a'-10, - (double) tt#=
  xval_x#, ^16.0, .* tt#, .+ xval_x#=
  goto xval_next

// 2進数入力
xval8:
  if xval_state#<>XVAL_BIN goto xval_error
  if xval_d#<'0' goto xval_end
  if xval_d#>'1' goto xval_end
  xval_d#, '0', - (double) tt#=
  xval_x#, ^2.0, .* tt#, .+ xval_x#=
  goto xval_next

// エラー終了
xval_error:
  xval_p#, NaN, end

// 正常終了
xval_end:
  xval_sign#, xval_x#, .* xval_x#=
  xval_p#, xval_x#, end

// 次の文字を取り込む
xval_next:
  xval_p#++
  goto xval0


// 数値を文字列に変換する
xstr:
  long real_a#,real_d#,real_p#
  long exp_val#,exp_max#,exp_min#,exp_pres#,exp_count#
  char real_buf$(32),chr_buf$(8)

  real_a#=
  
//  "xstr:", prints nl
  

  ^999999999, exp_max#=
  ^0.0001, exp_min#=
  ^0.0000000001, exp_pres#=
 0, exp_count#=
  NULL, real_buf$=
  real_buf, real_p#=
  ^1.0, exp_val#=
  
//  "xstr0:", prints nl
  
  if real_a#.=^0.0 then "0", end
  if real_a#.<^0.0 then ^0.0, real_a#, .- real_a#= "-", put_real_buf

//  "xstr1:", prints nl

  if real_a#.>exp_max# goto real1_0
  if real_a#.<exp_min#  goto real2_0


//  指数表示でない場合

// "no exp:", prints nl

real0:
  exp_val#, ^10.0, .* exp_val#=
  if exp_val#.<=real_a# goto real0
  exp_val#, ^10.0, ./ exp_val#=

real1:
  if exp_val#.>^0.2   goto real2
  if exp_val#.<^0.02 goto real2
  ".", put_real_buf
real2:
  real_a#, exp_val#, ./  (_long) real_d#=
  '0', real_d#, + chr_buf+0$=  NULL, chr_buf+1$= chr_buf, put_real_buf
  real_d#, (double) exp_val#, .* real_a#, swap .- real_a#=
  exp_val#, ^10.0, ./ exp_val#=
  if exp_val#.>=^1.0 goto real1
  if real_a#.>exp_pres# goto real1

// "xstr end", prints nl

  real_buf, end

//   指数表示(+)
real1_0:

// "exp+:", prints nl

real1_01:

  exp_val#, ^10.0, .* exp_val#=
  exp_count#++
  if exp_val#.<=real_a# goto real1_01
  exp_val#, ^10.0, ./ exp_val#=
  exp_count#--
  real_a#, exp_val#, ./ real_a#=
  ^1.0, exp_val#=
real1_1:
  if exp_val#.>^0.2   goto real1_2
  if exp_val#.<^0.02 goto real1_2
  ".", put_real_buf
real1_2:
  real_a#, exp_val#, ./  (_long) real_d#=
  '0', real_d#, + chr_buf+0$=  NULL, chr_buf+1$= chr_buf, put_real_buf
  real_d#, (double) exp_val#, .* real_a#, swap .- real_a#=
  exp_val#, ^10.0, ./ exp_val#=
  if real_a#.>exp_pres# goto real1_1
  "e+", put_real_buf
  exp_count#, dec put_real_buf

// "xstr end", prints nl

  real_buf, end

//   指数表示(-)
real2_0:

// "exp-:", prints nl

real2_01:
  exp_val#, ^10.0, ./ exp_val#=
  exp_count#--
  if exp_val#.>real_a# goto real2_01
  real_a#, exp_val#, ./ real_a#=
  ^1.0, exp_val#=
real2_1:
  if exp_val#.>^0.2   goto real2_2
  if exp_val#.<^0.02 goto real2_2
  ".", put_real_buf
real2_2:
  real_a#, exp_val#, ./  (_long) real_d#=
  '0', real_d#, + chr_buf+0$=  NULL, chr_buf+1$= chr_buf, put_real_buf
  real_d#, (double) exp_val#, .* real_a#, swap .- real_a#=
  exp_val#, ^10.0, ./ exp_val#=
  if real_a#.>exp_pres# goto real2_1
  "e", put_real_buf
  exp_count#, dec put_real_buf

// "xstr end", prints nl

  real_buf, end

// バッファに文字列を追加する
put_real_buf:
  tt#= real_buf, strcat
  
//  "put_real_buf:", prints nl 
  
  tt#, strlen real_p#, + real_p#=
  
//  "put_real_buf end:", prints nl 
  
  end


// 数値を表示する 
printr:
  CONOUT, fprintr
  end


// 数値をファイルに出力する 
fprintr:
  long pp7#
 pp7#= swap xstr pp7#, fprints
 end


 .data

// グラフィックAPIのガイド
graphic_guid:
 data 0x4a3823dc9042a9de
 data 0x6a5180d0de7afb96

// ポインタAPIのガイド
pointer_guid:
 data 0x11d50b7531878c87
 data 0x4dc13f2790004f9a

 long _end#
 