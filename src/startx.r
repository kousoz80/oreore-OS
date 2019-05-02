// ウィンドウシステム for oreore-OS ver 0.0.5

 // GUIコンポーネントの基底クラス
 class Component
  long   subclass#         // サブクラスへのポインタ 
  long   type#               // コンポーネントのタイプ
  long   parent#            // 親コンポーネント 
  long   top_child#        // 最初の子供コンポーネント 
  long   end_child#        // 最後の子供コンポーネント 
  long   next#               // 次の兄弟コンポーネント 
  long   prev#               // 前の兄弟コンポーネント 
  long   look_and_feel# // コンポーネントのLook&Feel 
  long   status#            // コンポーネントの状態 
  long   is_visible#       // コンポーネントが可視状態であるかどうかを示す 
  long   is_focusable#   // コンポーネントがフォーカス可能であるかどうかを示す 
  long   is_painting#    // コンポーネントが描画中であるかどうかを示す 
  long   foreground#    // コンポーネントの文字色（カラーコード） 
  long   background#    // コンポーネントの背景色（ブラシ番号） 
  long   border#           // コンポーネントの境界のスタイル 
  long   x#                    // コンポーネントの左上の親コンポーネントにおけるX座標 
  long   y#                   // コンポーネントの左上の親コンポーネントにおけるY座標 
  long   width#            // コンポーネントの幅 
  long   height#           // コンポーネントの高さ 
  long   left#                // コンポーネントの左のスクリーン上のX座標 
  long   top#                // コンポーネントの上のスクリーン上のY座標 
  long   right#             // コンポーネントの右のスクリーン上のX座標 
  long   bottom#         // コンポーネントの下のスクリーン上のY座標 
 end


// GUIコンポーネントのlook&feelを決定するインターフェース
// ( 基本的なイベント処理の関数ポインタを持つ 
 class LookAndFeel
  long paint_component#  // 描画処理 
  long key_pressed#     // コンポーネントがフォーカスを得た状態でキーが押されたときのイベント処理
  long mouse_lclicked#    // コンポーネント上でマウスを左クリックしたときのイベント処理
  long mouse_rclicked#    // コンポーネント上でマウスを右クリックしたときのイベント処理
  long mouse_lclicked2#  // コンポーネント上でマウスをクリック後もう一度左クリックしたときのイベント処理
  long mouse_rclicked2#  // コンポーネント上でマウスをクリック後もう一度右クリックしたときのイベント処理
  long remove_component# // 削除処理
 end


// GUIコンポーネントのタイプ
 enum
   TYPE_OTHER
   TYPE_LABEL
   TYPE_BUTTON
   TYPE_CHECKBOX
   TYPE_RADIOBUTTON
   TYPE_HSCROLLBAR
   TYPE_VSCROLLBAR
   TYPE_TEXTFIELD
   TYPE_TEXTAREA
   TYPE_WINDOW
   TYPE_DESKTOP
   TYPE_MENU
   TYPE_LIST
   TYPE_TABLE
  end

// 定数
 const DEFAULT_COMPONENT_WIDTH  100  // 幅の初期値
 const DEFAULT_COMPONENT_HEIGHT 100  // 高さの初期値

// 専用変数
 long com#,com0#,com1#,parent#,next#,prev#

// GUIコンポーネントを生成する
// 使用法: com, subclass, parent, look_and_feel create_component
create_component:
  tt#= pop parent#= pop ss#= pop com#=

//  "create component", log, fprints log, fnl
//  "com=", log, fprints com#, hex log, fprints
//  log, fnl

  ss#,  com#, ->Component.subclass#=
  TYPE_OTHER, com#, ->Component.type#=
  parent#, com#, ->Component.parent#=
  NULL, com#, ->Component.top_child#=
  NULL, com#, ->Component.end_child#=
  tt#, com#, ->Component.look_and_feel#=
  0, com#, ->Component.status#=
  TRUE, com#, ->Component.is_visible#=
  FALSE, com#, ->Component.is_focusable#=
  FALSE, com#, ->Component.is_painting#=
  COLOR_BLACK, com#, ->Component.foreground#=
  COLOR_LIGHT_GRAY,   com#, ->Component.background#=
  LINE_BORDER, com#, ->Component.border#=
  0, com#, ->Component.x#=
  0, com#, ->Component.y#=
  DEFAULT_COMPONENT_WIDTH, com#, ->Component.width#=
  DEFAULT_COMPONENT_HEIGHT, com#, ->Component.height#=
  com#, set_component_rect
  NULL, com#, ->Component.prev#=
  parent#, ->Component.top_child# com#, ->Component.next#=
  com#, parent#, ->Component.top_child#=
  parent#, ->Component.end_child# tt#=
  if tt#=NULL then com#, parent#, ->Component.end_child#=
  if tt#<>NULL then com#, com#, ->Component.next# ->Component.prev#=
 end


// GUIコンポーネントを削除する
remove_component:
  com#=
  com#, ->Component.parent# parent#=
  com#, ->Component.prev# prev#=
  com#, ->Component.next# next#=
  if prev#=NULL   then next#, parent#, ->Component.top_child#=
  if prev#<>NULL then next#, prev#, ->Component.next#=
  if next#=NULL   then prev#, parent#, ->Component.end_child#=
  if next#<>NULL then prev#, next#, ->Component.prev#=
  com#, com#, ->Component.look_and_feel# ->@LookAndFeel.remove_component
  if com#=clicked_component#  then NULL, clicked_component#=
  if com#=focused_component# then NULL, focused_component#=
  end


// GUIコンポーネントにマウスイベントを割り当てる
// ( 戻り値：コンポーネント内でイベントを処理したときTRUE、そうでないときFALSE )
dispatch_mouse_event:
  com#=
  
  // マウス状態の定義
  enum
    MOUSE_RELEASE
    MOUSE_PRESS_L
    MOUSE_PRESS_R
  end


//  "dispatch mouse event:", log, fprints log, fnl
//  "com=", log, fprints com#, hex log, fprints
//   log, fnl

  
  // GUIコンポーネントが不可視状態ならイベント処理をしない
  com#, ->Component.is_visible# tt#=
  if tt#=0 then FALSE, end
  
  com#, ->Component.top# com#, ->Component.bottom# - tt#=
  if tt#>=0 then FALSE, end
    
  com#, ->Component.left# com#, ->Component.right# - tt#=
  if tt#>=0 then FALSE, end
    
  // まず子供コンポーネントのイベント割り当てを行う

//  "dispatch child mouse event:", log, fprints log, fnl

  com#, ->Component.top_child# tt#=
  dispatch_mouse_event1:
    if tt#=NULL goto dispatch_mouse_event2
    com#, PUSH tt#, PUSH
      tt#, dispatch_mouse_event ss#=
    POP tt#= POP com#=
    if ss#=TRUE then TRUE, end
    tt#, ->Component.next# tt#=
    goto dispatch_mouse_event1
   
  // 次にクリックの処理をする
  dispatch_mouse_event2:

//  "end dispatch child ", log, fprints log, fnl

    com#, ->Component.status# tt#=

//  "status=", log, fprints tt#, log, fprintd log, fnl

  // GUIコンポーネント上でマウスボタンが押されていない状態

  // 左ボタンのチェック
  dispatch_mouse_event3:
    if tt#<>MOUSE_RELEASE goto dispatch_mouse_event5
    if mouse_left#=0 goto dispatch_mouse_event4

//  "L button ON:", log, fprints log, fnl

    mouse_x#, mouse_y#, com#, is_on_component ss#=
    if ss#=0 then FALSE, end
    MOUSE_PRESS_L, com#, ->Component.status#=
    TRUE, end

  // 右ボタンのチェック
  dispatch_mouse_event4:
    if mouse_right#=0 then FALSE, end

//  "R button ON:", log, fprints log, fnl

    mouse_x#, mouse_y#, com#, is_on_component ss#=
    if ss#=0 then FALSE, end
    MOUSE_PRESS_R, com#, ->Component.status#=
    TRUE, end

  // GUIコンポーネント上で左マウスボタンが押された状態
  dispatch_mouse_event5:
    if tt#<>MOUSE_PRESS_L goto dispatch_mouse_event6
    if mouse_left#<>0 then TRUE, end

//  "L button OFF:", log, fprints log, fnl

    MOUSE_RELEASE, com#, ->Component.status#=
    if clicked_component#<>NULL then com#, clicked_component#, ->Component.look_and_feel# ->@LookAndFeel.mouse_lclicked2
    com#, com#, ->Component.look_and_feel# ->@LookAndFeel.mouse_lclicked
    com#, clicked_component#=
    com#, ->Component.is_focusable# tt#=
    if tt#=TRUE then com#, focused_component#=  //    log_focus
    TRUE, end
      
  // GUIコンポーネント上で右マウスボタンが押された状態
  dispatch_mouse_event6:
    if tt#<>MOUSE_PRESS_R goto dispatch_mouse_event7
    if mouse_right#<>0 then TRUE, end

//  "R button OFF:", log, fprints log, fnl

    MOUSE_RELEASE, com#, ->Component.status#=
    if clicked_component#<>NULL then com#, clicked_component#, ->Component.look_and_feel# ->@LookAndFeel.mouse_rclicked2
    com#, com#, ->Component.look_and_feel# ->@LookAndFeel.mouse_rclicked
    com#, clicked_component#=
    com#, ->Component.is_focusable# tt#=
    if tt#=TRUE then com#, focused_component#=   //        log_focus
    TRUE, end
      
  // 異常系処理
  dispatch_mouse_event7:
    MOUSE_RELEASE, com#, ->Component.status#=
    FALSE, end


// GUIコンポーネントを描画する
repaint:
 tt#=

// "repaint:", log, fprints log, fnl

  tt#, paint_component
  _disp
  end


// GUIコンポーネント描画処理
paint_component:
  com#=

//  "focused component=", log, fprints  
//  focused_component#, hex log, fprints log, fnl

//  "clicked component=", log, fprints  
//  clicked_component#, hex log, fprints log, fnl

  // 描画可能でなければリターン
  com#, ->Component.is_visible# tt#=
  if tt#=0 then end
  
  // 描画中であればリターン
  com#, ->Component.is_painting# tt#=
  if tt#=TRUE then end

//  "paint component2:", log, fprints log, fnl  

  // 矩形領域をセットする
  com#, set_component_rect


//  "paint component:", log, fprints log, fnl  
//  "com=", log, fprints
//  com#, hex log, fprints log, fnl
//  "parent=", log, fprints
//  com#, ->Component.parent# tt#=
//  tt#, hex log, fprints log, fnl
//  "background=", log, fprints
//  com#, ->Component.background# tt#=
//  tt#, hex log, fprints log, fnl
//  "is_visible=", log, fprints
//  com#, ->Component.is_visible# tt#=
//  tt#, log, fprintd log, fnl
//  "is_painting=", log, fprints
//  com#, ->Component.is_painting# tt#=
//  tt#, log, fprintd log, fnl

//  "x=", log, fprints
//  com#, ->Component.x# tt#=
//  tt#, log, fprintd log, fnl
//  "y=", log, fprints
//  com#, ->Component.y# tt#=
//  tt#, log, fprintd log, fnl
//  "width=", log, fprints
//  com#, ->Component.width# tt#=
//  tt#, log, fprintd log, fnl
//  "height=", log, fprints
//  com#, ->Component.height# tt#=
//  tt#, log, fprintd log, fnl
//  "left=", log, fprints
//  com#, ->Component.left# tt#=
//  tt#, log, fprintd log, fnl
//  "top=", log, fprints
//  com#, ->Component.top# tt#=
//  tt#, log, fprintd log, fnl
//  "right=", log, fprints
//  com#, ->Component.right# tt#=
//  tt#, log, fprintd log, fnl
//  "bottom=", log, fprints
//  com#, ->Component.bottom# tt#=
//  tt#, log, fprintd log, fnl


  // 矩形領域が有効でないときはリターン
  com#, ->Component.left# com#, ->Component.right# - tt#=
  if tt#>=0 then return
  
  com#, ->Component.top# com#, ->Component.bottom# - tt#=
  if tt#>=0 then return
  
  // 描画処理
  TRUE, com#, ->Component.is_painting#=


//  "look and feel=", log, fprints
//  com#, ->Component.look_and_feel# tt#=
//  tt#, hex log, fprints log, fnl
//  "paint component=", log, fprints
//  tt#, ->LookAndFeel.paint_component# tt#=
//  tt#, hex log, fprints log, fnl

  // 自分の描画
  com#, ->Component.look_and_feel# ->LookAndFeel.paint_component# tt#=

