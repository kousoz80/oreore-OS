// 音声再生プログラム ver 0.0.1
// システムスピーカを使用
// サポートしているフォーマットは Windows wav形式 PCM モノラル8bit 8KS/s

 const INTERVAL 95// サンプリング周期((8KS/s)
 const HEADER_SIZE 0x3a // wavファイルのヘッダサイズ
 const DATA_SIZE 0x36    // wavファイルのデータサイズ

  long sound_data#
  long sound_end#
  long volume#
  char header$(256)
  char fp$(FILE_SIZE)


_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _2023965805_in

 end
_2023965805_in:
start_player:







  count ii#
  long interval#,pp#,tt#,time0#,time1#
  if argc#<2 then "argument", gotoerror_end
  argv#(1), fp, ropen tt#=
  if tt#=ERROR then "file open", gotoerror_end
  
// I/O初期化
/ rax=0xb0/
/ rdx=0x43/
/ out (dx),al/
/ rax=0x01/
/ rdx=0x42/
/ out (dx),al/
/ rax=0x00/
/ rdx=0x42/
/ out (dx),al/
/ rdx=0x61/
/ in al,(dx)/
/ ext al/
/ rdi=0x03/
/ rax|=rdi/
/ rdx=0x61/
/ out (dx),al/

  // ヘッダをロード
  HEADER_SIZE, header, fp, _read tt#=
  if tt#=ERROR then fp, rclose "header read",  gotoerror_end
  
  // メモリを割り当てる
  header+DATA_SIZE!, malloc sound_data#= pp#=
  if sound_data#=NULL then fp, rclose "data alloc", gotoerror_end

  // データをロード
  header+DATA_SIZE!, sound_data#, fp, _read tt#=
  fp, rclose
  if tt#=ERROR then sound_data#, free "data load", gotoerror_end
  sound_data#, header+DATA_SIZE!, + sound_end#=
  INTERVAL, interval#=
   3, volume#=

// 再生開始
/ cli/
loop:
  (pp)$, volume#, / time0#=
  interval#, time0#, - time1#=

/ rdx=0x61/
/ in al,(dx)/
/ ext al/
/ rdi=0x03/
/ rax|=rdi/
/ rdx=0x61/
/ out (dx),al/
  for ii#=0 to time0#
/ rdx=0x80/
/ in al,(dx)/
  next ii#
  
/ rdx=0x61/
/ in al,(dx)/
/ ext al/
/ rdi=0xfd/
/ rax&=rdi/
/ rdx=0x61/
/ out (dx),al/
  for ii#=0 to time1#
/ rdx=0x80/
/ in al,(dx)/
  next ii#

  pp#++
  if pp#<sound_end# goto loop
/ sti/  

// メモリ開放
  sound_data#, free
  end

// エラー終了
error_end:
  prints
  " ERROR!", prints nl
/ rdx=0x61/
/ in al,(dx)/
/ ext al/
/ rdi=0xfc/
/ rax&=rdi/
/ rdx=0x61/
/ out (dx),al/
  end

 end
