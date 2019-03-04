// ウィンドウシステム for Kous-OS ver 0.04

 const MOUSE_X 0
 const MOUSE_Y 4
 const MOUSE_LEFT 12
 const MOUSE_RIGHT 13
 const MOUSE_SENSIVITY 6000
 const MAX_MOUSE_SPEED 10
 const CURSOR_SIZE 16
 const FONT_WIDTH  14
 const FONT_HEIGHT 18
 
 long graphic_protocol#
 long pointer_protocol#
 long graphic_mode#,graphic_info#,graphic_base#
 long set_mode#,screen_width#,screen_height#,color#,co#
 long mouse_reset#,mouse_get_state#
 long mouse_x#,mouse_y#,mouse_left#,mouse_right#,mouse_mode#,mouse_speed#
 long mouse_dx#,mouse_dy#,copy_area#,font_area#,k#
 char mouse_cursor$(1024),mouse_cursor_area$(1024),mouse_data$(16)

 count ii#,jj#,ix#,iy#
 long   x0#,y0#,x1#,y1#,pp#,qq#
 long   x2#,x3#,y2#,y3#,ss#,tt#
 long   px#,py#,qx#,qy#
 long   tx#,ty#,rx#,ry#
 long   vx#,vy#,vx1#,vy1#,flg#
 long   gx#,gx1#,gx2#,gx3#,gx4#
 long   gy#,gy1#,gy2#,gy3#,gy4#
 char  fp$(FILE_SIZE)

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

  screen_width#, screen_height#, * 4, * malloc copy_area#=
  if copy_area#=NULL then end
  FONT_WIDTH, FONT_HEIGHT, * 256, * tt#= malloc font_area#=
  if font_area#=NULL then end

  // フォントエリアをクリア
  tt#, 8, / 1, - tt#=
  for ii#=0 to tt#
    0, (font_area)#(ii#)=
  next ii#

  load_cursor k#=
  if k#<0 then end    // マウスカーソルが取得できなかったら終了
  load_font k#=
  if k#<0 then end    // フォントが取得できなかったら終了
  load_wallpaper
  
  0xffffff, color#=
  0, mouse_mode#=
  MAX_MOUSE_SPEED-1, mouse_speed#=
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
  copy_area#, free
  font_area#, free
  end


// グラフィック画面を初期化する
init_screen:
/ rcx=graphic_protocol/
/ rcx=(rcx)/
/ rdx=rdi/
/ rax=set_mode/
/ rax=(rax)/
/ call (rax)/
  end


// マウスを初期化する
init_mouse:
/ rcx=pointer_protocol/
/ rcx=(rcx)/
/ rdx=0/
/ rax=mouse_reset/
/ rax=(rax)/
/ call (rax)/
  end


// マウスの状態を得る
get_mouse_state:
  0, mouse_left#= mouse_right#= mouse_dx#= mouse_dy#=
  inkey k#=
  if k#=262144 then -1, end                                      // CTRL-Dで終了
  if k#=7 then 1, mouse_mode#, - mouse_mode#=    // Deleteキーでマウス・キーボードの切り替え
  if mouse_mode#=0 goto get_keyboad_mouse
/ rcx=pointer_protocol/     // マウスの状態を読み込む
/ rcx=(rcx)/
/ rdx=mouse_data/
/ rax=mouse_get_state/
/ rax=(rax)/
/ call (rax)/
/ rdi=rax/
  k#=
  if k#<>0 then 0, end
  mouse_data+MOUSE_X!, MOUSE_SENSIVITY, / mouse_dx#=
  mouse_data+MOUSE_Y!, MOUSE_SENSIVITY, / mouse_dy#=
  mouse_data+MOUSE_LEFT$,   mouse_left#=
  mouse_data+MOUSE_RIGHT$, mouse_right#=
  1, end


// キーボードマウス
get_keyboad_mouse:
  if k#=0 then 0, end
  if k#=1 then 0, mouse_speed#, - mouse_dy#=   //  矢印キーでマウスカーソルの移動
  if k#=2 then mouse_speed#, mouse_dy#=
  if k#=3 then mouse_speed#, mouse_dx#=
  if k#=4 then 0, mouse_speed#, -   mouse_dx#=
  if k#=6 then MAX_MOUSE_SPEED, mouse_speed#, - mouse_speed#= // Insertキーでカーソル移動速度の切り替え
  if k#=8 then MAX_MOUSE_SPEED, mouse_speed#, - mouse_speed#=
  if k#=2097152 then 1, mouse_left#=       // SPACEキーで左クリック
  if k#=851968   then 1, mouse_right#=     // Enterキーで右クリック
  1, end


// マウスカーソル領域を退避する
save_cursor_area:
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
  CURSOR_SIZE, CURSOR_SIZE, * 4, * pp#=
  "cursor.dat", fp, ropen qq#=
  if qq#=ERROR then -1, end
  pp#, mouse_cursor, fp, _read
  fp, rclose 
  0, end

  