// "xxxpaint component=", log, fprints
// tt#, hex log, fprints log, fnl

  com#, com#, ->Component.look_and_feel# ->@LookAndFeel.paint_component
//  com#, @tt
  com#, ->Component.end_child# tt#=

  paint_component1:
    if tt#=NULL goto paint_component2
    com#, PUSH tt#, PUSH
    tt#, paint_component
    POP tt#= POP com#=
    tt#, ->Component.prev# tt#=
    goto paint_component1
  paint_component2:
  FALSE, com#, ->Component.is_painting#=
  end


// GUIコンポーネントの基盤部分と境界を描く
paint_base:
  com#=
  
//  "paint base:", log, fprints log, fnl  
//  "com=", log, fprints  
//  com#, hex log, fprints log, fnl


  // 境界のリスト
  enum
    NULL_BORDER
    LINE_BORDER
    RAISED_BORDER
    LOWERD_BORDER
  end

//  "color=", log, fprints  
//  com#, ->Component.background# hex log, fprints log, fnl


  // 背景を描く
  com#, ->Component.background# set_color
  com#, ->Component.left#       x0#=
  com#, ->Component.top#       y0#=
  com#, ->Component.right#     x1#=
  com#, ->Component.bottom# y1#=
  fill_rect

  // 境界を描く
  com#, ->Component.border# tt#=

  // 単純な線の境界
  paint_base1:
  if tt#<>LINE_BORDER goto paint_base2
    COLOR_BLACK, set_color
    x0#, y0#, x1#, y0#, draw_line
    x1#, y0#, x1#, y1#, draw_line
    x1#, y1#, x0#, y1#, draw_line
    x0#, y1#, x0#, y0#, draw_line
    goto paint_base4

   // 凸境界
  paint_base2:
  if tt#<>RAISED_BORDER goto paint_base3
    COLOR_WHITE, set_color
    x0#, y0#, x1#, y0#, draw_line
    x1#, y0#, x1#, y1#, draw_line
    COLOR_BLACK, set_color
    x1#, y1#, x0#, y1#, draw_line
    x0#, y1#, x0#, y0#, draw_line
    goto paint_base4

   // 凹境界
  paint_base3:
  if tt#<>LOWERD_BORDER goto paint_base4
    COLOR_BLACK, set_color
    x0#, y0#, x1#, y0#, draw_line
    x1#, y0#, x1#, y1#, draw_line
    COLOR_WHITE, set_color
    x1#, y1#, x0#, y1#, draw_line
    x0#, y1#, x0#, y0#, draw_line
    goto paint_base4

   // デフォルトの処理(何もしない)
  paint_base4:
  
//  "paint base end", log, fprints log, fnl  

  end

// GUIコンポーネントの矩形領域をセットする
set_component_rect:
  long lf0#,tp0#,ri0#,bt0#
  
  com#=

//  "set component rect:", log, fprints log, fnl  

  com#, ->Component.parent# parent#=
  if parent#<>NULL goto set_component_rect1
  
//  "set component(desktop)", log, fprints log, fnl
   
    // デスクトップコンポーネントの場合
    com#, ->Component.x# ss#= com#, ->Component.left#= lf0#=
    com#, ->Component.y# tt#= com#, ->Component.top#= tp0#=
  
    com#, ->Component.width#   ss#, + 1, -  ri0#= 
    com#,  ->Component.right#=
  
    com#, ->Component.height#  tt#, + 1, -  bt0#=
    com#, ->Component.bottom#=

//  "left=",       log, fprints lf0#,  log, fprintd log, fnl
//  "top=",       log, fprints tp0#, log, fprintd log, fnl
//  "right=",     log, fprints ri0#, log, fprintd log, fnl
//  "bottom=", log, fprints bt0#, log, fprintd log, fnl

    end
  
// デスクトップコンポーネント以外の場合
set_component_rect1:
  
//  "set component(no desktop)", log, fprints log, fnl
   
  parent#, ->Component.left# com#, ->Component.x# +  lf0#=
  com#, ->Component.left#=
  
  parent#, ->Component.top# com#, ->Component.y# +  tp0#=
  com#, ->Component.top#=
  
  com#, ->Component.width#  lf0#, + 1, - ri0#=
  com#, ->Component.right#=
  
  parent#, ->Component.right# tt#=
  if ri0#>tt# then tt#, ri0#= com#, ->Component.right#=

  com#, ->Component.height# tp0#, + 1, - bt0#=
  com#, ->Component.bottom#=
  
  parent#, ->Component.bottom# tt#=
  if bt0#>tt# then tt#, bt0#= com#, ->Component.bottom#=

//  "left=",       log, fprints lf0#,  log, fprintd log, fnl
//  "top=",       log, fprints tp0#, log, fprintd log, fnl
//  "right=",     log, fprints ri0#, log, fprintd log, fnl
//  "bottom=", log, fprints bt0#, log, fprintd log, fnl

  end


// GUIコンポーネントの可視状態を返す
is_visible:
  com#=
  if com#=NULL then TRUE, end
  desktop, ->Desktop.component tt#=
  if com#=tt# then TRUE, end
  com#, PUSH
  com#, ->Component.parent# is_visible tt#=
  POP com#=
  if tt#=FALSE then FALSE, end
  com#, ->Component.is_visible# tt#=
  if tt#=FALSE then FALSE, end
  com#, ->Component.right# com#, ->Component.left# - tt#=
  if tt#<=0 then FALSE, end
  com#, ->Component.bottom# com#, ->Component.top# - tt#=
  if tt#<=0 then FALSE, end
  TRUE, end


// GUIコンポーネントの可視状態を設定する
set_visible:
  tt#= pop com#=
  tt#, com#, ->Component.is_visible#=
  com#, ->Component.parent# tt#=
  if tt#<>NULL then tt#, repaint 
  end


// 座標(x,y)が矩形(left,top,right,bottom)上にあるかどうかを返す
// 使用法： x, y, left, top, right, bottom, is_on_rectangle
is_on_rectangle:
  long ox#,oy#,ol#,ot#,ori#,ob#

  ob#= pop ori#= pop ot#= pop ol#= pop
  oy#= pop ox#= 

//  "is on rectangle:", log, fprints log, fnl
//   ox#, log, fprintd ",", log, fprints
//   oy#, log, fprintd  log, fnl
//  "on", log, fprints log, fnl
//   ol#, log, fprintd ",", log, fprints
//   ot#, log, fprintd ",", log, fprints
//   ori#, log, fprintd ",", log, fprints
//   ob#, log, fprintd  log, fnl
   
     
  if ox#<ol#  then FALSE, end
  if ox#>ori# then FALSE, end
  if oy#<ot#  then FALSE, end
  if oy#>ob#  then FALSE, end
  TRUE, end


// 座標(x,y)がGUIコンポーネントcom上にあるかどうかを返す
is_on_component:
  com#= pop iy#= pop ix#=
  
//  "is on component:", log, fprints log, fnl
//  "com=", log, fprints com#, hex log, fprints
//   log, fnl
  
  if com#=NULL then TRUE, end
  desktop, ->Desktop.component tt#=
  if com#=tt# then TRUE, end
  ix#,
  iy#,
  com#, ->Component.left#
  com#, ->Component.top#
  com#, ->Component.right#
  com#, ->Component.bottom#
  is_on_rectangle
  end


// マウスが指しているGUIコンポーネントを返す
get_component_under_mouse_cursor:
  long c1#,c2#
  com#=

  // 不可視状態ならNULLを返す
  is_visible tt#=
  if tt#=FALSE then NULL, end

  // 子供のコンポーネントから調べる
  com#, ->Component.top_child# c1#=
  get_component_under_mouse_cursor1:
    if c1#=NULL goto get_component_under_mouse_cursor2
    c1#, PUSH com#, PUSH
    c1#, get_component_under_mouse_cursor c2#=
    POP com#= POP c1#=
    if c2#<>NULL then c2#, end
    c1#, ->Component.next# c1#=
    goto get_component_under_mouse_cursor1
  get_component_under_mouse_cursor2:
  mouse_x#, mouse_y#, com#, is_on_component tt#=
  if tt#=TRUE then com#, end
  NULL, end


// 子供のコンポーネントの数を返す 
get_child_count:
  com#= 
  0, ii#=

  com#, ->Component.top_child# c1#=
  get_child_count1:
    if c1#=NULL goto get_child_count2
    ii#++
    c1#, ->Component.next# c1#=
    goto  get_child_count1
  get_child_count2:
  ii#, end


// 可視状態にある子供のコンポーネントの数を返す 
get_visible_child_count:
  com#= 
  0, ii#=

  com#, ->Component.top_child# c1#=
  get_visible_child_count1:
    if c1#=NULL goto get_child_count2
    c1#, PUSH com#, PUSH
    c1#, is_visible tt#=
    POP com#= POP c1#=
    if tt#=TRUE then ii#++
    c1#, ->Component.next# c1#=
    goto  get_visible_child_count1
  get_visible_child_count2:
  ii#, end


// GUIコンポーネントZオーダーを最上位に持ってくる
pop_up_component:
  long top#,second#
  com#=
  com#, ->Component.parent# parent#=
  com#, ->Component.prev#    prev#=
  com#, ->Component.next#    next#=
  parent#, ->Component.top_child# top#=
  if prev#=NULL then end
  top#, second#=
  com#, parent#, ->Component.top_child#=
  NULL, com#, ->Component.prev#=
  second#, com#, ->Component.next#=
  com#, second#, ->Component.prev#=
  next#, prev#, ->Component.next#=
  if next#<>NULL then prev#, next#, ->Component.prev#= end
  prev#, parent#, ->Component.end_child#=
  end


// GUIコンポーネントの位置と大きさを設定する
// 使用法： com, x, y, width, height, set_bounds
set_bounds:
  ss#= pop tt#= pop iy#= pop ix#= pop
  com#=
  ix#, com#, ->Component.x#=
  iy#, com#, ->Component.y#=
  tt#, com#, ->Component.width#=
  ss#, com#, ->Component.height#=
  com#, ->Component.is_visible# tt#=
  if tt#=FALSE then end
  com#, ->Component.parent# tt#=
  if tt#<>NULL then tt#, repaint 
  end


// 何もしない
no_operation:
 end


//log_focus:
//   long zzz#
//   zzz#=
//  "set focused: ", log, fprints 
//  zzz#, hex log, fprints log, fnl
//  end

// 変数一覧
 long graphic_protocol#
 long pointer_protocol#
 long graphic_mode#,graphic_info#,graphic_base#
 long set_mode#,screen_width#,screen_height#,color#,co#
 long mouse_reset#,mouse_get_state#
 long mouse_x#,mouse_y#,mouse_left#,mouse_right#,mouse_mode#,mouse_speed#
 long mouse_left0#,mouse_right0#,mouse_dx#,mouse_dy#
 long copy_area#,font_area#,screen_buffer#
 long gui_is_running#,input_client#,key_code#,key0#
 long focused_component#,clicked_component#
 char mouse_cursor$(1024),mouse_cursor_area$(1024),mouse_data$(16)

 count ii#,jj#,ix#,iy#
 long   x0#,y0#,x1#,y1#,pp#,qq#,rr#
 long   x2#,x3#,y2#,y3#,ss#,tt#,uu#
 long   px#,py#,qx#,qy#
 long   tx#,ty#,rx#,ry#
 long   vx#,vy#,vx1#,vy1#,flg#
 long   gx#,gx1#,gx2#,gx3#,gx4#
 long   gy#,gy1#,gy2#,gy3#,gy4#
 long   sx#,sx1#,sx2#,sy#,sy1#,sy2#
 char  fp$(FILE_SIZE)


 long max_speed#,quit_key#,mode_key#,speed_key#
 long left_key#,right_key#,up_key#,down_key#,lclick_key#,rclick_key#

// ラベル
 class Label
  long subclass#      // サブクラスへのポインタ
  long text#             // 表示テキスト

  // イベント拡張
  long paint#   // 描画処理

  // コンポーネント本体
  Component component
 end

// look&feel
 .data
lf_label:
  data paint_label     // paint_component
  data no_operation  // key_pressed
  data no_operation  // mouse_lclicked
  data no_operation  // mouse_rclicked
  data no_operation  // mouse_lclicked2
  data no_operation  // mouse_rclicked2
  data no_operation  // remove_component


