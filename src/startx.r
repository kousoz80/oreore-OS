// ウィンドウシステム for Kous-OS ver 0.04

 const MOUSE_X 0
 const MOUSE_Y 4
 const MOUSE_LEFT 12
 const MOUSE_RIGHT 13
 const MAX_MOUSE_SPEED 10
 const CURSOR_SIZE 16
 
 long graphic_protocol#
 long pointer_protocol#
 long graphic_mode#,graphic_info#,graphic_base#
 long set_mode#,screen_width#,screen_height#,color#
 long mouse_reset#,mouse_get_state#
 long mouse_x#,mouse_y#,mouse_left#,mouse_right#,mouse_mode#,mouse_speed#
 long mouse_dx#,mouse_dy#,is_first#,k#
 char mouse_cursor$(1024),mouse_cursor_area$(1024),mouse_data$(16)

 
main:
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

  load_cursor k#=
  if k#<0 then end    // マウスカーソルが取得できなかったら終了
  load_wallpaper
  
  0xffffff, color#=
  1, is_first#=
  0, mouse_mode#=
  1, mouse_speed#=
  screen_width#,  2, / mouse_x#=
  screen_height#, 2, / mouse_y#=
  init_mouse
  save_cursor_area
  draw_cursor
loop:  
  get_mouse_state k#=
  if k#<0 goto exit
  if k#=0 goto skip // マウスカーソルの座標が動いていないときはスキップ
  restore_cursor_area
  mouse_x#, mouse_dx#, + mouse_x#=
  mouse_y#, mouse_dy#, + mouse_y#=
  if mouse_x#<0 then 0, mouse_x#=
  if mouse_x#>=screen_width#  then screen_width#,  1, - mouse_x#=
  if mouse_y#<0 then 0, mouse_y#=
  if mouse_y#>=screen_height# then screen_height#, 1, - mouse_y#=
  save_cursor_area
  draw_cursor
skip:

// GUIコンポーネント等のイベント処理


//

  goto loop
exit:
  cls
  end


// グラフィック画面を初期化する
screen:

//  "screen", prints nl
  
/ rcx=graphic_protocol/
/ rcx=(rcx)/
/ rdx=rdi/
/ rax=set_mode/
/ rax=(rax)/
/ call (rax)/
  end


// マウスを初期化する
init_mouse:

//  "init mouse", prints nl
  
/ rcx=pointer_protocol/
/ rcx=(rcx)/
/ rdx=0/
/ rax=mouse_reset/
/ rax=(rax)/
/ call (rax)/
  end


// マウスの状態を得る
get_mouse_state:

//  "get mouse state", prints nl
  
  0, mouse_left#= mouse_right#= mouse_dx#= mouse_dy#=
  inkey k#=
  if k#=7 then 1, mouse_mode#, - mouse_mode#=
  if mouse_mode#=0 goto get_keyboad_mouse
/ rcx=pointer_protocol/
/ rcx=(rcx)/
/ rdx=mouse_data/
/ rax=mouse_get_state/
/ rax=(rax)/
/ call (rax)/
/ rdi=rax/
  k#=
  if k#<>0 then 0, end
  mouse_data+MOUSE_X!, 16384, / mouse_dx#=
  mouse_data+MOUSE_Y!, 16384, / mouse_dy#=
  mouse_data+MOUSE_LEFT$,   mouse_left#=
  mouse_data+MOUSE_RIGHT$, mouse_right#=
  1, end


// キーボードマウス
get_keyboad_mouse:

//  "keyboad mouse", prints nl

  if k#=0 then 0, end
  if k#=1 then 0, mouse_speed#, - mouse_dy#=
  if k#=2 then mouse_speed#, mouse_dy#=
  if k#=3 then mouse_speed#, mouse_dx#=
  if k#=4 then 0, mouse_speed#, -   mouse_dx#=
  if k#=6 then MAX_MOUSE_SPEED, mouse_speed#, - mouse_speed#=
  if k#=8 then MAX_MOUSE_SPEED, mouse_speed#, - mouse_speed#=
  if k#=2097152 then 1, mouse_left#=
  if k#=851968   then 1, mouse_right#=
  if k#=262144 then -1, end
  1, end


// マウスカーソル領域を退避する
save_cursor_area:
  count ii#,jj#
  long x0#,y0#,x1#,y1#,pp#,qq#

//  "save cursor area", prints nl
  
  mouse_x#, x0#= CURSOR_SIZE-1, + x1#=
  if x1#>=screen_width#  then screen_width#,  1, - x1#= 
  mouse_y#, y0#= CURSOR_SIZE-1, + y1#=
  if y1#>=screen_height# then screen_height#, 1, - y1#= 
  mouse_cursor_area, qq#=
  for ii#=y0# to y1#
    for jj#=x0# to x1#
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp#=
      (pp)!, (qq)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  end


// マウスカーソル領域を復帰する
restore_cursor_area:

//  "resotre cursor area", prints nl
  
  mouse_cursor_area, qq#=
  for ii#=y0# to y1#
    for jj#=x0# to x1#
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp#=
      (qq)!, (pp)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  end

  
// マウスカーソルを描く
draw_cursor:
  long x2#,x3#,y2#,y3#,tt#

//  "draw cursor", prints nl
  
  mouse_x#, x2#= CURSOR_SIZE-1, + x3#=
  if x3#>=screen_width#  then screen_width#,   1, - x3#= 
  mouse_y#, y2#= CURSOR_SIZE-1, + y3#=
  if y3#>=screen_height# then screen_height#, 1, - y3#= 
  for ii#=y2# to y3#
    for jj#=x2# to x3#
      ii#, y2#, - CURSOR_SIZE, * jj#, +
       x2#, -  4, * mouse_cursor, + qq#=
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp#=
      (qq)!,  0xff000000, and tt#= 
      if tt#=0 then (qq)!, (pp)!=  // 最上位の8ビットが0でないときは透明色とする
    next jj#
  next ii#
  end

  
// マウスカーソルをロード
load_cursor:
  char fp$(FILE_SIZE)

//  "load cursor", prints nl
  
  CURSOR_SIZE, CURSOR_SIZE, * 4, * pp#=
  "cursor.dat", fp, ropen qq#=
  if qq#=ERROR then -1, end
  pp#, mouse_cursor, fp, _read
  fp, rclose 
  0, end

  
// 壁紙をロード(描く)
load_wallpaper:

//  "load wallpaper", prints nl
  
  screen_width#, screen_height#, * 4, * pp#=
  "wallpaper.dat", fp, ropen qq#=
  if qq#=ERROR then end
  pp#, graphic_base#, fp, _read
  fp, rclose 
  end

  
// 点を打つ
pset:
  long px#,py#
  py#= pop px#=
  py#, screen_width#, * px#, +
  4, * graphic_base#, + pp#=
  color#, (pp)!=
  end


// 与えられた座標の色を返す
point:
  py#= pop px#=
  py#, screen_width#, * px#, +
  4, * graphic_base#, + pp#=
  (pp)!,  end


 .data

// グラフィックAPIのガイド
graphic_guid:
 data 0x4a3823dc9042a9de
 data 0x6a5180d0de7afb96

// マウスAPIのガイド
pointer_guid:
 data 0x11d50b7531878c87
 data 0x4dc13f2790004f9a