// フォントをロード
load_font:
  FONT_WIDTH, FONT_HEIGHT, * 256, * pp#=
  "font.dat", fp, ropen qq#=
  if qq#=ERROR then -1, end
  pp#, font_area#, fp, _read
  fp, rclose 
  0, end

  
// 壁紙をロード(描く)
load_wallpaper:
  screen_width#, screen_height#, * 4, * pp#=
  "wallpaper.dat", fp, ropen qq#=
  if qq#=ERROR then end
  pp#, graphic_base#, fp, _read
  fp, rclose 
  end

  
// 描画色をセット
set_color:
  color#=
  end
  

// 描画色を得る
get_color:
  color#,
  end


// 点を打つ
draw_point:
  py#= pop px#=
  py#, screen_width#, * px#, +
  4, * graphic_base#, + pp#=
  color#, (pp)!=
  end


// 与えられた座標の色を返す
get_point:
  py#= pop px#=
  py#, screen_width#, * px#, +
  4, * graphic_base#, + pp#=
  (pp)!,  end

  
// 線を引く
// 使用法: DrawLine[gx,gy,gx1,gy1]
DrawLine:
  long al#
  al#=
  (al)#(1), gx#= (al)#(2), gy#= (al)#(3), gx1#= (al)#(4), gy1#=
  line
  retf

line:
  gx#, gx1#, - tx#= abs rx#=
  gy#, gy1#, - ty#= abs ry#=
  if ry#>rx# goto line_y
  if gx#=gx1# then gx#, gy#, draw_point end
  
  // モードX
  line_x:
    1, rx#=
    if tx#<0  then -1, rx#=
    for ix#=0 to tx# step rx#
      ix#, ty#,  * tx#, / gy1#, + ry#=
      ix#, gx1#, + ry#, draw_point
    next ix#
    end
    
  line_y: /* モード　ｙ */
    1, ry#=
    if ty#<0  then -1, ry#=
    for iy#=0 to ty# step ry#
      iy#, tx#,  * ty#, / gx1#, + rx#=
      iy#, gy1#, + rx#, swap draw_point
    next iy#
    end
    
// 長方形を描く
// 使用法: DrawRect[gx,gy,gx1,gy1]
DrawRect: 
  long ar#
  ar#=
  (ar)#(1), gx#=   (ar)#(2), gy#=
  (ar)#(3), gx1#= (ar)#(4), gy1#=
  rect
  retf

// 長方形を描いてうめる
// 使用法: FillRect[gx,gy,gx1,gy1]
FillRect: 
  long arf#
  arf#=
  (arf)#(1), gx#=   (arf)#(2), gy#=
  (arf)#(3), gx1#= (arf)#(4), gy1#=
  rect
  (arf)#(1), (arf)#(3), + 2, / gx#=
  (arf)#(2), (arf)#(4), + 2, / gy#=
  gx#, gy#, paint
  retf

rect:
  1, rx#= ry#=
  if gy#<gy1# then -1, ry#=
  if gx#<gx1# then -1, rx#=
  for ix#=gx1# to gx# step rx#
    ix#, gy#,  draw_point
    ix#, gy1#, draw_point
  next ix#
  for iy#=gy1# to gy# step ry#
    gx#,  iy#, draw_point
    gx1#, iy#, draw_point
  next iy#
  retf
  
// 楕円を描く
// 使用法: DrawCircle[gx,gy,gx1,gy1]
DrawCircle:
  long ac#
  ac#=
  (ac)#(1), gx#=   (ac)#(2), gy#=
  (ac)#(3), gx1#= (ac)#(4), gy1#=
  circle
  retf

// 楕円を描いてうめる
// 使用法: FillCircle[gx,gy,gx1,gy1]
FillCircle:
  long acf#
  acf#=
  (acf)#(1), gx#= (acf)#(2), gy#= (acf)#(3), gx1#= (acf)#(4), gy1#=
  circle
  (acf)#(1), (acf)#(3), + 2, / gx#=
  (acf)#(2), (acf)#(4), + 2, / gy#=
  gx#, gy#, paint
  retf

circle:
  gx#,  vx#=  gy#,  vy#=
  gx1#, vx1#= gy1#, vy1#=
  if gx1#>gx# then gx1#, gx#, swap gx#= swap gx1#=
  if gy1#>gy# then gy1#, gy#, swap gy#= swap gy1#=
  gx#, gx1#, + 2, / px#=
  gy#, gy1#, + 2, / py#=
  gx#, gx1#, - 2, / qx#=
  if qx#=0 then line end
  gy#, gy1#, - 2, / qy#=
  if qy#=0 then line end
  gx#, gx1#=  py#, gy1#=
  for ii#=1 to TABLE_N
    qx#, cos2table#(ii#), * 32767, / px#, + gx#=
    qy#, sin2table#(ii#), * 32767, / py#, + gy#=
    line
    gx#, gx1#= gy#, gy1#=
  next ii#
  vx#,  gx#=  vy#,  gy#=
  vx1#, gx1#= vy1#, gy1#=
  retf