// ラベルを生成する
// lbl, subclass, parent, txt, create_label 
create_label:
 long lbltxt#,lblprnt#,lblsub#,lbl#

 lbltxt#= pop lblprnt#= pop lblsub#= pop lbl#=
 lblsub#, lbl#, ->Label.subclass#=
 no_operation, lbl#, ->Label.paint#=
 lbltxt#,   lbl#, ->Label.text#=
 lbl#, ->Label.component com#=
 com#, lbl#, lblprnt#, lf_label, create_component
 TYPE_LABEL, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_LIGHT_GRAY, com#, ->Component.background#=
 LINE_BORDER, com#, ->Component.border#=
 end
 

// ラベルを表示する( 直接呼び出し不可 )
paint_label:
  com#= is_visible tt#=
  if tt#=FALSE then end
  com#, ->Component.subclass# lbl#=

  // 基盤を描く
  com#, paint_base

  // 表示テキストを描く
  com#, ->Component.foreground# set_color
  com#, ->Component.left#     
  com#, ->Component.top#
  com#, ->Component.width#
  lbl#, ->Label.text#
  draw_string
  com#, lbl#, ->@Label.paint
  end


// 表示テキストを設定する
set_label_text:
  lbltxt#= pop lbl#=
  lbltxt#, lbl#, ->Label.text#=
  lbl#, ->Label.component repaint
  end

// ボタン(アイコン)
 class Button
  long   subclass#         // サブクラスへのポインタ 
  long   text#                // テキスト 
  long   imagefile#        // 画像ファイル名 
  long   image#             // 画像 
  long   command#       // コマンド 

  // イベント拡張 
  long lclicked#           // 左ボタンクリック
  long lclicked2#         // 左ボタンクリック2回目
  long rclicked#           // 右ボタンクリック
  long paint#              // 描画処理

  // コンポーネントの本体 
  Component component 
 end

// look&feel
 .data
lf_button:
  data paint_button             // paint_component
  data no_operation             // key_pressed
  data button_lclicked          // mouse_lclicked
  data button_rclicked         // mouse_rclicked
  data button_lclicked2        // mouse_lclicked2
  data no_operation             // mouse_rclicked2
  data no_operation             // remove_component


// ボタンを生成する
// btn, subclass, parent, txt, create_button 
create_button:
 long btntxt#,btnprnt#,btnsub#,btn#

 btntxt#= pop btnprnt#= pop btnsub#= pop btn#=
 btnsub#, btn#, ->Button.subclass#=
 no_operation, btn#, ->Button.paint#=
 no_operation, btn#, ->Button.lclicked#=
 no_operation, btn#, ->Button.lclicked2#=
 no_operation, btn#, ->Button.rclicked#=
 btntxt#,   btn#, ->Button.text#=
 NULL,   btn#, ->Button.command#=
 NULL,   btn#, ->Button.image#=
 btn#, ->Button.component com#=
 com#, btn#, btnprnt#, lf_button, create_component
 TYPE_BUTTON, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_LIGHT_GRAY, com#, ->Component.background#=
 RAISED_BORDER, com#, ->Component.border#=
 end
 

// ボタンを表示する( 直接呼び出し不可 )
paint_button:
  long bx#,bw#
  com#= is_visible tt#=
  if tt#=FALSE then end
  com#, ->Component.subclass# btn#=

  // 基盤を描く
  com#, paint_base

  // 画像を描く
  com#, ->Component.top# pp#=
  btn#,  ->Button.image# tt#=
  if tt#=NULL goto paint_button1
  com#, ->Component.left#
  pp#,
  btn#, ->Button.image#
  draw_image pp#=

// テキストを描く
paint_button1:
  com#, ->Component.foreground# set_color
  com#, ->Component.left#
  pp#,
  com#, ->Component.width#
  btn#,  ->Button.text#
  draw_string

  btn#, btn#, ->@Button.paint
  end


// 左クリックで呼ばれる
button_lclicked:
  com#=
  com#, ->Component.subclass# btn#=
  btn#, btn#, ->@Button.lclicked
  end


// 左クリック2回目で呼ばれる
button_lclicked2:
  com#=
  com#, ->Component.subclass# btn#=
  btn#, btn#, ->@Button.lclicked2
  end


// 右クリックで呼ばれる
button_rclicked:
  com#=
  com#, ->Component.subclass# btn#=
  btn#, btn#, ->@Button.rclicked
  end


// 左クリックで呼ばれる関数を設定
set_button_lclicked:
  tt#= pop btn#=
  tt#, btn#, ->Button.lclicked#=
  end


// 左クリック2回目で呼ばれる関数を設定
set_button_lclicked2:
  tt#= pop btn#=
  tt#, btn#, ->Button.lclicked2#=
  end


// 右クリックで呼ばれる関数を設定
set_button_rclicked:
  tt#= pop btn#=
  tt#, btn#, ->Button.rclicked#=
  end


// テキストを設定する
set_button_text:
  tt#= pop btn#=
  tt#, btn#, ->Button.text#=
  btn#, ->Button.component repaint
  end


// 画像を設定する
set_button_image:
  tt#= pop btn#=
  tt#, btn#, ->Button.image#=
  btn#, ->Button.component repaint
  end

// チェックボックス
 class CheckBox
  long    subclass#         // サブクラスへのポインタ 
  long    is_selected#     // 選択状態を示す 

  // イベント拡張 
  long changed#            // 選択状態が変化した 
  long paint#                 // 描画処理 

  // コンポーネントの本体 
  Component component 
 end

// look&feel
 .data
lf_checkbox:
  data paint_checkbox             // paint_component
  data no_operation                 // key_pressed
  data checkbox_clicked           // mouse_lclicked
  data checkbox_clicked           // mouse_rclicked
  data no_operation                 // mouse_lclicked2
  data no_operation                 // mouse_rclicked2
  data no_operation                 // remove_component

// チェックボックスを生成する
// chk, subclass, parent, create_chrckbox 
create_checkbox:
 long chkprnt#,chksub#,chk#

 chkprnt#= pop chksub#= pop chk#=
 chksub#, chk#, ->CheckBox.subclass#=
 no_operation, chk#, ->CheckBox.paint#=
 no_operation, chk#, ->CheckBox.changed#=
 chk#, ->CheckBox.component com#=
 com#, chk#, chkprnt#, lf_checkbox, create_component
 TYPE_CHECKBOX, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_WHITE, com#, ->Component.background#=
 LOWERD_BORDER, com#, ->Component.border#=
 end
 
// チェックボックスを表示する( 直接呼び出し不可 )
paint_checkbox:
 com#= is_visible tt#=
 if tt#=FALSE then end
 com#, ->Component.subclass# chk#=

 // 基盤を描く
 com#, paint_base

 // 選択状態ならばチェックを描画する
 chk#, ->CheckBox.is_selected# tt#=
 if tt#=0 goto paint_checkbox1
 COLOR_BLACK, set_color
 com#, ->Component.left# com#, ->Component.right#    + 2, / sx#=
 com#, ->Component.top# com#, ->Component.bottom# + 2, / sy#=
 sx#, 4, -  sx1#=
 sy#, 4, -  sy1#=
 sx#, 7, + sx1#=
 sy#, 6, -  sy1#=
 sx#, sy#, sx1#, sy1#, draw_line
 sx#, sy#, sx2#, sy2#, draw_line

paint_checkbox1:
 com#, chk#, ->@CheckBox.paint
 end


// チェックボックスをクリックしたときの処理( 直接呼び出し不可 )
checkbox_clicked:
 com#= ->Component.subclass# chk#=
 1, chk#, ->CheckBox.is_selected# - chk#, ->CheckBox.is_selected#=
 chk#, ->@CheckBox.changed
 com#, repaint
 end


// 状態変化で呼ばれる関数を設定
set_checkbox_changed:
 tt#= pop chk#=
 tt#, chk#, ->CheckBox.changed#=
 end

// ラジオボタン 
 class RadioButton
  long     subclass#         // サブクラスへのポインタ 
  long     is_selected#     // 選択状態を示す 

  // イベント拡張 
  long changed#             // 選択状態が変化した 
  long paint#                  // 描画処理 

  // コンポーネントの本体 
  Component component 
 end

// look&feel
 .data
lf_radiobutton:
  data paint_radiobutton             // paint_component
  data no_operation                     // key_pressed
  data radiobutton_clicked           // mouse_lclicked
  data radiobutton_clicked           // mouse_rclicked
  data no_operation                     // mouse_lclicked2
  data no_operation                     // mouse_rclicked2
  data no_operation                     // remove_component

// ラジオボタンを生成する
// rbt, subclass, parent, create_radiobutton 
create_radiobutton:
 long rbtprnt#,rbtsub#,rbt#

 rbtprnt#= pop rbtsub#= pop rbt#=
 rbtsub#, rbt#, ->RadioButton.subclass#=
 no_operation, rbt#, ->RadioButton.paint#=
 no_operation, rbt#, ->RadioButton.changed#=
 rbt#, ->RadioButton.component com#=
 com#, rbt#, rbtprnt#, lf_radiobutton, create_component
 TYPE_RADIOBUTTON, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_WHITE, com#, ->Component.background#=
 NULL_BORDER, com#, ->Component.border#=
 end
 
// ラジオボタンを表示する( 直接呼び出し不可 )
paint_radiobutton:
 com#= is_visible tt#=
 if tt#=FALSE then end
 com#, ->Component.subclass# rbt#=

 // 基盤を描く
 com#, ->Component.background# set_color
 com#, ->Component.left#
 com#, ->Component.top#
 com#, ->Component.right#
 com#, ->Component.bottom#
 fill_circle
 com#, ->Component.foreground# set_color
 com#, ->Component.left#
 com#, ->Component.top#
 com#, ->Component.right#
 com#, ->Component.bottom#
 draw_circle

 // 選択状態ならばチェックを描画する
 rbt#, ->RadioButton.is_selected# tt#=
 if tt#=0 goto paint_radiobutton1
 com#, ->Component.foreground# set_color
 com#, ->Component.left# com#, ->Component.right#    + 2, / sx#=
 com#, ->Component.top# com#, ->Component.bottom# + 2, / sy#=
 sx#, 2, -  sx1#=
 sy#, 2, -  sy1#=
 sx#, 2, + sx2#=
 sy#, 2, +  sy2#=
 sx1#, sy1#, sx2#, sy2#, fill_circle

paint_radiobutton1:
 com#, rbt#, ->@RadioButton.paint
 end


// ラジオボタンをクリックしたときの処理( 直接呼び出し不可 )
radiobutton_clicked:
 com#= ->Component.subclass# rbt#=
 1, rbt#, ->RadioButton.is_selected# - chk#, ->RadioButton.is_selected#=
 rbt#, ->@RadioButton.changed
 com#, repaint
 end


// 状態変化で呼ばれる関数を設定
// rbt,  func, set_radiobutton_changed 
set_radiobutton_changed:
 tt#= pop rbt#=
 tt#, rbt#, ->RadioButton.changed#=
 end

// 水平スクロールバー 
 class  HScrollBar
  long       subclass#             // サブクラスへのポインタ 
  long       value#                 // スクロールバーの値 
  long       min#                   // スクロールバーの最小値 
  long       max#                  // スクロールバーの最大値 
  long       handle_size#      // ハンドルの大きさ 

  // イベント拡張 
  long        changed#           // スクロールバーの値が変化した 
  long        paint#               // 描画処理 

  // コンポーネント本体 
  Component component 
 end

// look&feel
 .data
lf_hscrollbar:
  data paint_hscrollbar            // paint_component
  data no_operation                 // key_pressed
  data hscrollbar_clicked          // mouse_lclicked
  data hscrollbar_clicked          // mouse_rclicked
  data no_operation                 // mouse_lclicked2
  data no_operation                 // mouse_rclicked2
  data no_operation                 // remove_component


// チェックボックスを生成する
// hsb, subclass, parent, create_hscrollbar 
create_hscrollbar:
 long hsbprnt#,hsbsub#,hsb#

 hsbprnt#= pop hsbsub#= pop hsb#=
 hsbsub#, hsb#, ->HScrollBar.subclass#=
 0, hsb#, ->HScrollBar.value#=
 0, hsb#, ->HScrollBar.min#=
 100, hsb#, ->HScrollBar.max#=
 10, hsb#, ->HScrollBar.handle_size#=
 no_operation, hsb#, ->HScrollBar.paint#=
 no_operation, hsb#, ->HScrollBar.changed#=
 hsb#, ->HScrollBar.component com#=
 com#, hsb#, hsbprnt#, lf_hscrollbar, create_component
 TYPE_HSCROLLBAR, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_LIGHT_GRAY, com#, ->Component.background#=
 LINE_BORDER, com#, ->Component.border#=
 end
 
 
