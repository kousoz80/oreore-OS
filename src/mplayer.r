// メディアプレーヤ ver 0.0.1
// システムスピーカを使用
// サポートしているフォーマットは Windows wav形式 PCM 8bit 8KS/s

 const INTERVAL 400000 // サンプリング周期((8KS/s)
 const INTERVAL_VIDEO 1000

  long sound_data#,sound_end#
  long video_data#,video_timer#
  long interval#,volume#,tevent#
  long gbuf#,disp_x#,disp_y#
  long is_running#,gpu_running#
  char header$(256)
  char fp$(FILE_SIZE)

// ビデオ画像を再生する
play_video:


  long fsize#,tt0#

  1, gpu_running#=
  if video_timer#>=INTERVAL_VIDEO goto play_video1
  if is_running#=0 goto play_video_end
/ rdx=0x80/
/ in al,(dx)/
  goto play_video  

play_video1:
  if is_running#=0 goto play_video_end
  0, video_timer#=
  0, (gbuf)#=
  8, gbuf#, fp,
/ push rbx/
/ rax=32/
/ rsp-=rax/
/  call _read0/
/ rbx=32/
/ rsp+=rbx/
/ pop rbx/ 
  if (gbuf)#=0 goto play_video_end

  screen_width#, 2, / tt0#=
  (gbuf)!, 2, / tt0#, swap - disp_x#=
  screen_height#, 2, / tt0#=
  (gbuf)!(1), 2, / tt0#, swap - disp_y#=

  gbuf#, 8, + tt0#=
  (gbuf)!, (gbuf)!(1), * 4, *
  tt0#, fp,
/ push rbx/
/ rax=32/
/ rsp-=rax/
/ call _read0/
/ rbx=32/
/ rsp+=rbx/
/ pop rbx/ 
  tt0#=
  if tt0#=0 goto play_video_end
  disp_x#, disp_y#, gbuf#,
/ push rbx/
/ rax=32/
/ rsp-=rax/
/ call draw_image0/
/ rbx=32/
/ rsp+=rbx/
/ pop rbx/ 
  if is_running#<>0 goto play_video

play_video_end:
  0, gpu_running#=
/ ret/

// ファイルから読み込む 
_read0:
  long len_1184484138#
/ rcx=FILE_FP(rdi)/
/ rax=rdx/
/ rdx=len_1184484138/
/ (rdx)=rax/
/ r8=rsi/
/ push rbx/
/ rax=32/
/ rsp-=rax/
/ rax=FILE_READ(rcx)/
/ call (rax)/
/ rbx=32/
/ rsp+=rbx/
/ pop rbx/
/ rax=len_1184484138/
/ rdi=(rax)/
/ ret/

// イメージを描画する
draw_image0:
  count ii#,jj#
  long pp0#,qq0#,gx#,gy#,gx1#,gy1#,rx#,ry#
  qq0#= pop gy#= pop gx#=
  if qq0#=NULL goto xdraw_image1
  (qq0)!, rx#=
  if rx#<0 then end
  if rx#>=screen_width# goto xdraw_image1
  qq0#, 4, + qq0#=
  (qq0)!, ry#=
  if ry#<0 goto xdraw_image1
  if ry#>=screen_height# goto xdraw_image1
  qq0#, 4, + qq0#=
  gx#, rx#, + 1, - gx1#=
  gy#, ry#, + 1, - gy1#=
  for ii#=gy# to gy1#
    for jj#=gx# to gx1#
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp0#=
      if (qq0)$(3)=0 then (qq0)!, (pp0)!=
      qq0#, 4, + qq0#=
    next jj#
  next ii#
  jj#, ii#,
xdraw_image1:
/ ret/


read_rtc_second:

  char time_val$(256)
/ rcx=time_val/
/ rdx=time_cap/
/ rax=__runtime_service/
/ rax=(rax)/
/ rax=0x18(rax)/
/ call (rax)/
  time_val$(6), end


 .data
time_cap:
 data 0x100000001
 data 0x0
  end