// 三角形を描く
// 使用法: DrawTriangle[gx,gy,gx1,gy1,gx2,gy2]
DrawTriangle:
  long at#
  at#=
  DrawLine[(at)#(1),(at)#(2),(at)#(3),(at)#(4)]
  DrawLine[(at)#(3),(at)#(4),(at)#(5),(at)#(6)]
  DrawLine[(at)#(5),(at)#(6),(at)#(1),(at)#(2)]
  retf


// 三角形を描いてうめる
// 使用法: FillTriangle[gx,gy,gx1,gy1,gx2,gy2]
FillTriangle:
  long atf#
  atf#=
  DrawLine[(atf)#(1),(atf)#(2),(atf)#(3),(atf)#(4)]
  DrawLine[(atf)#(3),(atf)#(4),(atf)#(5),(atf)#(6)]
  DrawLine[(atf)#(5),(atf)#(6),(atf)#(1),(atf)#(2)]
  (atf)#(1), (atf)#(3), + (atf)#(5), + 3, / gx#= 
  (atf)#(2), (atf)#(4), + (atf)#(6), + 3, / gy#= 
  gx#, gy#, paint
  retf


// 塗る
paint:
  const Q_SIZE   4096
  long   q_buf#(Q_SIZE)
  long   put_p#,get_p#
  
  gy#= pop gx#=
  0, put_p#= get_p#=
  if co#=color# then end
  gx#, gy#, put_pset

  paint1:  /* うった点の座標を求める */
    if get_p#=put_p# then end
    q_buf#(get_p#), vx#=
    get_p#, 1, + get_p#=
    q_buf#(get_p#), vy#=
    get_p#, 1, + get_p#=
    if get_p#>=Q_SIZE then 0, get_p#=

    /* うった点の四方にまた点をうつ */
    vx#, 1, + vy#, put_pset
    vx#, 1, - vy#, put_pset
    vy#, 1, + vx#, swap put_pset
    vy#, 1, - vx#, swap put_pset
  goto paint1
  
  /*  点をうってその座標を記録する */
  put_pset:
    qy#= pop qx#=
    if qx#<0     then end  /* 範囲外ならしない */
    if qx#>=screen_width#  then end
    if qy#<0     then end
    if qy#>=screen_height# then end
    qx#, qy#, get_point co#=
    if co#=color# then end /* すでに点がうってあるときもしない */
    qx#, qy#, draw_point
    qx#, q_buf#(put_p#)=
    put_p#, 1, + put_p#=
    qy#, q_buf#(put_p#)=
    put_p#, 1, + put_p#=
    if put_p#>=Q_SIZE then 0, put_p#=
    end
    
/* コピーエリアに画像をコピー */
// 使用法: GCopy[gx,gy,gx1,gy1]
GCopy:
  long ap#
  ap#=
  (ap)#(1), gx#= (ap)#(2), gy#= (ap)#(3), gx1#= (ap)#(4), gy1#=
  if gx1#>=screen_width#  then screen_width#,  1, - gx1#= 
  if gy1#>=screen_height# then screen_height#, 1, - gy1#= 
  copy_area#, qq#=
  gx1#, gx#, - (qq)!=
  qq#, 4, + qq#=
  gy1#, gy#, - (qq)!=
  qq#, 4, + qq#=
  for ii#=gy# to gy1#
    for jj#=gx# to gx1#
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp#=
      (pp)!, (qq)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  retf


/* コピーエリアから貼り付ける */
gpaste:
  gy#= pop gx#=
  copy_area#, qq#=
  (qq)!, rx#=
  if rx#<0 then end
  qq#, 4, + qq#=
  (qq)!, ry#=
  if ry#<0 then end
  qq#, 4, + qq#=
  gx#, rx#, + gx1#=
  gy#, ry#, + gy1#=
  if gx1#>=screen_width#  then screen_width#,  1, - gx1#= 
  if gy1#>=screen_height# then screen_height#, 1, - gy1#= 
  for ii#=gy# to gy1#
    for jj#=gx# to gx1#
      ii#, screen_width#, * jj#, +
      4, * graphic_base#, + pp#=
      (qq)!, (pp)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  end
    

// 文字列描画
draw_string:
  ss#= pop py#= pop px#=
  draw_string1:
    if (ss)$=NULL then end
    px#, py#, (ss)$, draw_font
    px#, FONT_WIDTH, + px#=
    ss#++
  goto draw_string1


// 1文字描画
draw_font:
  pp#= pop ty#= pop tx#=
  pp#, FONT_WIDTH, * FONT_HEIGHT, * font_area#, + qq#=
  tx#, FONT_WIDTH-1, + rx#=
  ty#, FONT_HEIGHT-1, + ty#=
  for ii#=ty# to ry#
     for jj#=tx# to rx#
        if qq#<>0 then jj#, ii#, draw_point
        qq#++
     next jj#
  next ii#
  end

 .data

// グラフィックAPIのガイド
graphic_guid:
 data 0x4a3823dc9042a9de
 data 0x6a5180d0de7afb96

// マウスAPIのガイド
pointer_guid:
 data 0x11d50b7531878c87
 data 0x4dc13f2790004f9a

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
  data 32767