// スクロールバーを表示する( 直接呼び出し不可 )
paint_hscrollbar:
 com#= is_visible tt#=
 if tt#=FALSE then end
 com#, ->Component.subclass# hsb#=

 // 基盤を描く
 com#, paint_base

 hsb#, ->HScrollBar.max# hsb#, ->HScrollBar.min# - pp#=
 if pp#<0 then  paint_hscrollbar1

 hsb#, ->HScrollBar.value# hsb#, ->HScrollBar.min# - qq#=
 if qq#<0 then  paint_hscrollbar1

 hsb#, ->HScrollBar.max# hsb#, ->HScrollBar.value# - tt#=
 if tt#<0 then  paint_hscrollbar1

 qq#, com#, ->Component.width# * pp#, /
 com#, ->Component.left# + pp#=
 hsb#, ->HScrollBar.handle_size# + qq#=
 com#, ->Component.right# - tt#=
 if tt#>0 then com#, ->Component.right# qq#=
 com#, ->Component.foreground# set_color
 pp#,
 com#, ->Component.top#
 qq#,
 com#, ->Component.bottom#
 fill_rect

paint_hscrollbar1:
 com#, hsb#, ->@HScrollBar.paint
 end


// チェックボックスをクリックしたときの処理( 直接呼び出し不可 )
hscrollbar_clicked:
 com#= ->Component.subclass# hsb#=
 hsb#, ->HScrollBar.max# hsb#, ->HScrollBar.min# pp#= - qq#= 
 mouse_x#,  com#, ->Component.left# -  qq#, *
 com#, ->Component.width# / pp#, + hsb#, ->HScrollBar.value#= 
 hsb#, ->@HScrollBar.changed
 com#, repaint
 end


// 状態変化で呼ばれる関数を設定
set_hscrollbar_changed:
 tt#= pop hsb#=
 tt#, hsb#, ->HScrollBar.changed#=
 end

// 垂直スクロールバー 
 class  VScrollBar
  long       subclass#             // サブクラスへのポインタ 
  long       value#                 // スクロールバーの値 
  long       min#                   // スクロールバーの最小値 
  long       max#                  // スクロールバーの最大値 
  long       handle_size#      // ハンドルの大きさ 

  // イベント拡張 
  long        changed#          // スクロールバーの値が変化した 
  long        paint#               // 描画処理 

  // コンポーネント本体 
  Component component 
 end

// look&feel
 .data
lf_vscrollbar:
  data paint_vscrollbar            // paint_component
  data no_operation                 // key_pressed
  data vscrollbar_clicked          // mouse_lclicked
  data vscrollbar_clicked          // mouse_rclicked
  data no_operation                 // mouse_lclicked2
  data no_operation                 // mouse_rclicked2
  data no_operation                 // remove_component


// チェックボックスを生成する
// vsb, subclass, parent, create_vscrollbar 
create_vscrollbar:
 long vsbprnt#,vsbsub#,vsb#

 vsbprnt#= pop vsbsub#= pop vsb#=
 vsbsub#, vsb#, ->VScrollBar.subclass#=
 0, vsb#, ->VScrollBar.value#=
 0, vsb#, ->VScrollBar.min#=
 100, vsb#, ->VScrollBar.max#=
 10, vsb#, ->VScrollBar.handle_size#=
 no_operation, vsb#, ->VScrollBar.paint#=
 no_operation, vsb#, ->VScrollBar.changed#=
 vsb#, ->VScrollBar.component com#=
 com#, vsb#, vsbprnt#, lf_vscrollbar, create_component
 TYPE_VSCROLLBAR, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_LIGHT_GRAY, com#, ->Component.background#=
 LINE_BORDER, com#, ->Component.border#=
 end
 
 
// スクロールバーを表示する( 直接呼び出し不可 )
paint_vscrollbar:
 com#= is_visible tt#=
 if tt#=FALSE then end
 com#, ->Component.subclass# vsb#=

 // 基盤を描く
 com#, paint_base

 vsb#, ->VScrollBar.max# vsb#, ->VScrollBar.min# - pp#=
 if pp#<0 then  paint_vscrollbar1

 vsb#, ->VScrollBar.value# vsb#, ->VScrollBar.min# - qq#=
 if qq#<0 then  paint_vscrollbar1

 vsb#, ->VScrollBar.max# vsb#, ->VScrollBar.value# - tt#=
 if tt#<0 then  paint_vscrollbar1

 qq#, com#, ->Component.height# * pp#, /
 com#, ->Component.top# + pp#=
 hsb#, ->HScrollBar.handle_size# + qq#=
 com#, ->Component.bottom# - tt#=
 if tt#>0 then com#, ->Component.bottom# qq#=
 com#, ->Component.foreground# set_color
 com#, ->Component.left#
 pp#,
 com#, ->Component.right#
 qq#,
 fill_rect

paint_vscrollbar1:
 com#, vsb#, ->@VScrollBar.paint
 end


// チェックボックスをクリックしたときの処理( 直接呼び出し不可 )
vscrollbar_clicked:
 com#= ->Component.subclass# vsb#=
 vsb#, ->VScrollBar.max# vsb#, ->VScrollBar.min# pp#= - qq#= 
 mouse_y#,  com#, ->Component.top# -  qq#, *
 com#, ->Component.height# / pp#, + vsb#, ->VScrollBar.value#= 
 vsb#, ->@VScrollBar.changed
 com#, repaint
 end


// 状態変化で呼ばれる関数を設定
set_vscrollbar_changed:
 tt#= pop vsb#=
 tt#, vsb#, ->VScrollBar.changed#=
 end

// １行テキストボックス 
 class TextField
  long   subclass#      // サブクラスへのポインタ 
  long   text#             // 編集テキスト 
  long   display_pos# // テキスト上の表示ポイント 
  long   edit_pos#      // テキスト上の編集ポイント 

  // イベント拡張 
  long   input#              // テキスト編集時にEnterキーが押された 
  long   paint#              // 描画処理 

  // コンポーネント本体
  Component component
 end

// look&feel
 .data
lf_textfield:
  data paint_textfield    // paint_component
  data textfield_input    // key_pressed
  data textfield_clicked  // mouse_lclicked
  data no_operation       // mouse_rclicked
  data no_operation       // mouse_lclicked2
  data no_operation       // mouse_rclicked2
  data no_operation       // remove_component

// 最大文字数
  const TEXTFIELD_MAX 255

// キャレットの大きさ
 const CARET_SIZE 12

// キャレットの位置シフト
 const CARET_SHIFTX  2
 const CARET_SHIFTY  3

 long pp0#,qq0#,rr0#,ss0#,tt0#,uu0#

// テキストフィールドを生成する
// fld, subclass, parent, txt, create_textfield 
create_textfield:
  long fldtxt#,fldprnt#,fldsub#,fld#

  fldtxt#= pop fldprnt#= pop fldsub#= pop fld#=
  fldsub#, fld#, ->TextField.subclass#=
  no_operation, fld#, ->TextField.paint#=
  no_operation, fld#, ->TextField.input#=
  TEXTFIELD_MAX+1, malloc tt0#=
  fldtxt#, tt0#, TEXTFIELD_MAX, strncpy
  tt0#, fld#, ->TextField.text#=
  0, fld#, ->TextField.display_pos#=
  0, fld#, ->TextField.edit_pos#=
  fld#, ->TextField.component com#=
  com#, fld#, fldprnt#, lf_textfield, create_component
  TYPE_TEXTFIELD, com#, ->Component.type#=
  TRUE, com#, ->Component.is_focusable#=
  COLOR_BLACK, com#, ->Component.foreground#=
  COLOR_WHITE, com#, ->Component.background#=
  LOWERD_BORDER, com#, ->Component.border#=
  end
 

// テキストフィールドを削除する
// fld,  remove_textfield 
remove_textfield:
  fld#= ->TextField.component com#=
  com#, remove_component
  fld#, ->TextField.text# tt0#=
  tt0#, free
  end


// テキストフィールドを表示する( 直接呼び出し不可 )
paint_textfield:
  com#=
  
//  "paint textfield", log, fprints log, fnl
  
  com#, is_visible tt0#=
  if tt0#<>FALSE goto paint_textfield1
  if focused_component#=com# then NULL, focused_component#=
  end
paint_textfield1:
  com#, ->Component.subclass# fld#=

  // 基盤を描く
  com#, paint_base

  // 表示テキストを求める
  fld#, ->TextField.text#  fld#, ->TextField.display_pos# + pp0#=

  // テキスト表示開始位置を求める
  com#, ->Component.left#  qq0#=

  // テキスト表示終了位置を求める
  com#, ->Component.right#  FONT_WIDTH, - rr0#=

//  "display pos: ", log, fprints
//  fld#, ->TextField.display_pos# log, fprintd
// log, fnl
//  "display-range: ", log, fprints
//  qq0#, log, fprintd
//  "-", log, fprints
//  rr0#, log, fprintd
// log, fnl
//  "string1: ", log, fprints
//  fld#, ->TextField.text# log, fprints
// log, fnl
//  "string2: ", log, fprints
//  pp0#, log, fprints
// log, fnl


  // テキストを描く
  com#, ->Component.foreground# set_color
paint_textfield2:
  if  qq0#>rr0# goto paint_textfield3
  qq0#, com#, ->Component.top# (pp0)$, draw_font
  qq0#, FONT_WIDTH, + qq0#=

//  "draw ", log, fprints
//  (pp0)$, log, putc
//   log, fnl


  pp0#++
  if  (pp0)$<>NULL goto paint_textfield2
  
// フォーカスがあたっているときは編集ポイントにキャレットを描画する
paint_textfield3:
  if com#<>focused_component# goto paint_textfield4
  
//  "focused!", log, fprints log, fnl
//  "lf_textfield=", log, fprints lf_textfield, hex log, fprints
//  log, fnl
//  "textfield_input=", log, fprints textfield_input, hex log, fprints
//  log, fnl
  
  
    fld#, ->TextField.edit_pos# fld#, ->TextField.display_pos# - FONT_WIDTH, * 
    com#, ->Component.left# + CARET_SHIFTX, + pp0#=
    com#, ->Component.top#     CARET_SHIFTY, + qq0#= CARET_SIZE, + rr0#=
    pp0#, qq0#, pp0#, rr0#, draw_line 
paint_textfield4:
  fld#, fld#, ->@TextField.paint
  end


// フォーカスを得た状態でキーが押されたときの処理( 直接呼び出し不可 )
// (キーボード編集)
textfield_input:
  com#= is_visible tt0#=
  if tt0#=FALSE then NULL, focused_component#= end  // 不可視J状態になったときはフォーカスを外して終了する
  com#, ->Component.subclass# fld#=