wait_1us:
/ rdx=0x80/
/ in al,(dx)/
  end

read_tsc:
/ rax=0/
/ cpuid/
/ rdtsc/
/ ext eax/
/ rdi=rax/
  end


_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _1291522240_in

 end
_1291522240_in:
start_player:





  long tt#,pp#,qq#,time0#,time1#
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
/ rdi=rax/
 
// クロックを計測してサンプリングインターバルを求める(クロックが4GHz超えると変になるので注意)
  read_rtc_second pp#=
loop01:
  wait_1us
  read_rtc_second qq#=
  if pp#=qq# goto loop01
  read_tsc time0#=
loop02:
  wait_1us
  read_rtc_second pp#=
  if pp#=qq# goto loop02
  read_tsc time1#=
  time1#, time0#, - 0xffffffff, and 8700, / interval#=

  // 表示バッファを確保する
  screen_width#, screen_height#, * 4, * malloc gbuf#=
  if gbuf#=NULL then "display buffer alloc", gotoerror_end

  // ヘッダをロード
  8, header, fp, _read tt#=
  if tt#=ERROR then fp, rclose "header read",  gotoerror_end
  
  // メモリを割り当てる
  header+4!, qq#= malloc sound_data#=
  if sound_data#=NULL then fp, rclose "data alloc", gotoerror_end

  // データをロード
  qq#, sound_data#, fp, _read tt#=
  if tt#=ERROR then fp, rclose sound_data#, free "data load", gotoerror_end
  sound_data#, pp#= qq#, + sound_end#=

// 音声データの先頭を探す
loopx:
  if pp#>=sound_end# then fp, rclose sound_data#, free "data format", gotoerror_end
  if (pp)$<>'d' then pp#++ gotoloopx
  pp#++
  if (pp)$<>'a' goto loopx
  pp#++
  if (pp)$<>'t'  goto loopx
  pp#++
  if (pp)$<>'a' goto loopx
  pp#++

  interval#, 300, /  volume#=
  INTERVAL_VIDEO, video_timer#=

// 再生開始
  1, is_running#=
  play_video, vector_ap1#=

// 演奏開始
/ cli/
loop:
  (pp)$, volume#, * time0#=
  interval#, time0#, - time1#=

// rsi:直前のTSCレジスタの値
// rdi:タイマー値

/ rdx=0x61/
/ in al,(dx)/
/ rcx=0x03/
/ rax|=rcx/
/ out (dx),al/

/ rax=0/
/ cpuid/
/ rdtsc/
/ ext eax/
/ rsi=rax/

/ rdi=time0/
/ rdi=(rdi)/

loop0:
/ rdx=0x61/
/ in al,(dx)/
/ rax=0/
/ cpuid/
/ rdtsc/
/ ext eax/
/ rax-=rdi/
/ rax-=rsi/
/ rdx=0x80000000/
/ rax&=rdx/
/ jnz loop0/

/ rdx=0x61/
/ in al,(dx)/
/ rcx=0xfc/
/ rax&=rcx/
/ out (dx),al/

/ rax=0/
/ cpuid/
/ rdtsc/
/ ext eax/
/ rsi=rax/

/ rdi=time1/
/ rdi=(rdi)/

loop1:
/ rdx=0x61/
/ in al,(dx)/
/ rax=0/
/ cpuid/
/ rdtsc/
/ ext eax/
/ rax-=rdi/
/ rax-=rsi/
/ rdx=0x80000000/
/ rax&=rdx/
/ jnz loop1/

  video_timer#++
  pp#++
  if pp#<sound_end# goto loop
  0, is_running#=
/ sti/  

// 終了処理
  fp, rclose
loop2:
  if gpu_running#<>0 then sync gotoloop2
  sound_data#, free
  gbuf#, free
  end

// エラー終了
error_end:
  prints
  " ERROR!", prints nl
  tt#, hex prints nl
/ rdx=0x61/
/ in al,(dx)/
/ ext al/
/ rdi=0xfc/
/ rax&=rdi/
/ rdx=0x61/
/ out (dx),al/
  end

 end