//  "textfield key input", log, fprints log, fnl

     fld#, ->TextField.text# xstrlen qq0#=                             // テキストの長さを求める
     com#, ->Component.width# FONT_WIDTH, / 1, - rr0#= // 表示桁数-1を求める

     // 右矢印キーが押されたときの処理
     textfield_input1:
       if key_code#<>RIGHT_KEY goto textfield_input2
       fld#, ->TextField.edit_pos#  1, + tt0#=
       if tt0#>qq0# then qq0#, tt0#=
       tt0#,  fld#, ->TextField.edit_pos#=
       tt0#,  rr0#, - ss0#= 
       fld#, ->TextField.display_pos#  uu0#=
       if uu0#<ss0# then ss0#,  fld#, ->TextField.display_pos#=
       goto textfield_input10

     // 左矢印キーが押されたときの処理
     textfield_input2:
       if key_code#<>LEFT_KEY goto textfield_input3
       fld#, ->TextField.edit_pos#  1, - tt0#=
       if tt0#<0 then 0, tt0#=
       tt0#, fld#, ->TextField.edit_pos#=
       fld#, ->TextField.display_pos# pp0#=
       if tt0#<pp0# then tt0#, pp0#=
       pp0#, fld#, ->TextField.display_pos#=
       goto textfield_input10

     // 上矢印キーが押されたときの処理
     textfield_input3:
       if key_code#<>UP_KEY goto textfield_input4
       0, fld#, ->TextField.edit_pos#=
       0, fld#, ->TextField.display_pos#=
       goto textfield_input10

     // 下矢印キーが押されたときの処理
     textfield_input4:
       if key_code#<>DOWN_KEY goto textfield_input5
       qq0#, fld#, ->TextField.edit_pos#=
       qq0#,  rr0#, - ss0#=
       fld#, ->TextField.display_pos#  uu0#=
       if uu0#<ss0# then ss0#,  fld#, ->TextField.display_pos#=
       goto textfield_input10

     // BS キーが押されたときの処理
     textfield_input5:
       if key_code#<>BS_KEY goto textfield_input7
       if qq0#<1 goto textfield_input10

       // テキストから１文字削除
       fld#, ->TextField.edit_pos# uu0#=
       uu0#--
       if uu0#<0 then 0, uu0#=
       uu0#, fld#, ->TextField.edit_pos#=
       fld#, ->TextField.display_pos#   pp0#=
       if uu0#<pp0# then uu0#, fld#, ->TextField.display_pos#=
       fld#, ->TextField.text# uu0#, + ss0#= 
       fld#, ->TextField.text# qq0#, + tt0#= 
       textfield_input6:
       (ss0)$(1), (ss0)$=
       ss0#++
       if ss0#<tt0# goto textfield_input6 
       goto textfield_input10

     // Enter キーが押されたときの処理
     textfield_input7:
       if key_code#<>ENTER_KEY goto textfield_input8

       // イベント処置
       fld#, fld#, ->@TextField.input 
       goto textfield_input10

     // 上記以外のキー(通常の文字)が押されたときの処理
     textfield_input8:

       // テキストのサイズが余裕がないときは何もしない
       if qq0#>=TEXTFIELD_MAX  goto textfield_input10

       // 編集ポイントに１文字挿入
       fld#, ->TextField.text# qq0#, + ss0#=
       fld#, ->TextField.text# fld#, ->TextField.edit_pos# pp0#= + tt0#=
       textfield_input9:
       (ss0)$, (ss0)$(1)=
       ss0#--
       if ss0#>=tt0# goto textfield_input9
       if key_code+2%>=' ' then key_code+2%,  (ss0)$(1)=  // 入力した文字を編集ポイントに挿入する
       pp0#++
       pp0#, fld#, ->TextField.edit_pos#= 
       pp0#, rr0#, - ss0#= 
       fld#, ->TextField.display_pos#  uu0#=
       if uu0#<ss0# then ss0#,  fld#, ->TextField.display_pos#=
       
     textfield_input10:
       com#, repaint
       end


// テキストボックスをクリックしたときの処理( 直接呼び出し不可 )
// (フォーカスとキャレットを移動させる)
textfield_clicked:
  com#= ->Component.subclass# fld#=
  fld#, ->TextField.text# xstrlen qq0#=                             // テキストの長さを求める

//  "textfield clicked", log, fprints log, fnl

  com#, focused_component#=       //       log_focus

  // マウスカーソルがある桁を求める
  mouse_x#, com#, ->Component.left# - FONT_WIDTH, / 
  fld#, ->TextField.display_pos# +  pp0#=
  if pp0#>qq0# then qq0#, pp0#=
  pp0#, fld#, ->TextField.edit_pos#=
  desktop, ->Desktop.component repaint
  end


// 入力完了で呼ばれる関数を設定
set_textfield_input:
 tt0#= pop fld#=
 tt0#, fld#, ->TextField.input#=
 end


// 表示テキストを設定する
set_textfield_text:
  fld#= pop fldtxt#=
  fld#, ->TextField.text# tt0#=
  fldtxt#, tt0#, TEXTFIELD_MAX, strncpy
  0, fld#, ->TextField.edit_pos#=
  0, fld#, ->TextField.display_pos#=
//  fld#, ->TextField.component repaint
  end




xstrlen:
  long xxx#,yyy#
  xxx#=
  0, yyy#=
xstrlen1:
  if (xxx)$=NULL then yyy#, end
  if yyy#>255 then 255, end
  xxx#++
  yyy#++
  goto xstrlen1
     

// 描画関数
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


// 入力デバイスの状態を読み取る
read_input_device:
  0, mouse_left#= mouse_right#= mouse_dx#= mouse_dy#= key_code#=
  inkey key0#=
  if key0#=quit_key# then 0, gui_is_running#= end                       // 終了
  if key0#=mode_key# then 1, mouse_mode#, - mouse_mode#=    // マウス・キーボードの切り替え
  if mouse_mode#=0 goto get_keyboad_mouse
  
// マウスの状態を読み込む
/ rcx=pointer_protocol/
/ rcx=(rcx)/
/ rdx=mouse_data/
/ rax=mouse_get_state/
/ rax=(rax)/
/ call (rax)/
/ rdi=rax/
  tt#=
  if tt#<>0 then 1, mouse_mode#= gotoget_keyboad_mouse // エラーが出たときはキーボードマウスを有効にする
  
  // マウスのデータを読み込む
  mouse_data+MOUSE_X!, MOUSE_SENSIVITY, / mouse_dx#=
  mouse_data+MOUSE_Y!, MOUSE_SENSIVITY, / mouse_dy#=
  mouse_data+MOUSE_LEFT$,   mouse_left#=
  mouse_data+MOUSE_RIGHT$, mouse_right#=
  goto set_cursor_position

// キーボードマウス
get_keyboad_mouse:
  if key0#=0 then 0, end
  if key0#=speed_key# then max_speed#, mouse_speed#, - mouse_speed#= // カーソル移動速度の切り替え
  if key0#=up_key#     then 0, mouse_speed#, - mouse_dy#=   //  マウスカーソルの移動
  if key0#=down_key# then mouse_speed#, mouse_dy#=
  if key0#=right_key#  then mouse_speed#, mouse_dx#=
  if key0#=left_key#    then 0, mouse_speed#, -   mouse_dx#=
  if key0#=lclick_key#  then 1, mouse_left#=      // 左クリック
  if key0#=rclick_key#  then 1, mouse_right#=  // 右クリック

// マウスカーソルの位置(とキーコード)を設定する
set_cursor_position:
  key0#, key_code#=
  restore_cursor_area
  mouse_x#, mouse_dx#, + mouse_x#=
  mouse_y#, mouse_dy#, + mouse_y#=
  if mouse_x#<0 then 0, mouse_x#=
  if mouse_x#>=screen_width#  then screen_width#,  1, - mouse_x#=
  if mouse_y#<0 then 0, mouse_y#=
  if mouse_y#>=screen_height# then screen_height#, 1, - mouse_y#=
  save_cursor_area
  draw_cursor
  end


// マウスカーソル領域を復帰する
restore_cursor_area:
  mouse_x#, x0#= CURSOR_SIZE-1, + x1#=
  if x1#>=screen_width#  then screen_width#,  1, - x1#= 
  mouse_y#, y0#= CURSOR_SIZE-1, + y1#=
  if y1#>=screen_height# then screen_height#, 1, - y1#= 
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

  
// 描画色をセット
set_color:
  color#=
  end
  

// 描画色を得る
get_color:
  color#,
  end

// スクリーンバッファを描画する
_disp:
  screen_width#, screen_height#, * 1, - ii#=
_disp1:
  (screen_buffer)!(ii#), (graphic_base)!(ii#)=
  ii#--
  if ii#>=0 goto _disp1
  save_cursor_area
  draw_cursor
  end


// 画面を指定した色で塗りつぶす
gcls:
  pp#=
  screen_width#, screen_height#, * 1, - ii#=
gcls1:
  pp#, (screen_buffer)!(ii#)=
  ii#--
  if ii#>=0 goto gcls1
  _disp
  end


// 点を打つ
draw_point:
  py#= pop px#=
  if color#=COLOR_CLEAR then end
  py#, screen_width#, * px#, +
  4, * screen_buffer#, + pp#=
//  4, * graphic_base#, + pp#=
  color#, (pp)!=
  end


// 与えられた座標の色を返す
get_point:
  py#= pop px#=
  py#, screen_width#, * px#, +
  4, * screen_buffer#, + pp#=
  (pp)!,  end

  
// 線を引く
// 使用法: gx, gy, gx1, gy1, draw_line
draw_line:
  gy1#= pop gx1#= pop gy#= pop gx#=
  if color#=COLOR_CLEAR then end

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
    
// 長方形を描いてうめる
// 使用法: gx, gy, gx1, gy1, fill_rect
fill_rect: 
  gy1#= pop gx1#= pop gy#= pop gx#=
  if color#=COLOR_CLEAR then end

// "fill rect:", log, fprints log, fnl

  1, rx#= ry#=
  if gy#<gy1# then -1, ry#=
  if gx#<gx1# then -1, rx#=
  for iy#=gy1# to gy# step ry#
    for ix#=gx1# to gx# step rx#
      ix#,  iy#, draw_point
    next ix#
  next iy#
  end

// 長方形を描く
// 使用法: gx, gy, gx1, gy1, draw_rect
draw_rect: 
  gy1#= pop gx1#= pop gy#= pop gx#=
  if color#=COLOR_CLEAR then end
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
  end
  
// 楕円を描いてうめる
// 使用法: gx, gy, gx1, gy1, fill_circle
fill_circle:
  draw_circle
  ox1#, oy1#, paint
  end

// 楕円を描く
// 使用法: gx, gy, gx1, gy1, draw_circle
draw_circle:
  long ox1#,oy1#
  gy1#= pop gx1#= pop gy#= pop gx#=
  if color#=COLOR_CLEAR then end
  gx#,  vx#=  gy#,  vy#=
  gx1#, vx1#= gy1#, vy1#=
  if gx1#>gx# then gx1#, gx#, swap gx#= swap gx1#=
  if gy1#>gy# then gy1#, gy#, swap gy#= swap gy1#=
  gx#, gx1#, + 2, / ox1#=
  gy#, gy1#, + 2, / oy1#=
  gx#, gx1#, - 2, / qx#=
  if qx#=0 then line end
  gy#, gy1#, - 2, / qy#=
  if qy#=0 then line end
  gx#, gx1#=  oy1#, gy1#=
  for ii#=0 to TABLE_N
    qx#, cos2table#(ii#), * 32767, / ox1#, + gx#=
    qy#, sin2table#(ii#), * 32767, / oy1#, + gy#=
    line
    gx#, gx1#= gy#, gy1#=
  next ii#
  end


// 三角形を描いてうめる
// 使用法: sx, sy, sx1, sy1, sx2, sy2, fill_triangle
fill_triangle:
  draw_triangle
  trx#, trx1#, + trx2#, + 3, / trx#= 
  try#, try1#, + try2#, + 3, / try#= 
  trx#, try#, paint
  end


// 三角形を描く
// 使用法: sx, sy, sx1, sy1, sx2, sy2, draw_triangle
draw_triangle:
  long trx#,try#,trx1#,try1#,trx2#,try2#
  try2#= pop trx2#= pop
  try1#= pop trx1#= pop
  try#=   pop trx#=
  if color#=COLOR_CLEAR then end
  trx#, try#, trx1#, try1#, draw_line
  trx1#, try1#, trx2#, try2#, draw_line
  trx2#, try2#, trx#, try#, draw_line
  end


// 塗る
paint:
  const Q_SIZE   4096
  long   q_buf#(Q_SIZE)
  long   put_p#,get_p#
  
  gy#= pop gx#=
  if color#=COLOR_CLEAR then end
  0, put_p#= get_p#=
  gx#, gy#, get_point co#=
  if co#=color# then end
  gx#, gy#, put_pset

  paint1:  // うった点の座標を求める
    if get_p#=put_p# then end
    q_buf#(get_p#), vx#=   get_p#++
    q_buf#(get_p#), vy#=   get_p#++
    if get_p#>=Q_SIZE then 0, get_p#=

    // うった点の四方にまた点をうつ
    vx#, 1, + vy#, put_pset
    vx#, 1,  - vy#, put_pset
    vy#, 1, + vx#, swap put_pset
    vy#, 1,  -  vx#, swap put_pset
  goto paint1
  
  //  点をうってその座標を記録する
  put_pset:
    qy#= pop qx#=
    if qx#<0     then end  // 範囲外ならしない
    if qx#>=screen_width#  then end
    if qy#<0     then end
    if qy#>=screen_height# then end
    qx#, qy#, get_point co#=
    if co#=color# then end // すでに点がうってあるときもしない
    qx#, qy#, draw_point
    qx#, q_buf#(put_p#)=  put_p#++
    qy#, q_buf#(put_p#)=  put_p#++
    if put_p#>=Q_SIZE then 0, put_p#=
    end


// 画像を描画
// 使用法: gx, gy, address, draw_image
draw_image:
  qq#= pop gy#= pop gx#=
  (qq)!, rx#=
  qq#, 4, + qq#=
  (qq)!, ry#=
  qq#, 4, + qq#=
  gx#, rx#, + 1, - gx1#=
  gy#, ry#, + 1, - gy1#=
  for ii#=gy# to gy1#
    for jj#=gx# to gx1#
      ii#, screen_width#, * jj#, +
      4, * screen_buffer#, + pp#=
      if (qq)$(3)=0 then (qq)!, (pp)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  ii#, end
    

// コピーエリアに画像をコピー
// 使用法: gx, gy, gx1, gy1, copy_image
copy_image:
  gy1#= pop gx1#= pop gy#= pop gx#=
  if gx1#>=screen_width#  then screen_width#,  1, - gx1#= 
  if gy1#>=screen_height# then screen_height#, 1, - gy1#= 
  copy_area#, qq#=
  gx1#, gx#, - 1, + (qq)!=
  qq#, 4, + qq#=
  gy1#, gy#, - 1, + (qq)!=
  qq#, 4, + qq#=
  for ii#=gy# to gy1#
    for jj#=gx# to gx1#
      ii#, screen_width#, * jj#, +
      4, * screen_buffer#, + pp#=
      (pp)!, (qq)!=
      qq#, 4, + qq#=
    next jj#
  next ii#
  end


// コピーエリアから貼り付ける
// 使用法: gx, gy, paste_image
paste_image:
  copy_area#, draw_image
  end
    

// 画像をロード
// 使用法:  fname, load_image address#=
load_image:
  char image_fp$(FILE_SIZE)
  long fnm#

  fnm#=

// "load image:", log, fprints
// fnm#, log, fprints log, fnl

  fnm#, image_fp, ropen tt#=
  if tt#=ERROR then NULL, end
  4, sx, image_fp, _read
  4, sy, image_fp, _read

//  "width=",     log, fprints sx!, log, fprintd
//  ", height=", log, fprints sy!, log, fprintd log, fnl
  
  sx!, sy!, *  4, * tt#=
  8, +  malloc pp#=
  sx!, (pp)!(0)=   sy!, (pp)!(1)= 
  pp#, 8, + qq#=
  tt#, qq#,  image_fp, _read
  image_fp, rclose
  
// "load image end", log, fprints log, fnl
  
  pp#, end

  
// 画像をセーブ
// 使用法: address, fname, save_image
save_image:
  pp#= pop qq#=
  pp#, fp, wopen tt#=
  if tt#=ERROR then ERROR, end
  qq#, 4, + tt#=
  4, qq#, fp, _write
  4, tt#,  fp, _write
  (qq)!, (tt)!, *  4, * tt#=
  qq#, 8, + qq#=
  tt#, qq#, fp, _write
  fp, wclose
  0, end

  
// 文字列描画
draw_string:
  long dsx#,dsy#,dsw#,dss#,dsr#
  dss#= pop dsw#= pop dsy#= pop dsx#=
  if color#=COLOR_CLEAR then end
  dsx#, dsw#, + FONT_WIDTH, - dsw#=
  draw_string1:
    if (dss)$=NULL then end
    dsx#, dsy#, (dss)$, draw_font dsr#=
    dsx#, FONT_WIDTH, + dsx#=
    dss#++
  if dsx#<dsw# goto draw_string1
  dsr#, end


// 1文字描画
draw_font:
  pp#= pop ty#= pop tx#=
  pp#, FONT_WIDTH, * FONT_HEIGHT, * font_area#, + qq#=
  tx#, FONT_WIDTH-1,  + rx#=
  ty#, FONT_HEIGHT-1, + ry#=
  for ii#=ty# to ry#
     for jj#=tx# to rx#
        if (qq)$<>0 then jj#, ii#, draw_point
        qq#++
     next jj#
  next ii#
  ii#, end


 .data

// グラフィックAPIのガイド
graphic_guid:
 data 0x4a3823dc9042a9de
 data 0x6a5180d0de7afb96

// マウスAPIのガイド
pointer_guid:
 data 0x11d50b7531878c87
 data 0x4dc13f2790004f9a

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

// 色の定義 
 const COLOR_BLACK 0x000000
 const COLOR_WHITE 0xffffff
 const COLOR_RED 0xff0000
 const COLOR_BLUE 0x0000ff
 const COLOR_GREEN 00ff00
 const COLOR_MOSGREEN 0x308060
 const COLOR_GRAY  0x808080
 const COLOR_LIGHT_GRAY 0xc0c0c0
 const COLOR_CLEAR 0xff000000

// 定数定義
 const TRUE 1
 const FALSE 0
 const MOUSE_X 0
 const MOUSE_Y 4
 const MOUSE_LEFT 12
 const MOUSE_RIGHT 13
 const MOUSE_SENSIVITY 6000
 const MAX_MOUSE_SPEED 10
 const CURSOR_SIZE 16
 const FONT_WIDTH  14
 const FONT_HEIGHT 18
 const ESC_KEY  23
 const CTRL_D_KEY 262144
 const DEL_KEY 8
 const UP_KEY 1
 const DOWN_KEY 2
 const RIGHT_KEY 3
 const LEFT_KEY 4
 const INS_KEY 7
 const BS_KEY 524288
 const SPACE_KEY 2097152
 const ENTER_KEY 851968

// デスクトップ
 class Desktop
  long   image#      // 壁紙

  // イベント拡張
  long   lclicked#   // 左クリックしたときの処理 
  long   rclicked#   // 右クリックしたときの処理 
  long   paint#       // 描画処理 

  // コンポーネント本体 
  Component  component
 end


// look&feel
 .data
lf_desktop:
  data paint_desktop     // paint_component
  data no_operation       // key_pressed
  data desktop_lclicked  // mouse_lclicked
  data desktop_rclicked  // mouse_rclicked
  data no_operation       // mouse_lclicked2
  data no_operation       // mouse_rclicked2
  data no_operation       // remove_component

  
  char desktop$(Desktop.SIZE)

// デスクトップを生成する
create_desktop:

// "create desktop:", log, fprints log, fnl

  NULL, desktop, ->Desktop.image#=
  no_operation, desktop, ->Desktop.lclicked#=
  no_operation, desktop, ->Desktop.rclicked#=
  no_operation, desktop, ->Desktop.paint#=
  desktop, ->Desktop.component com#=
  NULL, com#,  ->Component.subclass#=
  TYPE_DESKTOP, com#, ->Component.type#=
  NULL, com#,  ->Component.parent#=
  NULL, com#,  ->Component.top_child#=
  NULL, com#,  ->Component.end_child#=
  lf_desktop, com#, ->Component.look_and_feel#=
  0, com#, ->Component.status#=
  TRUE, com#, ->Component.is_visible#=
  FALSE, com#, ->Component.is_focusable#=
  FALSE, com#, ->Component.is_painting#=
  COLOR_WHITE, com#, ->Component.foreground#=
  COLOR_MOSGREEN,  com#, ->Component.background#=
  NULL_BORDER, com#, ->Component.border#=
  0, com#, ->Component.x#=
  0, com#, ->Component.y#=
  0, com#, ->Component.left#=
  0, com#, ->Component.top#=
  screen_width#,  com#, ->Component.width#=
  screen_height#, com#, ->Component.height#=
  screen_width#,  com#, ->Component.right#=
  screen_height#, com#, ->Component.bottom#=
  NULL, com#, ->Component.prev#=
  NULL, com#, ->Component.next#=



//  "com=", log, fprints com#, hex log, fprints
//   log, fnl
//  com#, ->Component.is_visible# tt#=
//  "is_visible=", log, fprints tt#, log, fprintd log, fnl
//  com#, ->Component.background# tt#=
//  "background=", log, fprints tt#, hex log, fprints 
//  log, fnl
//  com#, ->Component.look_and_feel# tt#=
//  "look and feel=", log, fprints tt#, hex log, fprints
//   log, fnl
//  tt#, ->LookAndFeel.paint_component# tt#=
//  "paint component=", log, fprints tt#, hex log, fprints
//   log, fnl
//  "paint desktop=", log, fprints paint_desktop, hex log, fprints
//   log, fnl


// "create desktop end", log, fprints log, fnl

 end

 
// ウィンドウを表示する( 直接呼び出し不可 )
paint_desktop:
  com#=

// "paint desktop:", log, fprints log, fnl
//  "com=", log, fprints com#, hex log, fprints
//  log, fnl

  com#, ->Component.top# pp#=
  desktop, ->Desktop.image# tt#=
  if tt#=NULL then com#, paint_base gotopaint_desktop1
  com#, ->Component.left#
  com#, ->Component.top#
  desktop, ->Desktop.image#
  draw_image
paint_desktop1:
  desktop, ->@Desktop.paint
  end


// デスクトップ上で左クリックしたときの処理( 直接呼び出し不可 )
desktop_lclicked:
  desktop, ->@Desktop.lclicked  // 右クリックのコールバックを実行
  desktop, ->Desktop.component  repaint
  end


// デスクトップ上で右クリックしたときの処理( 直接呼び出し不可 )
desktop_rclicked:
  desktop, ->@Desktop.rclicked  // 右クリックのコールバックを実行
  desktop, ->Desktop.component  repaint
  end


// デスクトップの設定を読み込む
load_desktop:
  char dbuf$(64),wallpaper$(64)
  long dfile#,dimg#,dtxt#,dcmd#,dbtn#


//  "load desktop:", log, fprints log, fnl


  "desktop.ini",  fp, ropen  tt#=
  if tt#=ERROR then end

  // 各種キー割り当て
  dbuf,  fp, finputs  dbuf, 10, atoi  max_speed#=
  dbuf,  fp, finputs  dbuf, 10, atoi  quit_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  mode_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  speed_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  left_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  right_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  up_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  down_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  lclick_key#=
  dbuf,  fp, finputs  dbuf, 10, atoi  rclick_key#=

  // 文字色
  dbuf,  fp, finputs
  dbuf, 16, atoi desktop, ->Desktop.component ->Component.foreground#=
  
  // 背景色
  dbuf,  fp, finputs
  dbuf, 16, atoi desktop, ->Desktop.component ->Component.background#=
  
  // 壁紙
  wallpaper,  fp, finputs
  wallpaper, load_image  desktop, ->Desktop.image#=

  // アイコン
  load_desktop1:
    dbuf,  fp, finputs  tt#=
    if tt#=EOF goto load_desktop2

//  "icon=", log, fprints
//   dbuf, log, fprints log, fnl

    dbuf, "end", strcmp tt#= 
    if tt#=0 goto load_desktop2
    dbuf, strlen 1, + malloc dfile#=            // 画像ファイル名
    dbuf, dfile#, strcpy 
    dbuf,  fp, finputs
    dbuf, strlen 1, + malloc dtxt#=            // テキスト
    dbuf, dtxt#, strcpy 
    dbuf,  fp, finputs
    dbuf, strlen 1, + malloc dcmd#=          // コマンド
    dbuf, dcmd#, strcpy 
    dbuf,  fp, finputs dbuf, 10, atoi sx#=   // X座標
    dbuf,  fp, finputs dbuf, 10, atoi sy#=   // Y座標
    dtxt#, dfile#, dcmd#, sx#, sy#, create_desktop_icon
    goto load_desktop1
  load_desktop2:
  fp, rclose
  end


// デスクトップの設定を保存する
save_desktop:


//  "save desktop:", log, fprints log, fnl

  "desktop.ini",  fp, wopen  tt#=
  if tt#=ERROR then end  

  // 各種キー割り当て
  max_speed#,  fp,  fprintd fp, fnl
  quit_key#,      fp,  fprintd fp, fnl
  mode_key#,    fp,  fprintd fp, fnl
  speed_key#,   fp,  fprintd fp, fnl
  left_key#,       fp,  fprintd fp, fnl
  right_key#,     fp,  fprintd fp, fnl
  up_key#,         fp,  fprintd fp, fnl
  down_key#,     fp,  fprintd fp, fnl
  lclick_key#,     fp,  fprintd fp, fnl
  rclick_key#,     fp,  fprintd fp, fnl

  // 文字色
  desktop, ->Desktop.component ->Component.foreground#  hex fp, fprints fp, fnl

  // 背景色
  desktop, ->Desktop.component ->Component.background#  hex fp, fprints fp, fnl

  // 壁紙
  wallpaper, fp, fprints fp, fnl

  // アイコン
  desktop, ->Desktop.component ->Component.top_child# com#=
  save_desktop1:
    if com#=NULL goto save_desktop3
    com#, ->Component.type# tt#=
    
//    "type=", log, fprints tt#, log, fprintd log, fnl
    
    if tt#<>TYPE_BUTTON goto save_desktop2
    com#, ->Component.subclass# dbtn#=
    
    
    
    dbtn#, ->Button.imagefile#    fp, fprints  fp, fnl    // 画像ファイル名
    dbtn#, ->Button.text#            fp, fprints  fp, fnl    // テキスト
    dbtn#, ->Button.command#    fp, fprints  fp, fnl    // コマンド
    com#, ->Component.x#          fp, fprintd  fp, fnl   // X座標
    com#, ->Component.y#          fp, fprintd  fp, fnl   // Y座標
    save_desktop2:
    com#, ->Component.next# com#=
    goto save_desktop1
  save_desktop3:
  "end", fp, fprints fp, fnl
  fp, wclose

//  "save desktop end", log, prints log, fnl

  end


// デスクトップを削除する
remove_desktop:
  long dsk#

//  "remove desktop:", log, prints log, fnl

  desktop, ->Desktop.image# tt#=
  if tt#<>NULL then tt#, free
  desktop, ->Desktop.component dsk#=
  remove_desktop1:
    dsk#, ->Component.top_child# com#=
    if com#=NULL goto remove_desktop2
    com#, ->Component.type# tt#=
    if tt#=TYPE_BUTTON   then  com#, remove_component //->Component.subclass# remove_desktop_icon
    if tt#<>TYPE_BUTTON then  com#, remove_component
    goto remove_desktop1
  remove_desktop2:

//  "remove desktop end", log, prints log, fnl

  end


// デスクトップのアイコンをクリックしたとき呼ばれる
desktop_icon_lclicked:
  ->Button.command# exec_command
  desktop, ->Desktop.component repaint
  end  


// デスクトップのアイコンを作成する
create_desktop_icon:
  sy2#= pop sx2#= pop
  dcmd#= pop dfile#= pop dtxt#=
  
//  "create desktop icon:", log, fprints log, fnl
//  "txt=", log, fprints  dtxt#, log, fprints   log, fnl
//  "file=", log, fprints  dfile#, log, fprints   log, fnl
//  "cmd=", log, fprints  dcmd#, log, fprints   log, fnl

  
  dfile#, load_image dimg#=
  
//  "image address=", log, fprints  dimg#, hex log, fprints
//   log, fnl
  
  
  Button.SIZE, malloc dbtn#=

//  "alloc icon=", log, fprints  dbtn#, hex log, fprints
//   log, fnl

  dtxt#, strlen 1, + FONT_WIDTH, * sx1#=
  FONT_HEIGHT+2, sy1#=

  if dimg#=NULL goto create_desktop_icon1
    if (dimg)!>sx1# then (dimg)!, sx1#=  // アイコン画像の幅がテキスト幅より大きいときはそっちに合わせる
    (dimg)!(1), sy1#, + sy1#=                  // アイコン画像の高さとテキストの高さを加えてアイコンの高さとする
  create_desktop_icon1:
  desktop, ->Desktop.component com#=

//  "create button", log, fprints log, fnl

  dbtn#, desktop, com#, dtxt#, create_button 

//  "create icon end", log, fprints log, fnl

  dfile#,  dbtn#, ->Button.imagefile#=
  dimg#, dbtn#, ->Button.image#=
  dcmd#, dbtn#, ->Button.command#=
  dbtn#, ->Button.component com#=
  sx2#, com#, ->Component.x#=
  sy2#, com#, ->Component.y#=
  sx1#, com#, ->Component.width#=
  sy1#, com#, ->Component.height#=
  desktop, ->Desktop.component ->Component.foreground# com#, ->Component.foreground#=
  COLOR_CLEAR, com#, ->Component.background#=
  NULL_BORDER, com#, ->Component.border#=
  desktop_icon_lclicked, dbtn#, ->Button.lclicked#=  // 左クリックすると呼ばれる関数を設定
  show_icon_menu,         dbtn#, ->Button.rclicked#= // 右クリックすると呼ばれる関数を設定

//  "create desktop icon end", log, fprints log, fnl

  end


// デスクトップのアイコンを削除する
remove_desktop_icon:
  dbtn#=
  if dbtn#=NULL then end
  dbtn#, ->Button.text#  tt#=          // テキスト
  if tt#<>NULL then tt#, free
  dbtn#, ->Button.imagefile# tt#=   // 画像ファイル名
  if tt#<>NULL then tt#, free
  dbtn#, ->Button.image#  tt#=      // 画像
  if tt#>0 then tt#, free
  dbtn#, ->Button.command# tt#= // コマンド
  if tt#<>NULL then tt#, free
  dbtn#, ->Button.component com#=
  com#, remove_component
  dbtn#, free
  end

// ウィンドウ 
 class Window
  long       subclass#            // サブクラスへのポインタ 
  long       title#                  // ウィンドウのタイトル 
  long       state#                 // ウィンドウの状態 
  long       resizable#          // サイズ変更可能フラグ（デフォルトでTRUE） 
  long       height#              // ウィンドウの高さ(MINIMIZE状態の時に保存する)

  // イベント拡張 
  long        resized#               // ウィンドウサイズを変えた時の処理 
  long        closed#                // ウィンドウを閉じた時の処理 
  long        keyinput#            // キー入力したときの処理 
  long        lclicked#              // 左クリックしたときの処理 
  long        rclicked#              // 右クリックしたときの処理 
  long        paint#                 // 描画処理 
  long        removed#            // 削除処理

  // コンポーネント本体 
  Component  component

  // 閉じるボタン 
  Button  close_button

 end

// look&feel
 .data
lf_window:
  data paint_window      // paint_component
  data window_keyinput // key_pressed
  data window_lclicked   // mouse_lclicked
  data window_rclicked   // mouse_rclicked
  data window_clicked2  // mouse_lclicked2
  data no_operation       // mouse_rclicked2
  data window_removed // remove_component

  // ウィンドウの状態
  enum
    WINDOW_NORMAL
    WINDOW_MOVE
    WINDOW_RESIZE
    WINDOW_MINIMIZE
    WINDOW_MOVE2
  end
  
// 定数
  const CORNER_RANGE 20

// ウィンドウを生成する
create_window:
  long wintitle#,winsub#,win#,close_btn#

  wintitle#= pop winsub#= pop win#=
  winsub#, win#, ->Window.subclass#=
  wintitle#, win#, ->Window.title#=
  WINDOW_NORMAL, win#, ->Window.state#=
  TRUE, win#, ->Window.resizable#=
  no_operation, win#, ->Window.resized#=
  no_operation, win#, ->Window.closed#=
  no_operation, win#, ->Window.keyinput#=
  no_operation, win#, ->Window.lclicked#=
  no_operation, win#, ->Window.rclicked#=
  no_operation, win#, ->Window.paint#=
  no_operation, win#, ->Window.removed#=
  win#, ->Window.component com#=
  com#, win#, desktop, ->Desktop.component lf_window, create_component
  TYPE_WINDOW, com#, ->Component.type#=
  FALSE, com#, ->Component.is_focusable#=
  COLOR_BLACK, com#, ->Component.foreground#=
  COLOR_LIGHT_GRAY, com#, ->Component.background#=
  RAISED_BORDER, com#, ->Component.border#=

  // "閉じる"ボタンを生成
  win#, ->Window.close_button close_btn#=
  win#,
  win#, ->Window.component
  "x",
  create_button 
  close_btn#, close_button_clicked, set_button_lclicked
  set_close_button
  end

 
// ウィンドウを表示する( 直接呼び出し不可 )
paint_window:
  com#=
  com#, ->Component.subclass# win#=
  win#, ->Window.close_button close_btn#=
  set_close_button
  
  // 基盤を描く
  com#, paint_base

  // タイトルバーを描画
  COLOR_BLUE, set_color
  com#, ->Component.left#   1, + pp#=
  com#, ->Component.top#   1, + qq#=
  com#, ->Component.right# 1, -  rr#=
  com#, ->Component.top# FONT_HEIGHT+2, + ss#=
  pp#, qq#, rr#, ss#, draw_rect
  
  // タイトルを描く
  com#, ->Component.foreground# set_color
  com#, ->Component.left# 1, + pp#=
  com#, ->Component.top# 1, + qq#=
  pp#, qq#, win#,  ->Window.title#  draw_string

  win#, win#, ->@Window.paint
  end


// ウィンドウのキー入力したときの処理( 直接呼び出し不可 )
window_keyinput:
  com#= ->Component.subclass# win#=
  WINDOW_NORMAL, win#, ->Window.state#=
  win#, win#, ->@Window.keyinput
  end


// ウインドウ上で左クリックしたときの処理( 直接呼び出し不可 )
window_lclicked:
  long rx1#,ry1#
  com#= 
  com#, ->Component.left#        rx#=
  com#, ->Component.top#        ry#=
  com#, ->Component.right#      rx1#=
  com#, ->Component.bottom#  ry1#=
  com#, ->Component.subclass# win#= ->Window.state# pp#=

// ノーマルモード
window_lclicked1:
  if pp#<>WINDOW_NORMAL goto window_lclicked3
  ry#, FONT_HEIGHT, + qq#=
  mouse_x#, mouse_y#, rx#, ry#, rx1#, qq#, is_on_rectangle tt#=
  if tt#=TRUE then WINDOW_MOVE, win#, Window.state#= gotowindow_lclicked2
  rx1#, CORNER_RANGE, -  qq#=
  ry1#, CORNER_RANGE, -  rr#=
  mouse_x#, mouse_y#, qq#, rr#, rx1#, ry1#, is_on_rectangle
  win#, ->Window.resizable# and tt#=
  if tt#=TRUE then WINDOW_RESIZE, win#, Window.state#=
window_lclicked2:
  win#, win#, ->@Window.lclicked
  end

// 移動モード
window_lclicked3:
  if pp#<>WINDOW_MOVE goto window_lclicked4
  mouse_x#, com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  end

// リサイズモード
window_lclicked4:
  if pp#<>WINDOW_RESIZE then end
  mouse_x#, rx#, - com#, ->Component.width#=
  mouse_y#, ry#, - com#, ->Component.height#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.resized // リサイズのコールバックを実行
  end


// ウインドウ上で右クリックしたときの処理( 直接呼び出し不可 )
window_rclicked:
  ->Component.subclass# win#=
  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.rclicked  // 右クリックのコールバックを実行
  end


// 2回めクリックしたときの処理( 直接呼び出し不可 )
window_clicked2:
  clicked_component#, com#=
  com#, ->Component.left#        rx#=
  com#, ->Component.top#        ry#=
  com#, ->Component.right#      rx1#=
  com#, ->Component.bottom#  ry1#=
  com#, ->Component.subclass# win#= ->Window.state# pp#=

// 移動モード
window_clicked2_1:
  if pp#<>WINDOW_MOVE goto window_clicked2_2
  mouse_x#, com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  end

// リサイズモード
window_clicked2_2:
  if pp#<>WINDOW_RESIZE then end
  mouse_x#, rx#, - com#, ->Component.width#=
  mouse_y#, ry#, - com#, ->Component.height#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.resized // リサイズのコールバックを実行
  end


// ウィンドウを削除するときの処理( 直接呼び出し不可 )
window_removed:
  ->Component.subclass# win#=
  win#, win#, ->@Window.removed // 削除処理のコールバックを実行
  end


// "閉じる" ボタンをクリックしたときの処理( 直接呼び出し不可 )
close_button_clicked:
  ->Component.subclass# ->Button.subclass# win#= ->Window.component com#=
  win#, ->Window.state# tt#=

// 通常状態の場合
close_button_clicked1:
  if tt#<>WINDOW_NORMAL goto close_button_clicked2
  WINDOW_MINIMIZE, win#, ->Window.state#=
  com#, ->Component.height# win#, ->Window.height#=
  win#, win#, ->@Window.closed // 閉じるコールバックを実行
  desktop, ->Desktop.component repaint
  end

// 最小化状態の場合
close_button_clicked2:
  if tt#<>WINDOW_MINIMIZE then end
  WINDOW_NORMAL, win#, ->Window.state#=
  win#, ->Window.height# com#, ->Component.height#=
  desktop, ->Desktop.component repaint
  end


// 閉じるボタンの位置・大きさを設定する
// (変数win#,close_btn#があらがじめ設定されていること)
set_close_button:
  win#, ->Window.component com#=
  com#, ->Component.width# FONT_WIDTH+2, - pp#=
  if pp#<1 then 1, pp#= 
  close_btn#, ->Button.component# com#=
  pp#, com#, ->Component.x#=
  1,     com#, ->Component.y#=
  FONT_WIDTH,  com#, ->Component.width#=
  FONT_HEIGHT, com#, ->Component.height#=
  end


// タイトルを設定する
set_window_title:
 wintitle#= pop win#=
 wintitle#, win#, ->Window.title#=
 win#, ->Window.component repaint
 end


// サイズ変更可能フラグを設定する
set_window_resizable:
 tt#= pop win#=
 tt#, win#, ->Window.resizable#=
 end

// デスクトップメニュー
 
  char desktop_menu$(Label.SIZE)
  char desktop_menu_create_icon$(Button.SIZE)
  char desktop_menu_cancel$(Button.SIZE)
 

// デスクトップメニューを作成する
create_desktop_menu:
  desktop, ->Desktop.component com#=

  // シートを生成
  desktop_menu, desktop, com#, "", create_label 
  desktop_menu, ->Label.component com0#=
  200, com0#, ->Component.width#=
  40,   com0#, ->Component.height#=
  RAISED_BORDER, com#, ->Component.border#=
  FALSE, com#, ->Component.is_visible#=

  // アイコン作成ボタンを生成
  desktop_menu_create_icon, desktop, com0#, " create icon", create_button 
  desktop_menu_create_icon, ->Button.component com1#=
  0,     com1#, ->Component.x#=
  0,     com1#, ->Component.y#=
  200, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  desktop_menu_create_icon, desktop_menu_create_icon_clicked, set_button_lclicked

  // キャンセルボタンを生成
  desktop_menu_cancel, desktop, com0#, "    cancel", create_button 
  desktop_menu_cancel, ->Button.component com1#=
  0,     com1#, ->Component.x#=
  20,   com1#, ->Component.y#=
  200, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  desktop_menu_cancel, desktop_menu_cancel_clicked, set_button_lclicked
  end


// デスクトップメニューを表示する
show_desktop_menu:

// "show desktop memu:", log, fprints log, fnl

  desktop_menu, ->Label.component com#=
  mouse_x#, com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// アイコン作成をクリックしたとき
desktop_menu_create_icon_clicked:
  desktop_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  com#, ->Component.x# sx#=
  com#, ->Component.y# sy#=
  NULL, " ", " ", " ", sx#, sy#, show_property_sheet
  end


// キャンセルをクリックしたとき
desktop_menu_cancel_clicked:
  desktop_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end

// アイコンメニュー
 
  char icon_menu$(Label.SIZE)
  char icon_menu_move$(Button.SIZE)
  char icon_menu_delete$(Button.SIZE)
  char icon_menu_property$(Button.SIZE)
  char icon_menu_cancel$(Button.SIZE)
 

// アイコンメニューを作成する
create_icon_menu:
  desktop, ->Desktop.component com#=

  // シートを生成
  icon_menu, desktop, com#, "", create_label 
  icon_menu, ->Label.component com0#=
  160, com0#, ->Component.width#=
  80, com0#, ->Component.height#=
  RAISED_BORDER, com#, ->Component.border#=
  FALSE, com0#, ->Component.is_visible#=

  // アイコン移動ボタンを生成
  icon_menu_move, desktop, com0#, "    move", create_button 
  icon_menu_move, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  0,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  icon_menu_move, icon_menu_move_clicked, set_button_lclicked

  // アイコン削除ボタンを生成
  icon_menu_delete, desktop, com0#, "   delete", create_button 
  icon_menu_delete, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  20,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  icon_menu_delete, icon_menu_delete_clicked, set_button_lclicked

  // アイコンプロパティボタンを生成
  icon_menu_property, desktop, com0#, "  property", create_button 
  icon_menu_property, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  40,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  icon_menu_property, icon_menu_property_clicked, set_button_lclicked

  // キャンセルボタンを生成
  icon_menu_cancel, desktop, com0#, "   cancel", create_button 
  icon_menu_cancel, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  60,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  icon_menu_cancel, icon_menu_cancel_clicked, set_button_lclicked
  end


// アイコンメニューを表示する
show_icon_menu:
  long icon#
  icon#=
  icon_menu, ->Label.component com#=
  mouse_x#, com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// アイコン移動をクリックしたとき
icon_menu_move_clicked:
  icon_menu_move_clicked2, desktop, ->Desktop.lclicked#=
  icon_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end


// アイコン移動モード
icon_menu_move_clicked2:
  icon#, ->Button.component com#=
  mouse_x#, com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  no_operation, desktop, ->Desktop.lclicked#=
  desktop, ->Desktop.component repaint
  end

// アイコン削除をクリックしたとき
icon_menu_delete_clicked:
  icon_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  icon#, remove_desktop_icon
  desktop, ->Desktop.component repaint
  end


// アイコンのプロパティをクリックしたとき
icon_menu_property_clicked:
  icon#, ->Button.text# pp#=
  icon#, ->Button.imagefile# qq#=
  icon#, ->Button.command# rr#=
  icon#, ->Button.component com#=
  com#, ->Component.x# sx#=
  com#, ->Component.y# sy#=
  icon_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  icon#, pp#, qq#, rr#, sx#, sy#, show_property_sheet
  end


// キャンセルをクリックしたとき
icon_menu_cancel_clicked:
  icon_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end

// プロパティシート
 
  char property_sheet$(Label.SIZE)
  char property_text$(TextField.SIZE)
  char property_file$(TextField.SIZE)
  char property_cmd$(TextField.SIZE)
  char property_ok$(Button.SIZE)
  char property_cancel$(Button.SIZE)
 

// プロパティシートを作成する
create_property_sheet:
  desktop, ->Desktop.component com#=

  // シートを生成
  property_sheet, desktop, com#, "", create_label 
  property_sheet, ->Label.component com0#=
  paint_property_sheet, property_sheet, ->Label.paint#=
  300, com0#, ->Component.width#=
  170, com0#, ->Component.height#=
  RAISED_BORDER, com0#, ->Component.border#=
  FALSE, com0#, ->Component.is_visible#=

  // テキストプロパティ用テキストボックスを生成
  property_text, desktop, com0#, "", create_textfield 
  property_text, ->TextField.component com1#=
  20,   com1#, ->Component.x#=
  30,   com1#, ->Component.y#=
  260, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=

  // ファイル名プロパティ用テキストボックスを生成
  property_file, desktop, com0#, "", create_textfield 
  property_file, ->TextField.component com1#=
  20,   com1#, ->Component.x#=
  70,   com1#, ->Component.y#=
  260, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=

  // コマンド用テキストボックスを生成
  property_cmd, desktop, com0#, "", create_textfield 
  property_cmd, ->TextField.component com1#=
  20,   com1#, ->Component.x#=
  110, com1#, ->Component.y#=
  260, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=

  // OKボタンを生成
  property_ok, desktop, com0#, "   OK", create_button 
  property_ok, ->Button.component com1#=
  24,   com1#, ->Component.x#=
  140, com1#, ->Component.y#=
  118, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  property_ok, property_sheet_ok_clicked, set_button_lclicked

  // キャンセルボタンを生成
  property_cancel, desktop, com0#, " CANCEL", create_button 
  property_cancel, ->Button.component com1#=
  164, com1#, ->Component.x#=
  140, com1#, ->Component.y#=
  114, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  property_cancel, property_sheet_cancel_clicked, set_button_lclicked
  end


// プロパティシートを表示するとき呼ばれる関数
paint_property_sheet:
  long mx#,my#
  property_sheet, ->Label.component com#=
  com#, ->Component.left# 20, + mx#=
  com#, ->Component.top# 10, + my#=
  mx#, my#, 200, "text",         draw_string
  my#, 42, + my#=
  mx#, my#, 200, "icon file",   draw_string
  my#, 40, + my#=
  mx#, my#, 200, "command", draw_string
  end


// プロパティシートを表示する
show_property_sheet:
  long icon2#,itxt#,ifile#,icmd#,ix1#,iy1#
  iy1#= pop ix1#= pop
  icmd#= pop ifile#= pop itxt#= pop
  icon2#=
  property_sheet, ->Label.component com#=
  mouse_x#, com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  itxt#,  property_text,  set_textfield_text
  ifile#,  property_file,   set_textfield_text
  icmd#, property_cmd, set_textfield_text
  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// OKボタンをクリックしたとき
property_sheet_ok_clicked:
  property_text, ->TextField.text# itxt#=
  itxt#, xstrlen 1, + malloc tt#=
  itxt#, tt#, itxt#= strcpy
  property_file, ->TextField.text# ifile#=
  ifile#, xstrlen 1, + malloc tt#=
  ifile#, tt#, ifile#= strcpy
  property_cmd, ->TextField.text# icmd#=
  icmd#, xstrlen 1, + malloc tt#=
  icmd#, tt#, icmd#= strcpy
  if icon2#<>NULL then icon2#, remove_desktop_icon
  itxt#, ifile#, icmd#, ix1#, iy1#, create_desktop_icon 
  property_sheet, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end


// キャンセルボタンをクリックしたとき
property_sheet_cancel_clicked:
  property_sheet, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end

// 複合GUIコンポーネントとは
// ボタンやラベル等の基本GUIコンポーネントを組み合わせて作られた
// GUIコンポーネントです
main:
  goto _PSTART
_PSTART:
 _1470452313_in

 end
_1470452313_in:
// ウィンドウシステムメイン関数


// char log$(FILE_SIZE)
//  "log", log, wopen


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

  screen_width#, screen_height#, * 4, * malloc screen_buffer#=
  if screen_buffer#=NULL then end
  screen_width#, screen_height#, * 4, * malloc copy_area#=
  if copy_area#=NULL then end
  FONT_WIDTH, FONT_HEIGHT, * 256, * tt#= malloc font_area#=
  if font_area#=NULL then end

  // フォントエリアをクリア
  tt#, 8, / 1, - tt#=
  for ii#=0 to tt#
    0, (font_area)#(ii#)=
  next ii#

  load_cursor tt#=
  if tt#<0 then end    // マウスカーソルが取得できなかったら終了
  load_font tt#=
  if tt#<0 then end    // フォントが取得できなかったら終了
  
  0xffffff, color#=
  0, mouse_mode#=
  1, mouse_speed#=
  screen_width#,  2, / mouse_x#=
  screen_height#, 2, / mouse_y#=
  init_mouse
  
  // 各種キー割り当て
  MAX_MOUSE_SPEED, max_speed#=
  CTRL_D_KEY, quit_key#=
  INS_KEY,        mode_key#=
  DEL_KEY,       speed_key#=
  LEFT_KEY,      left_key#=
  RIGHT_KEY,    right_key#=
  UP_KEY,         up_key#=
  DOWN_KEY,   down_key#=
  ENTER_KEY,   lclick_key#=
  SPACE_KEY,    rclick_key#=
  
  1, gui_is_running#=
  NULL, focused_component#= clicked_component#=

  create_desktop               // デスクトップコンポーネントを生成
  create_desktop_menu     // デスクトップメニューを作成
  create_icon_menu           // アイコンメニューを作成
  create_property_sheet   // プロパティシートを作成
  load_desktop                  // デスクトップの設定を読み込む


  desktop, ->Desktop.component  input_client#= tt#=
  show_desktop_menu, desktop, ->Desktop.rclicked#= // デスクトップの右クリック動作を定義


  
//  "desktop repaint: com=", log, fprints
//  tt#, hex log, fprints log, fnl
  
//  "focused component=", log, fprints
//  focused_component#, hex log, fprints log, fnl

//  "clicked component=", log, fprints
//  clicked_component#, hex log, fprints log, fnl

  tt#, repaint

event_loop: 

  if gui_is_running#=0 goto event_loop_exit

  // マウス・キーボード等の状態を読み込んでマウスカーソルの位置を更新する
  read_input_device

key_event:

  // ESCキー入力があったときは全画面を再描画する
//  if key_code#=ESC_KEY then desktop, ->Desktop.component repaint gotomouse_event  

  // キー入力があったときにキーボードイベントの処理をする
  if key_code#=0 goto mouse_event

  // フォーカスされているGUIコンポーネントがあればキーボードイベントを処理する
  if focused_component#=NULL goto mouse_event
  
  // キーボードイベント処理アドレスにジャンプする
  focused_component#, focused_component#, ->Component.look_and_feel# ->@LookAndFeel.key_pressed

mouse_event:

  // マウスボタンの状態が変化したときマウスイベントの割り当てをおこなう
  if mouse_left#<>mouse_left0#     then  input_client#, dispatch_mouse_event gotomouse_event1
  if mouse_right#<>mouse_right0# then  input_client#, dispatch_mouse_event gotomouse_event1

mouse_event1:
  mouse_left#,   mouse_left0#=
  mouse_right#, mouse_right0#=
  goto event_loop
  
event_loop_exit:
  save_desktop
  remove_desktop
  property_text, remove_textfield
  property_file,   remove_textfield
  property_cmd, remove_textfield
  screen_buffer#, free
  copy_area#, free
  font_area#, free
  cls

// log, wclose
 
  end


 end
