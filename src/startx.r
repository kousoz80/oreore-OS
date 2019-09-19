// Xsys ウィンドウシステム for oreore-OS
// ver 0.07
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
   TYPE_FITEM
   TYPE_FILER
  end

// 定数
 const DEFAULT_COMPONENT_WIDTH  100  // 幅の初期値
 const DEFAULT_COMPONENT_HEIGHT 100  // 高さの初期値

// 専用変数
 long com#,com0#,com1#,parent#,next#,prev#

// GUIコンポーネントを生成する
// 使用法: com, subclass, parent, look_and_feel create_component
create_component:

// "create component", log, fprints log, fnl

  tt#= pop parent#= pop ss#= pop com#=
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

  // 子供のコンポーネントから削除する
  remove_component1:
    com#, ->Component.top_child# tt#=
    if tt#=NULL goto remove_component2
    com#, PUSH
    tt#, remove_component
    POP com#=
    goto remove_component1
  
  //  コンポーネント本体を削除する
  remove_component2:
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


  // GUIコンポーネントが不可視状態ならイベント処理をしない
  com#, ->Component.is_visible# tt#=
  if tt#=0 then FALSE, end
  
  com#, ->Component.top# com#, ->Component.bottom# - tt#=
  if tt#>=0 then FALSE, end
    
  com#, ->Component.left# com#, ->Component.right# - tt#=
  if tt#>=0 then FALSE, end
    
  // まず子供コンポーネントのイベント割り当てを行う
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
    com#, ->Component.status# tt#=

  // GUIコンポーネント上でマウスボタンが押されていない状態

  // 左ボタンのチェック
  dispatch_mouse_event3:
    if tt#<>MOUSE_RELEASE goto dispatch_mouse_event5
    if mouse_left#=0 goto dispatch_mouse_event4
    mouse_x#, mouse_y#, com#, is_on_component ss#=
    if ss#=0 then FALSE, end
    MOUSE_PRESS_L, com#, ->Component.status#=
    TRUE, end

  // 右ボタンのチェック
  dispatch_mouse_event4:
    if mouse_right#=0 then FALSE, end
    mouse_x#, mouse_y#, com#, is_on_component ss#=
    if ss#=0 then FALSE, end
    MOUSE_PRESS_R, com#, ->Component.status#=
    TRUE, end

  // GUIコンポーネント上で左マウスボタンが押された状態
  dispatch_mouse_event5:
    if tt#<>MOUSE_PRESS_L goto dispatch_mouse_event6
    if mouse_left#<>0 then TRUE, end
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
  tt#, paint_component
  _disp
  end


// GUIコンポーネント描画処理
paint_component:
  com#=

  // 描画可能でなければリターン
  com#, ->Component.is_visible# tt#=
  if tt#=0 then end
  
  // 描画中であればリターン
  com#, ->Component.is_painting# tt#=
  if tt#=TRUE then end

  // 矩形領域をセットする
  com#, set_component_rect

  // 矩形領域が有効でないときはリターン
  com#, ->Component.left# com#, ->Component.right# - tt#=
  if tt#>=0 then return
  
  com#, ->Component.top# com#, ->Component.bottom# - tt#=
  if tt#>=0 then return
  
  // 描画処理
  TRUE, com#, ->Component.is_painting#=

  // 自分の描画
  com#, ->Component.look_and_feel# ->LookAndFeel.paint_component# tt#=
  com#, com#, ->Component.look_and_feel# ->@LookAndFeel.paint_component
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

  // 境界のリスト
  enum
    NULL_BORDER
    LINE_BORDER
    RAISED_BORDER
    LOWERD_BORDER
  end

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
  end

// GUIコンポーネントの矩形領域をセットする
set_component_rect:
  long lf0#,tp0#,ri0#,bt0#
  
  com#=
  com#, ->Component.parent# parent#=
  if parent#<>NULL goto set_component_rect1

    // デスクトップコンポーネントの場合
    com#, ->Component.x# ss#= com#, ->Component.left#= lf0#=
    com#, ->Component.y# tt#= com#, ->Component.top#= tp0#=
    com#, ->Component.width#   ss#, + 1, -  ri0#= 
    com#,  ->Component.right#=
    com#, ->Component.height#  tt#, + 1, -  bt0#=
    com#, ->Component.bottom#=
    end
  
// デスクトップコンポーネント以外の場合
set_component_rect1:
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
  if ox#<ol#  then FALSE, end
  if ox#>ori# then FALSE, end
  if oy#<ot#  then FALSE, end
  if oy#>ob#  then FALSE, end
  TRUE, end


// 座標(x,y)がGUIコンポーネントcom上にあるかどうかを返す
is_on_component:
  com#= pop iy#= pop ix#=
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


// フォーカスを要求する
request_focus:
  long rcom#
  rcom#= is_visible tt#=
  if tt#=0 then end
  rcom#,  ->Component.is_focusable tt#=
  if tt#=0 then end
  rcom#, focused_component#=
  end


// 何もしない
no_operation:
 end

// 変数一覧
 long mouse_x#,mouse_y#,mouse_left#,mouse_right#,mouse_mode#,mouse_speed#
 long mouse_left0#,mouse_right0#,mouse_dx#,mouse_dy#
 long copy_area#,font_area#,screen_buffer#
 long gui_is_running#,input_client#,key_code#,key_mask#
 long focused_component#,clicked_component#
 long color#,color_title#,color_titlebar#
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

 char dbuf$(256)
 count ii0#,jj0#
 long nn0#,pp0#,qq0#,rr0#,ss0#,tt0#,uu0#
 long max_speed#,quit_key#,mode_key#,speed_key#
 long left_key#,right_key#,up_key#,down_key#,lclick_key#,rclick_key#
 long clock_interval#,clock_count#,time_zone#

// ラベル
 class Label
  long subclass#      // サブクラスへのポインタ
  long text#             // 表示テキスト

  // イベント拡張
  long paint#      // 描画処理
  long removed# // 削除処理

  // コンポーネント本体
  Component component
 end

// look&feel
 .data
lf_label:
  data paint_label      // paint_component
  data no_operation   // key_pressed
  data no_operation   // mouse_lclicked
  data no_operation   // mouse_rclicked
  data no_operation   // mouse_lclicked2
  data no_operation   // mouse_rclicked2
  data label_removed // remove_component


// ラベルを生成する
// lbl, subclass, parent, txt, create_label 
create_label:
 long lbltxt#,lblprnt#,lblsub#,lbl#

 lbltxt#= pop lblprnt#= pop lblsub#= pop lbl#=
 lblsub#, lbl#, ->Label.subclass#=
 no_operation, lbl#, ->Label.paint#=
 no_operation, lbl#, ->Label.removed#=
 lbltxt#,   lbl#, ->Label.text#=
 lbl#, ->Label.component com#=
 com#, lbl#, lblprnt#, lf_label, create_component
 TYPE_LABEL, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_LIGHT_GRAY, com#, ->Component.background#=
 NULL_BORDER, com#, ->Component.border#=
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
  lbl#, lbl#, ->@Label.paint
  end


// ラベルを消去したときの処理
label_removed:
  com#= ->Component.subclass# lbl#=
  lbl#, lbl#, ->@Label.removed
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
  long removed#         // 削除処理

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
  data button_removed        // remove_component


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
 no_operation, btn#, ->Button.removed#=
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
  com#= ->Component.subclass# btn#=
  btn#, btn#, ->@Button.lclicked
  end


// 左クリック2回目で呼ばれる
button_lclicked2:
  com#= ->Component.subclass# btn#=
  btn#, btn#, ->@Button.lclicked2
  end


// 右クリックで呼ばれる
button_rclicked:
  com#= ->Component.subclass# btn#=
  btn#, btn#, ->@Button.rclicked
  end


// ボタンを消去したときの処理
button_removed:
  com#= ->Component.subclass# btn#=
  btn#, btn#, ->@Button.removed
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
  long removed#            // 削除処理

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
  data checkbox_removed        // remove_component

// チェックボックスを生成する
// chk, subclass, parent, create_chrckbox 
create_checkbox:
 long chkprnt#,chksub#,chk#

 chkprnt#= pop chksub#= pop chk#=
 chksub#, chk#, ->CheckBox.subclass#=
 no_operation, chk#, ->CheckBox.paint#=
 no_operation, chk#, ->CheckBox.changed#=
 no_operation, chk#, ->CheckBox.removed#=
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
 com#, ->Component.foreground# set_color
 com#, ->Component.left#            sx#=
 com#, ->Component.right#          sx1#=
 com#, ->Component.top#            sy#=
 com#, ->Component.bottom#      sy1#=
 sx#, sy#, sx1#, sy1#, draw_line
 sx1#, sy#, sx#, sy1#, draw_line

paint_checkbox1:
 chk#, chk#, ->@CheckBox.paint
 end


// チェックボックスをクリックしたときの処理( 直接呼び出し不可 )
checkbox_clicked:
 com#= ->Component.subclass# chk#=
 1, chk#, ->CheckBox.is_selected# - chk#, ->CheckBox.is_selected#=
 chk#, chk#, ->@CheckBox.changed
 com#, repaint
 end


// チェックボックスを消去したときの処理
checkbox_removed:
  com#= ->Component.subclass# chk#=
  chk#, chk#, ->@CheckBox.removed
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
  long removed#            // 削除処理

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
  data radiobutton_removed        // remove_component

// ラジオボタンを生成する
// rbt, subclass, parent, create_radiobutton 
create_radiobutton:
 long rbtprnt#,rbtsub#,rbt#

 rbtprnt#= pop rbtsub#= pop rbt#=
 rbtsub#, rbt#, ->RadioButton.subclass#=
 no_operation, rbt#, ->RadioButton.paint#=
 no_operation, rbt#, ->RadioButton.changed#=
 no_operation, rbt#, ->RadioButton.removed#=
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
 if tt#=FALSE goto paint_radiobutton1
 com#, ->Component.foreground# set_color
 com#, ->Component.left# com#, ->Component.right#    + 2, / sx#=
 com#, ->Component.top# com#, ->Component.bottom# + 2, / sy#=
 sx#, 2, -  sx1#=
 sy#, 2, -  sy1#=
 sx#, 2, + sx2#=
 sy#, 2, +  sy2#=
 sx1#, sy1#, sx2#, sy2#, fill_circle

paint_radiobutton1:
 rbt#, rbt#, ->@RadioButton.paint
 end


// ラジオボタンをクリックしたときの処理( 直接呼び出し不可 )
radiobutton_clicked:
 com#= ->Component.subclass# rbt#=
 1, rbt#, ->RadioButton.is_selected# - rbt#, ->RadioButton.is_selected#=
 rbt#, ->@RadioButton.changed
 com#, repaint
 end


// ラジオボタンを消去したときの処理
radiobutton_removed:
  com#= ->Component.subclass# rbt#=
  rbt#, rbt#, ->@RadioButton.removed
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
  long        removed#          // 削除処理

  // コンポーネント本体 
  Component component 
 end

// look&feel
 .data
lf_hscrollbar:
  data paint_hscrollbar            // paint_component
  data no_operation                 // key_pressed
  data hscrollbar_clicked          // mouse_lclicked
  data no_operation                 // mouse_rclicked
  data no_operation                 // mouse_lclicked2
  data no_operation                 // mouse_rclicked2
  data hscrollbar_removed       // remove_component


// チェックボックスを生成する
// hsb, subclass, parent, create_hscrollbar 
create_hscrollbar:
 long hsbprnt#,hsbsub#,hsb#

 hsbprnt#= pop hsbsub#= pop hsb#=
 hsbsub#, hsb#, ->HScrollBar.subclass#=
 0, hsb#, ->HScrollBar.value#=
 0, hsb#, ->HScrollBar.min#=
 100, hsb#, ->HScrollBar.max#=
 8, hsb#, ->HScrollBar.handle_size#=
 no_operation, hsb#, ->HScrollBar.paint#=
 no_operation, hsb#, ->HScrollBar.changed#=
 no_operation, hsb#, ->HScrollBar.removed#=
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
 hsb#, hsb#, ->@HScrollBar.paint
 end


// スクロールバーをクリックしたときの処理( 直接呼び出し不可 )
hscrollbar_clicked:
 com#= ->Component.subclass# hsb#=
 hsb#, ->HScrollBar.max# hsb#, ->HScrollBar.min# pp#= - qq#= 
 mouse_x#,  com#, ->Component.left# -  qq#, *
 com#, ->Component.width# / pp#, + hsb#, ->HScrollBar.value#= 
 hsb#, hsb#, ->@HScrollBar.changed
 com#, repaint
 end


// スクロールバーを消去したときの処理
hscrollbar_removed:
  com#= ->Component.subclass# hsb#=
  hsb#, hsb#, ->@HScrollBar.removed
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
  long        removed#          // 削除処理

  // コンポーネント本体 
  Component component 
 end

// look&feel
 .data
lf_vscrollbar:
  data paint_vscrollbar            // paint_component
  data no_operation                 // key_pressed
  data vscrollbar_clicked          // mouse_lclicked
  data no_operation                 // mouse_rclicked
  data no_operation                 // mouse_lclicked2
  data no_operation                 // mouse_rclicked2
  data vscrollbar_removed       // remove_component


// チェックボックスを生成する
// vsb, subclass, parent, create_vscrollbar 
create_vscrollbar:
 long vsbprnt#,vsbsub#,vsb#

 vsbprnt#= pop vsbsub#= pop vsb#=
 vsbsub#, vsb#, ->VScrollBar.subclass#=
 0, vsb#, ->VScrollBar.value#=
 0, vsb#, ->VScrollBar.min#=
 100, vsb#, ->VScrollBar.max#=
 8, vsb#, ->VScrollBar.handle_size#=
 no_operation, vsb#, ->VScrollBar.paint#=
 no_operation, vsb#, ->VScrollBar.changed#=
 no_operation, vsb#, ->VScrollBar.removed#=
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
 vsb#, vsb#, ->@VScrollBar.paint
 end


// スクロールバーをクリックしたときの処理( 直接呼び出し不可 )
vscrollbar_clicked:
 com#= ->Component.subclass# vsb#=
 vsb#, ->VScrollBar.max# vsb#, ->VScrollBar.min# pp#= - qq#= 
 mouse_y#,  com#, ->Component.top# -  qq#, *
 com#, ->Component.height# / pp#, + vsb#, ->VScrollBar.value#= 
 vsb#, ->@VScrollBar.changed
 com#, repaint
 end


// スクロールバーを消去したときの処理
vscrollbar_removed:
  com#= ->Component.subclass# vsb#=
  vsb#, vsb#, ->@VScrollBar.removed
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
  long   removed#         // 削除処理

  // コンポーネント本体
  Component component
 end

// look&feel
 .data
lf_textfield:
  data paint_textfield      // paint_component
  data textfield_input      // key_pressed
  data textfield_clicked    // mouse_lclicked
  data no_operation         // mouse_rclicked
  data no_operation         // mouse_lclicked2
  data no_operation         // mouse_rclicked2
  data textfield_removed  // remove_component

// 最大文字数
  const TEXTFIELD_MAX 255

// キャレットの大きさ
 const CARET_SIZE 12

// キャレットの位置シフト
 const CARET_SHIFTX  2
 const CARET_SHIFTY  3

// テキストフィールドを生成する
// fld, subclass, parent, txt, create_textfield 
create_textfield:
  long fldtxt#,fldprnt#,fldsub#,fld#

  fldtxt#= pop fldprnt#= pop fldsub#= pop fld#=
  fldsub#, fld#, ->TextField.subclass#=
  no_operation, fld#, ->TextField.paint#=
  no_operation, fld#, ->TextField.input#=
  no_operation, fld#, ->TextField.removed#=
  TEXTFIELD_MAX+1, xmalloc tt0#=
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
 

// テキストフィールドを表示する( 直接呼び出し不可 )
paint_textfield:
  com#=
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

  // テキストを描く
  com#, ->Component.foreground# set_color
paint_textfield2:
  if  qq0#>rr0# goto paint_textfield3
  if  (pp0)$=NULL goto paint_textfield3
  qq0#, com#, ->Component.top# (pp0)$, draw_font
  qq0#, FONT_WIDTH, + qq0#=
  pp0#++
  goto paint_textfield2
  
// フォーカスがあたっているときは編集ポイントにキャレットを描画する
paint_textfield3:
  if com#<>focused_component# goto paint_textfield4
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
       if qq0#>=TEXTFIELD_MAX  then end

       // 無効なコードは無視する
       if key_code+2%<32   then end
       if key_code+2%>127 then end

       // 編集ポイントに１文字挿入
       fld#, ->TextField.text# qq0#, + ss0#=
       fld#, ->TextField.text# fld#, ->TextField.edit_pos# pp0#= + tt0#=
       textfield_input9:
       (ss0)$, (ss0)$(1)=
       ss0#--
       if ss0#>=tt0# goto textfield_input9
       key_code+2%,  (ss0)$(1)=  // 入力した文字を編集ポイントに挿入する
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
  com#, focused_component#=       //       log_focus

  // マウスカーソルがある桁を求める
  mouse_x#, com#, ->Component.left# - FONT_WIDTH, / 
  fld#, ->TextField.display_pos# +  pp0#=
  if pp0#>qq0# then qq0#, pp0#=
  pp0#, fld#, ->TextField.edit_pos#=
  desktop, ->Desktop.component repaint  // どこにフォーカスが移っても良いようにデスクトップ全体を再描画
  end


// テキストフィールドを削除する
textfield_removed:
  com#= ->Component.subclass# fld#=
  fld#, ->TextField.text# tt0#=
  tt0#, xfree
  fld#, fld#, ->@TextField.removed
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
  inkey key_code#= key_code#=
  if key_code#=quit_key# then 0, gui_is_running#= end                       // 終了
  if key_code#=mode_key# then 1, mouse_mode#, - mouse_mode#=    // マウス・キーボードの切り替え
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
  if key_code#=0 then 0, end
  if key_code#=speed_key# then max_speed#, mouse_speed#, - mouse_speed#= // カーソル移動速度の切り替え
  if key_code#=up_key#     then 0, mouse_speed#, - mouse_dy#=   //  マウスカーソルの移動
  if key_code#=down_key# then mouse_speed#, mouse_dy#=
  if key_code#=right_key#  then mouse_speed#, mouse_dx#=
  if key_code#=left_key#    then 0, mouse_speed#, -   mouse_dx#=
  if key_code#=lclick_key#  then 1, mouse_left#=      // 左クリック
  if key_code#=rclick_key#  then 1, mouse_right#=  // 右クリック

// マウスカーソルの位置(とキーコード)を設定する
set_cursor_position:
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
  long   put_p#,get_p#,co#
  
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
  jj#, ii#, end
    

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
 const END_KEY 6
 const PGDN_KEY 10
 const CLOCK_INTERVAL 100000
 

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
 end

 
// デスクトップを表示する( 直接呼び出し不可 )
paint_desktop:
  com#=
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
  char wallpaper$(64)
  long dfile#,dimg#,dtxt#,dcmd#,dbtn#
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
  dbuf,  fp, finputs  dbuf, 10, atoi  mouse_mode#=   // マウスの設定
  dbuf,  fp, finputs  dbuf, 10, atoi  mouse_speed#=
  dbuf,  fp, finputs  dbuf, 16, atoi  color_title#=       // ウィンドウのタイトルの色
  dbuf,  fp, finputs  dbuf, 16, atoi  color_titlebar#=  // ウィンドウのタイトルバーの色

  // 文字色
  dbuf,  fp, finputs
  dbuf, 16, atoi desktop, ->Desktop.component ->Component.foreground#=
  
  // 背景色
  dbuf,  fp, finputs
  dbuf, 16, atoi desktop, ->Desktop.component ->Component.background#=
  
  // 壁紙
  wallpaper,  fp, finputs
  wallpaper, load_image  desktop, ->Desktop.image#=
  
  // 時計の更新周期
  dbuf,  fp, finputs dbuf, 10, atoi clock_interval#=
  
  // タイムゾーン
  dbuf,  fp, finputs dbuf, 10, atoi time_zone#=
  
  // アイコン
  load_desktop1:
    dbuf,  fp, finputs  tt#=
    if tt#=EOF goto load_desktop2
    dbuf, "end", strcmp tt#= 
    if tt#=0 goto load_desktop2
    dbuf, strlen 1, + xmalloc dfile#=            // 画像ファイル名
    dbuf, dfile#, strcpy 
    dbuf,  fp, finputs
    dbuf, strlen 1, + xmalloc dtxt#=            // テキスト
    dbuf, dtxt#, strcpy 
    dbuf,  fp, finputs
    dbuf, strlen 1, + xmalloc dcmd#=          // コマンド
    dbuf, dcmd#, strcpy 
    dbuf,  fp, finputs dbuf, 10, atoi sx#=   // X座標
    dbuf,  fp, finputs dbuf, 10, atoi sy#=   // Y座標
    dtxt#, dfile#, dcmd#, sx#, sy#, create_desktop_icon
    goto load_desktop1
  load_desktop2:
  fp, rclose
  
   //ファイル情報を読み込む
  load_file_data
  end


// デスクトップの設定を保存する
save_desktop:
  "desktop.ini",  fp, wopen  tt#=
  if tt#=ERROR then end  

  // 各種キー割り当て
  max_speed#,   fp,  fprintd fp, fnl
  quit_key#,       fp,  fprintd fp, fnl
  mode_key#,     fp,  fprintd fp, fnl
  speed_key#,    fp,  fprintd fp, fnl
  left_key#,        fp,  fprintd fp, fnl
  right_key#,      fp,  fprintd fp, fnl
  up_key#,          fp,  fprintd fp, fnl
  down_key#,      fp,  fprintd fp, fnl
  lclick_key#,      fp,  fprintd fp, fnl
  rclick_key#,      fp,  fprintd fp, fnl
  
  mouse_mode#,  fp,  fprintd fp, fnl  // マウスの設定
  mouse_speed#, fp,  fprintd fp, fnl

  color_title#,      hex fp,  fprints fp, fnl  // ウィンドウのタイトルの色
  color_titlebar#, hex fp,  fprints fp, fnl  // ウィンドウのタイトルバーの色

  // 文字色
  desktop, ->Desktop.component ->Component.foreground#  hex fp, fprints fp, fnl

  // 背景色
  desktop, ->Desktop.component ->Component.background#  hex fp, fprints fp, fnl

  // 壁紙
  wallpaper, fp, fprints fp, fnl

  // 時計の更新周期
  clock_interval#, fp,  fprintd fp, fnl

  // タイムゾーン
  time_zone#, fp,  fprintd fp, fnl

  // アイコン
  desktop, ->Desktop.component ->Component.top_child# com#=
  save_desktop1:
    if com#=NULL goto save_desktop3
    com#, ->Component.type# tt#=
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
  end


// デスクトップを削除する
remove_desktop:
  long dsk#
  desktop, ->Desktop.image# tt#=
  if tt#<>NULL then tt#, xfree
  desktop, ->Desktop.component dsk#=
  remove_desktop1:
    dsk#, ->Component.top_child# com#=
    if com#=NULL goto remove_desktop2
    com#, ->Component.type# tt#=
    if tt#=TYPE_BUTTON   then  com#, ->Component.subclass# remove_desktop_icon
    if tt#<>TYPE_BUTTON then  com#, remove_component
    goto remove_desktop1
  remove_desktop2:
  
  //ファイル情報を破棄する
  remove_file_data
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
  dfile#, load_image dimg#=
  Button.SIZE, xmalloc dbtn#=
  dtxt#, strlen 1, + FONT_WIDTH, * sx1#=
  FONT_HEIGHT+2, sy1#=
  if dimg#=NULL goto create_desktop_icon1
    if (dimg)!>sx1# then (dimg)!, sx1#=  // アイコン画像の幅がテキスト幅より大きいときはそっちに合わせる
    (dimg)!(1), sy1#, + sy1#=                  // アイコン画像の高さとテキストの高さを加えてアイコンの高さとする
  create_desktop_icon1:
  desktop, ->Desktop.component com#=
  dbtn#, desktop, com#, dtxt#, create_button 
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
  end


// デスクトップのアイコンを削除する
remove_desktop_icon:
  dbtn#=
  if dbtn#=NULL then end
  dbtn#, ->Button.text#  tt#=          // テキスト
  if tt#<>NULL then tt#, xfree
  dbtn#, ->Button.imagefile# tt#=   // 画像ファイル名
  if tt#<>NULL then tt#, xfree
  dbtn#, ->Button.image#  tt#=      // 画像
  if tt#>0 then tt#, xfree
  dbtn#, ->Button.command# tt#= // コマンド
  if tt#<>NULL then tt#, xfree
  dbtn#, ->Button.component com#=
  com#, remove_component
//  dbtn#, xfree
  end

// デバッグ用関数

xmalloc:
 long xxal#
 xxal#=
 xxal#, malloc
 xxal#=
//  "malloc icon:", log, fprints
//  xxal#, hex log, fprints log, fnl
 xxal#, end
 
 
xfree:
  xxal#=
//  "free icon:", log, fprints
//  xxal#, hex log, fprints log, fnl
  xxal#, free
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
     

// ウィンドウ 
 class Window
  long       subclass#            // サブクラスへのポインタ 
  long       icon#
  long       title#                  // ウィンドウのタイトル 
  long       state#                 // ウィンドウの状態 
  long       resizable#          // サイズ変更可能フラグ（デフォルトでTRUE） 
  long       height#              // ウィンドウの高さ(MINIMIZE状態の時に保存する)

  // イベント拡張 
  long        keyinput#            // キー入力したときの処理 
  long        lclicked#              // 左クリックしたときの処理 
  long        rclicked#              // 右クリックしたときの処理 
  long        resized#               // ウィンドウサイズを変えた時の処理 
  long        minimized#         // 最小化したときの処理 
  long        normalized#        // 普通に戻ったときの処理 
  long        paint#                 // 描画処理 
  long        removed#            // 削除処理

  // 閉じるボタン 
  Button  close_button

  // コンポーネント本体 
  Component  component

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
    WINDOW_MINIMIZE_MOVE
  end
  
// 定数
  const CORNER_RANGE 20
  const TITLEBAR_HEIGHT FONT_HEIGHT+4
  const TITLEBAR_MARGIN 3

// ウィンドウを生成する
create_window:
  long win#,wincom#,winsub#,winpar#,wintitle#,close_btn#

  wintitle#= pop winsub#= pop win#=
  winsub#, win#, ->Window.subclass#=
  wintitle#, win#, ->Window.title#=
  NULL, win#, ->Window.icon#=
  WINDOW_NORMAL, win#, ->Window.state#=
  TRUE, win#, ->Window.resizable#=
  no_operation, win#, ->Window.keyinput#=
  no_operation, win#, ->Window.lclicked#=
  no_operation, win#, ->Window.rclicked#=
  no_operation, win#, ->Window.resized#=
  no_operation, win#, ->Window.minimized#=
  no_operation, win#, ->Window.normalized#=
  no_operation, win#, ->Window.paint#=
  no_operation, win#, ->Window.removed#=
  win#, ->Window.component wincom#=
  desktop, ->Desktop.component winpar#=
  wincom#, win#, winpar#, lf_window, create_component
  TYPE_WINDOW, wincom#, ->Component.type#=
  FALSE, wincom#, ->Component.is_focusable#=
  COLOR_BLACK, wincom#, ->Component.foreground#=
  COLOR_LIGHT_GRAY, wincom#, ->Component.background#=
  RAISED_BORDER, wincom#, ->Component.border#=

  // "閉じる"ボタンを生成
  win#, ->Window.close_button close_btn#=
  close_btn#, win#, wincom#, "x", create_button
  close_btn#, close_button_clicked, set_button_lclicked
  set_close_button
  end

 
// ウィンドウを表示する( 直接呼び出し不可 )
paint_window:
  wincom#=
  wincom#, ->Component.subclass# win#=
  win#, ->Window.close_button close_btn#=

  // 閉じるボタンの位置を設定
  set_close_button
  
  // 基盤を描く
  wincom#, paint_base

  // タイトルバーを描画
  color_titlebar#, set_color
  wincom#, ->Component.left#   pp0#=
  wincom#, ->Component.top#   qq0#=
  wincom#, ->Component.right# rr0#=
  wincom#, ->Component.top# TITLEBAR_HEIGHT, + ss0#=
  pp0#, qq0#, rr0#, ss0#, fill_rect
  
  
// アイコンを描く
  pp0#, TITLEBAR_MARGIN, + pp0#=
  qq0#, TITLEBAR_MARGIN, +  qq0#=
  wincom#, ->Component.width# rr0#= 
  win#,  ->Window.icon# ss0#=
  if ss0#=NULL goto paint_window1
  pp0#,
  qq0#,
  ss0#,
  draw_image pop pp0#= pp0#++
  wincom#, ->Component.right# pp0#, - rr0#=

// タイトルを描く
paint_window1:
  color_title#, set_color
  rr0#,  FONT_WIDTH+3, - rr0#=
  if rr0#>=FONT_WIDTH then  pp0#, qq0#, rr0#, win#,  ->Window.title#  draw_string

  // 拡張用コールバックを呼び出す
  win#, win#, ->@Window.paint
  end


// ウィンドウのキー入力したときの処理( 直接呼び出し不可 )
window_keyinput:
  wincom#= ->Component.subclass# win#=
  if key_code+2%<32   then end // 有効な文字コードでないときは無視する
  if key_code+2%>127 then end
  win#, win#, ->@Window.keyinput
  end


// ウインドウ上で左クリックしたときの処理( 直接呼び出し不可 )
window_lclicked:
  long rx1#,ry1#
  wincom#= 
  wincom#, ->Component.left#        rx#=
  wincom#, ->Component.top#        ry#=
  wincom#, ->Component.right#      rx1#=
  wincom#, ->Component.bottom#  ry1#=
  wincom#, ->Component.subclass# win#= ->Window.state# pp0#=
  wincom#, pop_up_component

// ノーマルモード
window_lclicked1:
  if pp0#<>WINDOW_NORMAL goto window_lclicked3
  ry#, TITLEBAR_HEIGHT, + qq0#=
  mouse_x#, mouse_y#, rx#, ry#, rx1#, qq0#, is_on_rectangle tt#=
  if tt#=TRUE then WINDOW_MOVE, win#, ->Window.state#= gotowindow_lclicked2
  rx1#, CORNER_RANGE, -  qq0#=
  ry1#, CORNER_RANGE, -  rr0#=
  mouse_x#, mouse_y#, qq0#, rr0#, rx1#, ry1#, is_on_rectangle
  win#, ->Window.resizable# and tt#=
  if tt#=TRUE then WINDOW_RESIZE, win#, ->Window.state#=
window_lclicked2:
//  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.lclicked
  end

// 移動モード
window_lclicked3:
  if pp0#<>WINDOW_MOVE goto window_lclicked4
  mouse_x#, wincom#, ->Component.x#=
  mouse_y#, wincom#, ->Component.y#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  end

// リサイズモード
window_lclicked4:
  if pp0#<>WINDOW_RESIZE goto window_lclicked5
  mouse_x#, rx#, - wincom#, ->Component.width#=
  mouse_y#, ry#, - wincom#, ->Component.height#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.resized // リサイズのコールバックを実行
  end

// 最小化モード
window_lclicked5:
  if pp0#<>WINDOW_MINIMIZE goto window_lclicked6
  WINDOW_MINIMIZE_MOVE, win#, ->Window.state#=
  end

// 最小化+移動モード
window_lclicked6:
  if pp0#<>WINDOW_MINIMIZE_MOVE then end
  mouse_x#, wincom#, ->Component.x#=
  mouse_y#, wincom#, ->Component.y#=
  WINDOW_MINIMIZE, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  end


// ウインドウ上で右クリックしたときの処理( 直接呼び出し不可 )
window_rclicked:
  wincom#= ->Component.subclass# win#=
  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.rclicked  // 右クリックのコールバックを実行
  end


// 2回めクリックしたときの処理( 直接呼び出し不可 )
window_clicked2:
  clicked_component#, wincom#=
  wincom#, ->Component.left#        rx#=
  wincom#, ->Component.top#        ry#=
  wincom#, ->Component.right#      rx1#=
  wincom#, ->Component.bottom#  ry1#=
  wincom#, ->Component.subclass# win#= ->Window.state# pp0#=

// 移動モード
window_clicked2_1:
  if pp0#<>WINDOW_MOVE goto window_clicked2_2
  mouse_x#, wincom#, ->Component.x#=
  mouse_y#, wincom#, ->Component.y#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  end

// リサイズモード
window_clicked2_2:
  if pp0#<>WINDOW_RESIZE goto window_clicked2_3
  mouse_x#, rx#, - wincom#, ->Component.width#=
  mouse_y#, ry#, - wincom#, ->Component.height#=
  WINDOW_NORMAL, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  win#, win#, ->@Window.resized // リサイズのコールバックを実行
  end

// 最小化+移動モード
window_clicked2_3:
  if pp0#<>WINDOW_MINIMIZE_MOVE then end
  mouse_x#, wincom#, ->Component.x#=
  mouse_y#, wincom#, ->Component.y#=
  WINDOW_MINIMIZE, win#, ->Window.state#=
  desktop, ->Desktop.component  repaint
  end


// ウィンドウを削除するときの処理( 直接呼び出し不可 )
window_removed:
  ->Component.subclass# win#=
  win#, win#, ->@Window.removed // 削除処理のコールバックを実行
  end


// "閉じる" ボタンをクリックしたときの処理( 直接呼び出し不可 )
close_button_clicked:
  ->Button.subclass# win#= ->Window.component wincom#=
  win#, ->Window.state# tt0#=
  
// 通常状態の場合
close_button_clicked1:
  if tt0#<>WINDOW_NORMAL goto close_button_clicked2
  WINDOW_MINIMIZE, win#, ->Window.state#=
  wincom#, ->Component.height# win#, ->Window.height#=
  TITLEBAR_HEIGHT, wincom#, ->Component.height#=
  win#, win#, ->@Window.minimized // 最小化コールバックを実行
  desktop, ->Desktop.component repaint
  end

// 最小化状態の場合
close_button_clicked2:
  if tt0#=WINDOW_MINIMIZE goto close_button_clicked3
  if tt0#<>WINDOW_MINIMIZE_MOVE then end

// 元に戻す 
close_button_clicked3:
  WINDOW_NORMAL, win#, ->Window.state#=
  win#, ->Window.height# wincom#, ->Component.height#=
  win#, win#, ->@Window.normalized // 最小化から戻るコールバックを実行
  desktop, ->Desktop.component repaint
  end


// 閉じるボタンの位置・大きさを設定する
// (変数win#,close_btn#があらがじめ設定されていること)
set_close_button:
  long btncom#
  win#, ->Window.component wincom#=
  wincom#, ->Component.width# FONT_WIDTH+3, - pp0#=
  if pp0#<1 then 1, pp0#= 
  close_btn#, ->Button.component btncom#=
  pp0#, btncom#, ->Component.x#=
  3,       btncom#, ->Component.y#=
  FONT_WIDTH,  btncom#, ->Component.width#=
  FONT_HEIGHT, btncom#, ->Component.height#=
  end


// タイトルを設定する
set_window_title:
 tt#= pop win#=
 tt#, win#, ->Window.title#=
 end


// アイコンを設定する
set_window_icon:
 tt#= pop win#=
 tt#, win#, ->Window.icon#=
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
  TRUE, key_mask#=
  desktop_menu, ->Label.component com#=
  mouse_x#, com#, ->Component.x#=
  mouse_x#, com#, ->Component.width# + screen_width#, - tt#=
  if tt#>0 then mouse_x#, tt#, - com#, ->Component.x#=
  mouse_y#, com#, ->Component.y#=
  mouse_y#, com#, ->Component.height# + screen_height#, - tt#=
  if tt#>0 then mouse_y#, tt#, - com#, ->Component.y#=
  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// アイコン作成をクリックしたとき
desktop_menu_create_icon_clicked:
  FALSE, key_mask#=
  desktop_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  com#, ->Component.x# sx#=
  com#, ->Component.y# sy#=
  NULL, "", "", "", sx#, sy#, show_property_sheet
  end


// キャンセルをクリックしたとき
desktop_menu_cancel_clicked:
  FALSE, key_mask#=
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
  TRUE, key_mask#=
  icon_menu, ->Label.component com#=

  mouse_x#, com#, ->Component.x#=
  mouse_x#, com#, ->Component.width# + screen_width#, - tt#=
  if tt#>0 then mouse_x#, tt#, - com#, ->Component.x#=
  
  mouse_y#, com#, ->Component.y#=
  mouse_y#, com#, ->Component.height# + screen_height#, - tt#=
  if tt#>0 then mouse_y#, tt#, - com#, ->Component.y#=

  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// アイコン移動をクリックしたとき
icon_menu_move_clicked:
  FALSE, key_mask#=
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
  FALSE, key_mask#=
  icon_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  icon#, remove_desktop_icon
  desktop, ->Desktop.component repaint
  end


// アイコンのプロパティをクリックしたとき
icon_menu_property_clicked:
  FALSE, key_mask#=
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
  FALSE, key_mask#=
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
  mouse_x#, com#, ->Component.width# + screen_width#, - tt#=
  if tt#>0 then mouse_x#, tt#, - com#, ->Component.x#=
  
  mouse_y#, com#, ->Component.y#=
  mouse_y#, com#, ->Component.height# + screen_height#, - tt#=
  if tt#>0 then mouse_y#, tt#, - com#, ->Component.y#=

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
  itxt#, xstrlen 1, + xmalloc tt#=
  itxt#, tt#, itxt#= strcpy
  property_file, ->TextField.text# ifile#=
  ifile#, xstrlen 1, + xmalloc tt#=
  ifile#, tt#, ifile#= strcpy
  property_cmd, ->TextField.text# icmd#=
  icmd#, xstrlen 1, + xmalloc tt#=
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
// 複数行テキストボックス

  class TextArea
    long subclass#                    // サブクラスへのポインタ 
    long text#                           //  編集テキスト 
    long line#                           // テキストの各行の先頭のポインタ
    long size#                           // テキストのサイズ 
    long lines#                          // テキストの行数 
    long edit_pos#                    // テキスト上の編集する桁の位置 
    long display_pos#               // テキスト上の表示開始する桁の位置 
    long edit_line#                   // テキスト上の編集行の位置 
    long display_line#              // テキスト上の表示開始行の位置 

    // イベント拡張
    long paint#      // 描画処理 
    long removed# // 削除処理

    Component  component     // コンポーネント本体 
    HScrollBar    hscrollbar       // 水平スクロールバー 
    VScrollBar    vscrollbar        // 垂直スクロールバー 
  end


// look&feel
 .data
lf_textarea:
  data paint_textarea      // paint_component
  data textarea_input      // key_pressed
  data textarea_clicked    // mouse_lclicked
  data no_operation         // mouse_rclicked
  data no_operation         // mouse_lclicked2
  data no_operation         // mouse_rclicked2
  data textarea_removed // remove_component

  const TEXTAREA_MAX_CHARS   65536  // 最大文字数
  const TEXTAREA_MAX_LINES     8192   // 最大行数
  const SCROLLBAR_SIZE            16        // スクロールバーの幅
  const NEW_LINE                       10        // 改行コード
  
// テキストエリアを生成する
// ara, subclass, parent, txt, create_textarea 
create_textarea:
  long aratxt#,araprnt#,arasub#,ara#

  aratxt#= pop araprnt#= pop arasub#= pop ara#=
  arasub#, ara#, ->TextArea.subclass#=
  no_operation, ara#, ->TextArea.paint#=
  no_operation, ara#, ->TextArea.removed#=
  TEXTAREA_MAX_CHARS+1, xmalloc tt#=
  tt#, ara#, ->TextArea.text#=
  TEXTAREA_MAX_LINES+1,     xmalloc tt#=
  tt#, ara#, ->TextArea.line#=
  ara#, ->TextArea.component com#=
  com#, ara#, araprnt#, lf_textarea, create_component
  TYPE_TEXTAREA, com#, ->Component.type#=
  TRUE, com#, ->Component.is_focusable#=
  COLOR_BLACK, com#, ->Component.foreground#=
  COLOR_WHITE, com#, ->Component.background#=
  LOWERD_BORDER, com#, ->Component.border#=
  ara#, ->TextArea.hscrollbar  ara#,  ara#, ->TextArea.component  create_hscrollbar 
  ara#, ->TextArea.vscrollbar  ara#,  ara#, ->TextArea.component  create_vscrollbar 
  hscroll_changed_textarea, ara#, ->TextArea.hscrollbar ->HScrollBar.changed#=
  vscroll_changed_textarea, ara#, ->TextArea.vscrollbar ->VScrollBar.changed#=
  aratxt#, ara#, set_textarea_text
  end
 
 
// テキストフエリアを表示する( 直接呼び出し不可 )
paint_textarea:
  long tp#,left#,right#,botm#,text#,maxpos#,disp_line#
  long disppos#,displin#,endlin#,pos#,dispx#,dispy#,disptxt#
  long max_line#,max_col#

  com#= is_visible tt#=
  if tt#<>FALSE goto paint_textarea1
  if com#=focused_component# then NULL, focused_component#=
  end
paint_textarea1:
  com#, ->Component.subclass# ara#=

  // 基盤を描く
  com#, paint_base
  com#, ->Component.foreground# set_color

  // テキスト表示領域を求める
  com#, ->Component.top#      tp#=
  com#, ->Component.left#      left#=
  com#, ->Component.right#    SCROLLBAR_SIZE, -  right#=
  com#, ->Component.bottom# SCROLLBAR_SIZE, - botm#=
  botm#, tp#,  - FONT_HEIGHT, / 1, - max_line#=
  right#, left#, - FONT_WIDTH,  / 1, - max_col#=

  // 表示終了位置または最終行までループ
  0, maxpos#=
  ara#, ->TextArea.display_pos# disppos#=  // 表示開始桁
  ara#, ->TextArea.display_line#  displin#=  // 表示開始行
  ara#, ->TextArea.lines# endlin#=               // 最終行
  tp#,  dispy#=                                              // 表示位置(y座標)
  paint_textarea_loop:
    if dispy#>=botm#     goto paint_textarea_caret
    if displin#>=endlin# goto paint_textarea_caret

    // 表示開始位置までスキップ
    ara#, ->TextArea.line# tt#=  (tt)#(displin#), disptxt#= // 行ごとの表示テキスト
    0,  pos#=
  paint_textarea3:
    if (disptxt)$=NULL goto paint_textarea_exitloop           // テキストの終わりが検出されたらループを抜ける
    if (disptxt)$=NEW_LINE goto paint_textarea_nextline   // 改行するなら次の行に移る
    if pos#>=disppos# goto paint_textarea4
    pos#++
    disptxt#++
    goto paint_textarea3

   // 表示開始位置から表示終了位置までを描く
  paint_textarea4:
    if (disptxt)$=NULL goto paint_textarea_exitloop            // テキストの終わりが検出されたらループを抜ける
    if (disptxt)$=NEW_LINE goto paint_textarea_nextline    // 改行するなら次の行に移る
     pos#, disppos#, - FONT_WIDTH, * left#, + dispx#=
    if dispx#>=right# goto paint_textarea5
    dispx#, dispy#, (disptxt)$, draw_font
    pos#++
    disptxt#++
    goto   paint_textarea4

   // 行の終了位置を求める
  paint_textarea5:
    if (disptxt)$=NULL goto paint_textarea_exitloop            // テキストの終わりが検出されたらループを抜ける
    if (disptxt)$=NEW_LINE goto paint_textarea_nextline    // 改行するなら次の行に移る
    pos#++
    disptxt#++
    goto   paint_textarea5

  // 次の行に移る
  paint_textarea_nextline:
    displin#++
    dispy#, FONT_HEIGHT, + dispy#=
    if pos#>maxpos# then pos#, maxpos#=
    goto paint_textarea_loop

  // ループ終了
  paint_textarea_exitloop:
    if pos#>maxpos# then pos#, maxpos#=

  // フォーカスがあたっていてキャレットが表示範囲内にあるときは描画する
  paint_textarea_caret:
    if com#<>focused_component# goto paint_textarea_corner
    ara#, ->TextArea.edit_pos# disppos#, -
    FONT_WIDTH,  * left#, + pp0#=
    ara#, ->TextArea.edit_line# ara#, ->TextArea.display_line# -
    FONT_HEIGHT, * tp#, +  qq0#= 
    if pp0#<left#      goto paint_textarea_corner
    if pp0#>=right# goto paint_textarea_corner
    if qq0#<tp#        goto paint_textarea_corner
    if qq0#>=botm#  goto paint_textarea_corner
    pp0#, CARET_SHIFTX, + pp0#=
    qq0#,  CARET_SHIFTY,  + qq0#= CARET_SIZE, + rr0#=
    pp0#, qq0#, pp0#, rr0#, draw_line 

  // コンポーネントの右下の空白部分を塗りつぶす
  paint_textarea_corner:
    COLOR_LIGHT_GRAY, set_color
    right#,   SCROLLBAR_SIZE, + pp0#=
    botm#,   SCROLLBAR_SIZE, + qq0#=
    right#, botm#, pp0#, qq0#, fill_rect

  // スクロールバーのパラメータを設定
  paint_textarea_set_params:
    0, ara#, ->TextArea.hscrollbar ->HScrollBar.component ->Component.x#=
    com#, ->Component.height# SCROLLBAR_SIZE, -
    ara#, ->TextArea.hscrollbar ->HScrollBar.component ->Component.y#=
    com#, ->Component.width# SCROLLBAR_SIZE, -  
    ara#, ->TextArea.hscrollbar ->HScrollBar.component ->Component.width#=
    SCROLLBAR_SIZE, ara#, ->TextArea.hscrollbar ->HScrollBar.component ->Component.height#=
    0, ara#, ->TextArea.hscrollbar ->HScrollBar.min#=
    maxpos#,  1, + ara#, ->TextArea.hscrollbar ->HScrollBar.max#=
    ara#, ->TextArea.display_pos# ara#, ->TextArea.hscrollbar ->HScrollBar.value#=
    com#, ->Component.width# SCROLLBAR_SIZE, -
    ara#, ->TextArea.vscrollbar ->VScrollBar.component ->Component.x#=
    0, ara#, ->TextArea.vscrollbar ->VScrollBar.component ->Component.y#=
    SCROLLBAR_SIZE, ara#, ->TextArea.vscrollbar ->VScrollBar.component ->Component.width#=
    com#, ->Component.height#  SCROLLBAR_SIZE, -
    ara#, ->TextArea.vscrollbar ->VScrollBar.component ->Component.height#=
    0, ara#, ->TextArea.vscrollbar ->VScrollBar.min#=
    ara#, ->TextArea.lines# ara#, ->TextArea.vscrollbar ->VScrollBar.max#=
    ara#, ->TextArea.display_line# ara#, ->TextArea.vscrollbar ->VScrollBar.value#=
    end
  

// フォーカスを得た状態でキーが押されたときの処理( 直接呼び出し不可 )
// (キーボード編集)
textarea_input:
  char del_char$
  long edit_p#,prev_line#,prev_length#

  com#= is_visible tt#=
  if tt#=FALSE then NULL, focused_component#= end  // 不可視J状態になったときはフォーカスを外して終了する

  com#, ->Component.subclass# ara#=
  ara#, ->TextArea.line#  pp#=
  ara#, ->TextArea.edit_line# qq#=
  (pp)#(qq#), ara#, ->TextArea.edit_pos# + edit_p#=

  // "→" キーが押されたときの処理
  textarea_input_right_key:
     if key_code#<>RIGHT_KEY goto textarea_input_left_key
      
      // 編集ポイントが範囲外のときは抜ける
      ara#, ->TextArea.text# ara#, ->TextArea.size# + 1, - tt#= 
      if edit_p#>=tt# goto textarea_input_break
      
      // 編集ポイントが改行コードの場合
      textarea_input_right_key_new_line:
      if (edit_p)$<>NEW_LINE goto textarea_input_right_key_not_new_line

        // 次の行に移る
        ara#, ->TextArea.edit_line# 1, + ara#, ->TextArea.edit_line#=

        // 編集ポイントを最初の桁にする
        0, ara#, ->TextArea.edit_pos#=
        goto textarea_input_break

      // 改行コードでない場合 */
      textarea_input_right_key_not_new_line:

        // 編集ポイントを１つ進める
        ara#, ->TextArea.edit_pos# 1, + ara#, ->TextArea.edit_pos#=
        goto textarea_input_break

   // "←" キーが押されたときの処理
  textarea_input_left_key:
     if key_code#<>LEFT_KEY goto textarea_input_down_key

      // 編集ポイントが範囲外のときは抜ける
      ara#, ->TextArea.text# tt#= 
      if edit_p#<=tt# goto textarea_input_break
      
      // 編集ポイント位置が最初の桁の場合
      textarea_input_left_key_new_line:
        ara#, ->TextArea.edit_pos# tt#=
        if tt#>0 goto textarea_input_left_key_not_new_line

        // 前の行に移る
        ara#, ->TextArea.line#  pp#=
        ara#, ->TextArea.edit_line# 1, - qq#= ara#, ->TextArea.edit_line#=
        (pp)#(qq#), pp#=   0, qq#=

        // 行の長さを求めてその値を編集ポイントの位置とする
        TEXTAREA_MAX_CHARS, adjust_edit_pos
        goto textarea_input_break

     // 改行コードでない場合
     textarea_input_left_key_not_new_line:

        // 編集ポイントを一つ後退させる
        ara#, ->TextArea.edit_pos# 1, - ara#, ->TextArea.edit_pos#=
        goto textarea_input_break

    // "↓" キーが押されたときの処理
    textarea_input_down_key:
     if key_code#<>DOWN_KEY goto textarea_input_up_key

       // 次の行に移る
       ara#, ->TextArea.edit_line#  1, + tt0#=
       ara#, ->TextArea.lines#  1, -  uu0#=
       if tt0#>uu0# then uu0#, tt0#=
       tt0#, ara#, ->TextArea.edit_line#=
      
       // 編集ポイントの位置を調整する
       ara#, ->TextArea.edit_pos# adjust_edit_pos
       goto textarea_input_break

    // "↑" キーが押されたときの処理
    textarea_input_up_key:
     
     if key_code#<>UP_KEY goto textarea_input_bs_key
       ara#, ->TextArea.edit_line#  tt#=
       if tt#<=0 then 0, ara#, ->TextArea.edit_pos#= gototextarea_input_break
      
       // 前の行に移る
       ara#, ->TextArea.edit_line#  1, - tt0#=
       if tt0#<0 then 0, tt0#=
       tt0#, ara#, ->TextArea.edit_line#=
      
       // 編集ポイントの位置を調整する
       ara#, ->TextArea.edit_pos# adjust_edit_pos
       goto textarea_input_break

    // 編集位置を編集行のテキスト長に応じて調整する
    adjust_edit_pos:
       qq0#=
       ara#, ->TextArea.edit_line#  get_line_length pp0#=
       if qq0#>pp0# then pp0#, qq0#=
       qq0#, ara#, ->TextArea.edit_pos#=
       end        

    // 与えられた行の長さを求める
    get_line_length:
      tt#=
       ara#, ->TextArea.line#  uu#=
       (uu)#(tt#), qq#= 
       0, pp#=
       get_line_length1:
          if (qq)$(pp#)=NEW_LINE goto  get_line_length2
          if (qq)$(pp#)=NULL goto  get_line_length2
          pp#++
          goto get_line_length1
       get_line_length2:
       pp#, end

     // BSキーが押されたときの処理
     textarea_input_bs_key:
     if key_code#<>BS_KEY goto textarea_input_enter_key
     edit_p#, ara#, ->TextArea.text# - tt#=
     if tt#<=0 goto textarea_input_break
     ara#, ->TextArea.edit_line# 1, - prev_line#=
     if prev_line#<0 then 0, prev_line#=
     (edit_p)$(-1), del_char$=
     if del_char$=NEW_LINE then prev_line#, get_line_length prev_length#=

     // １文字削除
     ara#, ->TextArea.text# ara#, ->TextArea.size# + rr0#=
     textarea_input_bs_key1:
       (edit_p)$, (edit_p)$(-1)=
       edit_p#++
     if edit_p#<=rr0#  goto textarea_input_bs_key1
     ara#, ->TextArea.size# 1, - ara#, ->TextArea.size#=
     if del_char$=NEW_LINE goto textarea_input_bs_key4

     // 行の格納情報を修正
     ara#, ->TextArea.edit_line# 1, + pp0#= // 修正行の次の行から変更
     ara#, ->TextArea.lines#    rr0#=
     ara#, ->TextArea.line#      uu0#=
     textarea_input_bs_key2:
       if pp0#>=rr0# goto  textarea_input_bs_key3
       (uu0)#(pp0#), 1, - (uu0)#(pp0#)=
       pp0#++
       goto textarea_input_bs_key2
     textarea_input_bs_key3:
     ara#, ->TextArea.edit_pos# 1, - tt#=
     if tt#<0 then 0, tt#=
     tt#, ara#, ->TextArea.edit_pos#=
     goto textarea_input_break

     // 消去した文字が改行文字の場合は１行削除
     textarea_input_bs_key4:
       ara#, ->TextArea.edit_line# pp0#= 1, + qq0#= // 修正行から変更
       ara#, ->TextArea.lines#       rr0#=
       ara#, ->TextArea.line#         uu0#=
       textarea_input_bs_key5:
         (uu0)#(qq0#),  1, - (uu0)#(pp0#)=
         pp0#++
         qq0#++
       if pp0#<rr0# goto  textarea_input_bs_key5
       rr0#, 1, - ara#, ->TextArea.lines#=
       prev_line#, ara#, ->TextArea.edit_line#=
       prev_length#, ara#, ->TextArea.edit_pos#=
       goto textarea_input_break

    // Enter キーが押されたときの処理
    textarea_input_enter_key:
     if key_code#<>ENTER_KEY goto textarea_input_other_key
     ara#, ->TextArea.size# tt#=
     if tt#>TEXTAREA_MAX_CHARS then end
     ara#, ->TextArea.lines# tt#=
     if tt#>TEXTAREA_MAX_LINES then end

     // 改行コードを挿入
     ara#, ->TextArea.text# ara#, ->TextArea.size# + pp0#=
     textarea_input_enter_key1:
       (pp0)$, (pp0)$(1)=
       pp0#--
       if pp0#>=edit_p#  goto textarea_input_enter_key1
       NEW_LINE, (edit_p)$=

      // １行挿入して次の行に移る
      ara#, ->TextArea.edit_line# rr0#=
      ara#, ->TextArea.lines#  pp0#= 1, + qq0#=
      ara#, ->TextArea.line#   uu0#=
      textarea_input_enter_key2:
        (uu0)#(pp0#), 1, + (uu0)#(qq0#)=
        pp0#--
        qq0#--
      if pp0#>rr0# goto  textarea_input_enter_key2
      edit_p#, 1, + (uu0)#(qq0#)=

    // 編集ポイントを初期化
    textarea_input_enter_key3:
      0, ara#, ->TextArea.edit_pos#=
      ara#, ->TextArea.edit_line# 1, + ara#, ->TextArea.edit_line#=
      ara#, ->TextArea.size# 1, + ara#, ->TextArea.size#=
      ara#, ->TextArea.lines# 1, + ara#, ->TextArea.lines#=
      goto textarea_input_break

    // 上記以外のキーが押されたときの処理 
    textarea_input_other_key:
    
     // テキストのサイズが余裕がないときは何もしない
     ara#, ->TextArea.size# tt#=
     if tt#>TEXTAREA_MAX_CHARS then end
     ara#, ->TextArea.lines# tt#=
     if tt#>TEXTAREA_MAX_LINES then end

     // 無効なコードは無視する
     if key_code+2%<32   then end
     if key_code+2%>127 then end

     // キーコードを挿入
     ara#, ->TextArea.text# ara#, ->TextArea.size# + pp0#=
     textarea_input_other_key1:
       (pp0)$, (pp0)$(1)=
       pp0#--
       if pp0#>=edit_p#  goto textarea_input_other_key1
       key_code+2%, (edit_p)$=
       ara#, ->TextArea.size# 1, + ara#, ->TextArea.size#=
       ara#, ->TextArea.edit_pos# 1, + ara#, ->TextArea.edit_pos#=

      // 行の格納情報を修正
      ara#, ->TextArea.edit_line# rr0#=
      ara#, ->TextArea.lines# 1, - pp0#=
      ara#, ->TextArea.line#   uu0#=
      textarea_input_other_key2:
        if pp0#<=rr0# goto  textarea_input_break
        (uu0)#(pp0#), 1, + (uu0)#(pp0#)=
        pp0#, 1, - pp0#=
      goto textarea_input_other_key2

    // 表示範囲の補正
   textarea_input_break:
   ara#, ->TextArea.edit_line# max_line#, - tt#=
   if tt#<0 then 0, tt#=
   tt#, ara#, ->TextArea.display_line#=

  // 表示開始位置を編集位置より表示幅分左側によせる、ただし表示開始位置がマイナスになったときは行の始めに設定する
   textarea_input_break1:
   ara#, ->TextArea.edit_pos# max_col#, -  tt#=
   if tt#<0 then 0, tt#=
   tt#, ara#, ->TextArea.display_pos#=
  
   // 描画する
   textarea_input_break2:
   com#, repaint
   end
 
 
// テキストボックスをクリックしたときの処理( 直接呼び出し不可 )
// (フォーカスとキャレットを移動させる)
textarea_clicked:
  com#= ->Component.subclass# ara#=
  com#, focused_component#=

  // マウスカーソルがある行を求める
  mouse_y#, tp#, - FONT_HEIGHT, / 
  ara#, ->TextArea.display_line#  +  pp0#=
  ara#, ->TextArea.lines# 1, -  qq0#=
  if qq0#<pp0# then qq0#, pp0#=
  pp0#, ara#, ->TextArea.edit_line#=

  // マウスカーソルがある桁を求める
  mouse_x#, left#, - FONT_WIDTH, / 
  ara#, ->TextArea.display_pos# +  adjust_edit_pos

  desktop, ->Desktop.component repaint  // どこにフォーカスが移ってもいいようにデスクトップ全体を再描画
  end


// テキストエリアを削除する( 直接呼び出し不可 )
textarea_removed:
  com#= ->Component.subclass# ara#=
  ara#, ->TextArea.text# pp0#=
  ara#, ->TextArea.line#  qq0#=
  pp0#, xfree
  qq0#, xfree
  ara#, ara#, ->@TextArea.removed
  end


// 水平スクロールバーが動かされたときの処理( 直接呼び出し不可 )
hscroll_changed_textarea:
  long hscrl#
  hscrl#= ->HScrollBar.subclass# ara#=
  hscrl#, ->HScrollBar.value#  tt0#= ara#, ->TextArea.display_pos#= 
  ara#, ->TextArea.component repaint
  end


// 垂直スクロールバーが動かされたときの処理( 直接呼び出し不可 )
vscroll_changed_textarea:
  long vscrl#
  vscrl#= ->VScrollBar.subclass# ara#=
  vscrl#, ->VScrollBar.value# tt0#= ara#, ->TextArea.display_line#= 
  0, ara#, ->TextArea.hscrollbar ->HScrollBar.value#=
  ara#, ->TextArea.component repaint
  end


// 表示テキストを設定する
set_textarea_text:
  ara#= pop tt0#=
  ara#, ->TextArea.text# pp0#=
  tt0#, pp0#, TEXTAREA_MAX_CHARS, strncpy
  ara#, ->TextArea.line# qq0#=
  0, ara#, ->TextArea.display_pos#=
  0, ara#, ->TextArea.edit_pos#=
  0, ara#, ->TextArea.display_line#=
  0, ara#, ->TextArea.edit_line#=
  0, rr0#=
  0, ss0#=
  pp0#, (qq0)#(rr0#)=  rr0#++
set_textarea_text1:
  (pp0)$, tt0#=
  pp0#++
  ss0#++
  if tt0#=NEW_LINE then  pp0#, (qq0)#(rr0#)=  rr0#++
  if tt0#<>NULL goto set_textarea_text1
  NULL, (qq0)#(rr0#)=
  rr0#, ara#, ->TextArea.lines#=
  ss0#, ara#, ->TextArea.size#=
  end

// タスクバー
 
  char task_bar$(Label.SIZE)
  char clock$(Button.SIZE)

// タスクバーを作成する
create_task_bar:
  desktop, ->Desktop.component com#=

  // 本体を生成
  task_bar, desktop, com#, "", create_label 
  task_bar, ->Label.component com0#=
  0, com0#, ->Component.x#=
  screen_height#, FONT_HEIGHT+6, - com0#, ->Component.y#=
  screen_width#, com0#, ->Component.width#=
  FONT_HEIGHT+6, com0#, ->Component.height#=
  TRUE, com0#, ->Component.is_visible#=

  // 時計を生成
  clock, desktop, com0#, "00:00", create_button 
  clock, ->Button.component com1#=
  screen_width#,  FONT_WIDTH*5+4, -  com1#, ->Component.x#=
  4, com1#, ->Component.y#=
  FONT_WIDTH*5+1, com1#, ->Component.width#=
  FONT_HEIGHT+2, com1#, ->Component.height#=
  NULL, com1#, ->Component.border#=
  TRUE, com1#, ->Component.is_visible#=

  end


// 時計の時刻を表示する
disp_clock:
  char tim_val$(20),tim_buf$(12)

/ rcx=tim_val/
/ rdx=time_cap/
/ rax=__runtime_service/
/ rax=(rax)/
/ rax=0x18(rax)/
/ call (rax)/

  tim_val$(4), time_zone#, + 24, mod dec tim_buf, strcpy
  ":", tim_buf, strcat
  if tim_val$(5)<10 then "0", tim_buf, strcat
  tim_val$(5), dec tim_buf, strcat
  clock, tim_buf, set_button_text
  clock, ->Button.component  repaint
  end


 .data
time_cap:
 data 0x100000001
 data 0x0
  end

// ファイルコンポーネントはファイル管理を目的として実装された
// GUIコンポーネントです
// ファイラークラス

 // 最大表示数
 const MAX_FILES    10000
 const MAX_FITEMS 256

// ディレクトリ情報
 const FILE_NAME  0x50   // ファイル名

 // ファイル項目の大きさ
 const FITEM_WIDTH  150
 const FITEM_HEIGHT 16

// ファイル項目の表示範囲
 const FILER_LEFT           2       // 左側のマージン
 const FILER_RIGHT         2       // 右側のマージン
 const FILER_TOP            2       // 上側のマージン
 const FILER_BOTTOM     10     // 下側のマージン(スクロールバーの表示位置,高さ)

 class Filer
  long subclass#      // サブクラスへのポインタ
  long file#              // ファイル名を格納するバッファ
  long files#            // ファイル数
  long fitem#          // ファイル項目の配列

  // 開く処理
  long open_action#  // ファイル項目を左クリックしたとき呼ばれる関数を格納する

  // 土台
  Label     base

  // スクロールバー
  HScrollBar scrollbar

 end



// ファイラーを生成する
// filer, filersub, filertitle, create_filer
create_filer:
 long filer#,filersub#,filerpar#,filerbase#,filercom#,filerscrl#,fitem#
 long ppx#,qqx#,ttx#,uux#,nnx#
 count iix#
 filerpar#= pop filersub#= pop  filer#=
 filersub#, filer#, ->Filer.subclass#=
 no_operation, filer#, ->Filer.open_action#=
 filer#, ->Filer.base filerbase#=
 filerbase#, filer#, filerpar#, "", create_label
 paint_filer,  filerbase#, ->Label.paint#=
 filer_removed,  filerbase#, ->Label.removed#=
 filerbase#, ->Label.component filercom#=
 256, filercom#, ->Component.width#=
 160, filercom#, ->Component.height#=
 COLOR_WHITE, filercom#, ->Component.background#=
 filer#, ->Filer.scrollbar filerscrl#=
 filerscrl#,  filer#, filercom#,  create_hscrollbar
 filer_scroll_action, filerscrl#, ->HScrollBar.changed#=
 MAX_FILES*8, xmalloc filer#, ->Filer.file#=
 0, filer#, ->Filer.files#=
 MAX_FITEMS*FItem.SIZE, xmalloc filer#, ->Filer.fitem#=
 for iix#=0 to MAX_FITEMS-1
   iix#, FItem.SIZE, * filer#, ->Filer.fitem# + ppx#=
   ppx#, filer#, filercom#, create_fitem    
   filer_lclick_action, ppx#, ->FItem.lclicked#=
   filer_rclick_action, ppx#, ->FItem.rclicked#=
 next iix#
 end


// 表示処理
paint_filer:
  long fwid#,fhei#,fcols#,frows#,filetop#
  filerbase#= ->Label.component filercom#=
  filerbase#, ->Label.subclass# filer#=
  filer#, ->Filer.scrollbar filerscrl#= ->HScrollBar.component com1#=
  FALSE,  com1#, ->Component.is_visible#=
  0, com1#, ->Component.x#=
  filercom#, ->Component.height# FILER_BOTTOM, - com1#, ->Component.y#=
  filercom#, ->Component.width# FILER_RIGHT, - com1#, ->Component.width#=
  FILER_BOTTOM, com1#, ->Component.height#=

  filercom#, ->Component.width#  FILER_LEFT+FILER_RIGHT,    - fwid#=
  filercom#, ->Component.height# FILER_TOP+FILER_BOTTOM, - fhei#=
  fwid#, FITEM_WIDTH,  / fcols#=
  fhei#, FITEM_HEIGHT, / frows#=
  
  0, iix#=
  filer#, ->Filer.fitem# qqx#=
  fcols#, frows#, * nnx#=
  if nnx#=0 goto paint_filer1
  filer#, ->Filer.files# frows#, / ttx#=
  filer#, ->Filer.files# frows#, mod uux#=
  if uux#<>0 then ttx#++
  ttx#, filerscrl#, ->HScrollBar.value# *  100, / frows#, *
  filetop#= 8, * filer#, ->Filer.file# + ppx#=
  TRUE,  com1#, ->Component.is_visible#=
  nnx#, filer#, ->Filer.files# - ttx#=
  if ttx#>=0 then FALSE, com1#, ->Component.is_visible#= 0, filetop#= 

  // ファイルの表示が途中で終わる場合は、表示するアイテムの数を減らす
  filer#, ->Filer.files# filetop#, - ttx#=
  if ttx#<nnx# then ttx#, nnx#=
  nnx#--
  if nnx#<0 goto paint_filer1

  // 表示するファイル項目のテキストと位置を設定する
  for iix#=0 to nnx#
    (ppx)#, qqx#, ->FItem.text#=
    (ppx)#, get_file_icon qqx#, ->FItem.icon#=
    qqx#, ->FItem.component com0#=
    iix#, frows#, / FITEM_WIDTH, * FILER_LEFT, +
    com0#, ->Component.x#=
    iix#, frows#, mod FITEM_HEIGHT, * FILER_TOP, +
    com0#, ->Component.y#=
    FITEM_WIDTH,  com0#, ->Component.width#=
    FITEM_HEIGHT, com0#, ->Component.height#=
    TRUE, com0#, ->Component.is_visible#=
    ppx#, 8, + ppx#=
    qqx#, FItem.SIZE, + qqx#=
  next iix#
  
  // 他のファイル項目を表示しないようにする
  paint_filer1:
  for iix#=iix# to MAX_FITEMS-1
    qqx#, ->FItem.component com0#=
    FALSE, com0#, ->Component.is_visible#=
    qqx#, FItem.SIZE, + qqx#=
  next iix#
  end


// ファイラーを削除したときの処理
filer_removed:
  filerbase#= ->Label.subclass# filer#=
  filer#= ->Filer.file# ppx#=
  filer#, ->Filer.files# 1, - qqx#=
  if qqx#<0 goto filer_removed1
  for iix#=0 to qqx#
    (ppx)#(iix#), xfree
  next iix#
  filer_removed1:
  filer#, ->Filer.file# xfree
  filer#, ->Filer.fitem# xfree
  end
    

// スクロールバーを変えた時は再描画する
filer_scroll_action:
  ->HScrollBar.subclass# ->Filer.base ->Label.component repaint 
  end


// ファイル項目の左クリックで登録されている関数を実行する
filer_lclick_action:
  fitem#=
  fitem#, ->FItem.subclass# filer#=
  fitem#, ->FItem.text# filer#, ->@Filer.open_action
  end


// ファイル項目の右クリックでファイルメニューを表示する
filer_rclick_action:
  fitem#=
  fitem#, show_file_menu
  end


// ディレクトリを調べてファイル表示を更新する
update_filer:
  filer#= ->Filer.file# ppx#=
  filer#, ->Filer.files# 1, - qqx#=
  if qqx#<0 goto update_filer1
    for iix#=0 to qqx#
      (ppx)#(iix#), xfree
    next iix#
  update_filer1:
  0, iix#=
  update_filer2:
     fbuf, vol_read  ttx#=   // ディレクトリのファイル名を一つ読み込む
     if ttx#=0 goto update_filer3
     0, fbuf+FILE_NAME+64%=
     fbuf+FILE_NAME, _nallow qqx#=
     qqx#, xstrlen 1, + xmalloc (ppx)#(iix#)=
     qqx#, (ppx)#(iix#), strcpy
     iix#++
     goto update_filer2
  update_filer3:
  vol_close  // ディレクトリを閉じる
  vol_open  // ディレクトリを開く
  iix#, filer#, ->Filer.files#=
  0, filer#, ->Filer.scrollbar ->HScrollBar.value#=
  filer#, ->Filer.base ->Label.component repaint
  end


// ファイル項目を左クリックしたとき呼ばれる関数を設定する
set_filer_open_action:
  ppx#= pop filer#=
  ppx#,  filer#, ->Filer.open_action#=
  end

// ファイル項目クラス


 class FItem
  long   subclass#         // サブクラスへのポインタ 
  long   text#                // テキスト 
  long   icon#                // アイコン 

  // イベント拡張 
  long lclicked#           // 左ボタンクリック
  long rclicked#           // 右ボタンクリック
  long paint#              // 描画処理

  // コンポーネントの本体 
  Component component 
 end

// look&feel
 .data
lf_fitem:
  data paint_fitem               // paint_component
  data no_operation             // key_pressed
  data fitem_lclicked            // mouse_lclicked
  data fitem_rclicked            // mouse_rclicked
  data no_operation             // mouse_lclicked2
  data no_operation             // mouse_rclicked2
  data no_operation             // remove_component


// ボタンを生成する
// fitm, subclass, parent, create_fitem 
create_fitem:
 long fitmprnt#,fitmsub#,fitm#

 fitmprnt#= pop fitmsub#= pop fitm#=
 fitmsub#, fitm#, ->FItem.subclass#=
 no_operation, fitm#, ->FItem.paint#=
 no_operation, fitm#, ->FItem.lclicked#=
 no_operation, fitm#, ->FItem.rclicked#=
 NULL,   fitm#, ->FItem.text#=
 NULL,   fitm#, ->FItem.icon#=
 fitm#, ->FItem.component com#=
 com#, fitm#, fitmprnt#, lf_fitem, create_component
 TYPE_FITEM, com#, ->Component.type#=
 FALSE, com#, ->Component.is_focusable#=
 COLOR_BLACK, com#, ->Component.foreground#=
 COLOR_WHITE, com#, ->Component.background#=
 NULL, com#, ->Component.border#=
 end
 

// ファイル項目を表示する( 直接呼び出し不可 )
paint_fitem:
  com#= is_visible tt#=
  if tt#=FALSE then end
  com#, ->Component.subclass# fitm#=

  // 基盤を描く
  com#, paint_base

  // アイコンを描く
  com#, ->Component.left#    pp0#=
  com#, ->Component.top#    qq0#=
  com#, ->Component.width# rr0#= 
  fitm#,  ->FItem.icon#  ss0#=
  if ss0#=NULL goto paint_fitem1
  pp0#, qq0#, ss0#,  draw_image pop pp0#= pp0#++
  com#, ->Component.right# pp0#, - rr0#=

// テキストを描く
paint_fitem1:
  fitm#,  ->FItem.text# ss0#=
  if ss0#=NULL goto paint_fitem2
  com#, ->Component.foreground# set_color
  pp0#, qq0#, rr0#, ss0#, draw_string

paint_fitem2:
  fitm#, fitm#, ->@FItem.paint
  end


// 左クリックで呼ばれる
fitem_lclicked:
  com#=
  com#, ->Component.subclass# fitm#=
  fitm#, fitm#, ->@FItem.lclicked
  end


// 右クリックで呼ばれる
fitem_rclicked:
  com#=
  com#, ->Component.subclass# fitm#=
  fitm#, fitm#, ->@FItem.rclicked
  end

// ファイルプロパティシート

 
  char file_property_sheet$(Label.SIZE)
  char file_property_file$(TextField.SIZE)
  char file_property_can_read$(CheckBox.SIZE)
  char file_property_can_write$(CheckBox.SIZE)
  char file_property_can_exec$(CheckBox.SIZE)
  char file_property_ok$(Button.SIZE)
  char file_property_cancel$(Button.SIZE)


// プロパティシートを作成する
create_file_property_sheet:
  desktop, ->Desktop.component com#=
 
  // シートを生成
  file_property_sheet, desktop, com#, "", create_label 
  file_property_sheet, ->Label.component com0#=
  paint_file_property_sheet, file_property_sheet, ->Label.paint#=
  260, com0#, ->Component.width#=
  170, com0#, ->Component.height#=
  RAISED_BORDER, com0#, ->Component.border#=
  FALSE, com0#, ->Component.is_visible#=

  // ファイル名プロパティ用テキストボックスを生成
  file_property_file, desktop, com0#, "", create_textfield 
  file_property_file, ->TextField.component com1#=
  10,   com1#, ->Component.x#=
  30,   com1#, ->Component.y#=
  240, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=

  // 読み込み可能チェックボックスを生成
  file_property_can_read, desktop, com0#, create_checkbox 
  file_property_can_read, ->CheckBox.component com1#=
  30, com1#, ->Component.x#=
  110, com1#, ->Component.y#=
  12,   com1#, ->Component.width#=
  12,   com1#, ->Component.height#=

  // 書き込み可能チェックボックスを生成
  file_property_can_write, desktop, com0#, create_checkbox 
  file_property_can_write, ->CheckBox.component com1#=
  120, com1#, ->Component.x#=
  110, com1#, ->Component.y#=
  12,   com1#, ->Component.width#=
  12,   com1#, ->Component.height#=

  // 実行込み可能チェックボックスを生成
  file_property_can_exec, desktop, com0#, create_checkbox 
  file_property_can_exec, ->CheckBox.component com1#=
  200, com1#, ->Component.x#=
  110, com1#, ->Component.y#=
  12,   com1#, ->Component.width#=
  12,   com1#, ->Component.height#=

  // OKボタンを生成
  file_property_ok, desktop, com0#, "   OK", create_button 
  file_property_ok, ->Button.component com1#=
  10,   com1#, ->Component.x#=
  140, com1#, ->Component.y#=
  100, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_property_ok, file_property_sheet_ok_clicked, set_button_lclicked

  // キャンセルボタンを生成
  file_property_cancel, desktop, com0#, " CANCEL", create_button 
  file_property_cancel, ->Button.component com1#=
  135, com1#, ->Component.x#=
  140, com1#, ->Component.y#=
  110, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_property_cancel, file_property_sheet_cancel_clicked, set_button_lclicked
  end


// プロパティシートを表示するとき呼ばれる関数
paint_file_property_sheet:
  file_property_sheet, ->Label.component com#=
  com#, ->Component.left# 10, + mx#=
  com#, ->Component.top# 10, + my#=
  
  mx#, my#, 200, "file name", draw_string
  "size ", dbuf, strcpy  0, dec dbuf, strcat
  my#, 40, + my#=
  mx#, my#, 200, dbuf, draw_string
  "date  80/01/01 12:00:00", dbuf, strcpy  
  my#, 20, + my#=
  mx#, my#, 200, dbuf, draw_string
  my#, 20, + my#=
  mx#, my#, 240, "read  write exec", draw_string
  end


// プロパティシートを表示する
show_file_property_sheet:

  fitem#=
  file_property_sheet, ->Label.component com#=

  mouse_x#, com#, ->Component.x#=
  mouse_x#, com#, ->Component.width# + screen_width#, - tt#=
  if tt#>0 then mouse_x#, tt#, - com#, ->Component.x#=
  
  mouse_y#, com#, ->Component.y#=
  mouse_y#, com#, ->Component.height# + screen_height#, - tt#=
  if tt#>0 then mouse_y#, tt#, - com#, ->Component.y#=

  fitem#, ->FItem.text# file_property_file, set_textfield_text
  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// OKボタンをクリックしたとき
file_property_sheet_ok_clicked:
  char fcmdbuf$(256)           // mv, chmodコマンドを実行
  file_property_sheet, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  "mv ", fcmdbuf, strcpy
  file_name#, fcmdbuf, strcat
  " ", fcmdbuf, strcat
  file_property_file, ->TextField.text# fcmdbuf, strcat
  fcmdbuf, exec_command
  fitem#, ->FItem.subclass# update_filer
  desktop, ->Desktop.component repaint
  end


// キャンセルボタンをクリックしたとき
file_property_sheet_cancel_clicked:
  file_property_sheet, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end

// ファイルメニュー
 
  char file_menu$(Label.SIZE)
  char file_menu_update$(Button.SIZE)
  char file_menu_copy$(Button.SIZE)
  char file_menu_edit$(Button.SIZE)
  char file_menu_delete$(Button.SIZE)
  char file_menu_property$(Button.SIZE)
  char file_menu_cancel$(Button.SIZE)
 

// ファイルメニューを作成する
create_file_menu:
  desktop, ->Desktop.component com#=
 
  // シートを生成
  file_menu, desktop, com#, "", create_label 
  file_menu, ->Label.component com0#=
  160, com0#, ->Component.width#=
  120, com0#, ->Component.height#=
  RAISED_BORDER, com#, ->Component.border#=
  FALSE, com0#, ->Component.is_visible#=

  // ファイル更新ボタンを生成
  file_menu_update, desktop, com0#, "   update", create_button 
  file_menu_update, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  0,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_menu_update, file_menu_update_clicked, set_button_lclicked

  // ファイルコピーボタンを生成
  file_menu_copy, desktop, com0#, "    copy", create_button 
  file_menu_copy, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  20,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_menu_copy, file_menu_copy_clicked, set_button_lclicked

  // ファイル編集ボタンを生成
  file_menu_edit, desktop, com0#, "    edit", create_button 
  file_menu_edit, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  40,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_menu_edit, file_menu_edit_clicked, set_button_lclicked

  // ファイル削除ボタンを生成
  file_menu_delete, desktop, com0#, "   delete", create_button 
  file_menu_delete, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  60,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_menu_delete, file_menu_delete_clicked, set_button_lclicked

  // ファイルプロパティボタンを生成
  file_menu_property, desktop, com0#, "  property", create_button 
  file_menu_property, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  80,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_menu_property, file_menu_property_clicked, set_button_lclicked

  // キャンセルボタンを生成
  file_menu_cancel, desktop, com0#, "   cancel", create_button 
  file_menu_cancel, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  100,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  file_menu_cancel, file_menu_cancel_clicked, set_button_lclicked
  end


// ファイルメニューを表示する
show_file_menu:
  long file_name#
  fitem#=
  TRUE, key_mask#=
  fitem#, ->FItem.subclass filer#=
  fitem#, ->FItem.text# file_name#=
  file_menu, ->Label.component com#=

  mouse_x#, com#, ->Component.x#=
  mouse_x#, com#, ->Component.width# + screen_width#, - tt#=
  if tt#>0 then mouse_x#, tt#, - com#, ->Component.x#=
  
  mouse_y#, com#, ->Component.y#=
  mouse_y#, com#, ->Component.height# + screen_height#, - tt#=
  if tt#>0 then mouse_y#, tt#, - com#, ->Component.y#=

  TRUE, com#, ->Component.is_visible#=
  com#, pop_up_component
  desktop, ->Desktop.component repaint
  end


// ファイル更新をクリックしたとき
file_menu_update_clicked:
  FALSE, key_mask#=
  file_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  filer#, update_filer
  desktop, ->Desktop.component repaint
  end


// ファイルコピーをクリックしたとき
file_menu_copy_clicked:
  char  infile$(FILE_SIZE),outfile$(FILE_SIZE)
  FALSE, key_mask#=
  file_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  "-", dbuf, strcpy
  file_name#, dbuf, strcat
  file_name#, infile, ropen tt0#=
  if tt0#<>0 goto file_menu_copy_clicked3
  dbuf, outfile, wopen
  file_menu_copy_clicked1:
    infile, getc tt0#=
    if tt0#=EOF goto file_menu_copy_clicked2
    tt0#, outfile, putc
    goto file_menu_copy_clicked1
  file_menu_copy_clicked2:
  infile,   rclose
  outfile, wclose
file_menu_copy_clicked3:
  filer#, update_filer
  desktop, ->Desktop.component repaint
  end


// ファイル編集をクリックしたとき
file_menu_edit_clicked:
  FALSE, key_mask#=
  file_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  if file_edit_cmd#<0 then end
  file_association#(file_edit_cmd#), dbuf, strcpy
  " ", dbuf, strcat
  file_name#, dbuf, strcat
  dbuf, exec_command
  filer#, update_filer
  desktop, ->Desktop.component repaint
  end


// ファイル削除をクリックしたとき
file_menu_delete_clicked:
  FALSE, key_mask#=
  file_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  file_name#, delete
  filer#, update_filer
  desktop, ->Desktop.component repaint
  end


// ファイルのプロパティをクリックしたとき
file_menu_property_clicked:
  FALSE, key_mask#=
  file_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  fitem#,  show_file_property_sheet
  end


// キャンセルをクリックしたとき
file_menu_cancel_clicked:
  FALSE, key_mask#=
  file_menu, ->Label.component com#=
  FALSE, com#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end

// ファイルの関連付け関連の関数
// データは"system.ini"から読み込む


 const MAX_FILE_ASSOCIATION 256
 const MAX_FILE_ICON 256
 long file_associations#
 long file_icons#
 char file_association$(MAX_FILE_ASSOCIATION*3)
 long file_icon#(MAX_FILE_ICON)
 char fbuf$(512),xfp$(FILE_SIZE)
 long file_edit_cmd#

// ファイル情報を読み込む
load_file_data:
  -1, file_edit_cmd#=
  0, file_icons#= file_associations#=

  "system.ini",  xfp, ropen  tt0#=
  if tt0#=ERROR then end

  // アイコンを読み込む
  load_file_data1:
    fbuf, xfp, finputs tt0#=
    if tt0#=EOF goto load_file_data3 
    fbuf, "end", strcmp tt0#=
    if tt0#=0 goto load_file_data2
    fbuf, load_image pp0#=
    pp0#, file_icon#(file_icons#)= file_icons#++
    goto load_file_data1
    
  // ファイルの関連付けを読み込む
  load_file_data2:

    // 拡張子
    fbuf,  xfp, finputs  tt0#=
    if tt0#=EOF goto load_file_data3
    fbuf, "end", strcmp tt0#= 
    if tt0#=0 goto load_file_data3
    fbuf, strlen 1, + xmalloc pp0#=
    fbuf, pp0#, strcpy 
     file_associations#, 3, * ii0#=
    pp0#, file_association#(ii0#)=

    // ファイル編集コマンド(テキストとして開く)を設定
    fbuf, ".txt", strcmp tt0#= 
    if tt0#=0 then ii0#, 2, + file_edit_cmd#= 


    // アイコン番号
    fbuf,  xfp, finputs  tt0#=
    if tt0#=EOF goto load_file_data3
    fbuf, 10, atoi  pp0#=
    pp0#, file_association+8#(ii0#)=

    // コマンド
    fbuf,  xfp, finputs  tt0#=
    if tt0#=EOF goto load_file_data3
    fbuf, strlen 1, + xmalloc pp0#= 
    fbuf, pp0#, strcpy 
    pp0#, file_association+16#(ii0#)=
     file_associations#++
    goto load_file_data2

  load_file_data3:
  xfp, rclose
  end


// ファイル情報を破棄する
remove_file_data:

  // アイコン
  for ii0#=1 to file_icons#
    file_icon-8#(ii0#), pp0#=
    if pp0#<>NULL then pp0#, xfree
  next ii0#

  for ii0#=1 to file_associations#
    ii0#, 3, * tt0#=

    // 拡張子
    file_association-24#(tt0#), pp0#=
    if pp0#<>NULL then pp0#, xfree

    // コマンド
    file_association-8#(tt0#), pp0#=
    if pp0#<>NULL then pp0#, xfree

  next ii0#
  end



// ファイル名に対応するコマンドを返す
get_file_command:
  long tfname#
  tfname#= get_file_type 3, * 2, + pp0#=
  file_association#(pp0#), fbuf, strcpy
  " ", fbuf, strcat
  tfname#, fbuf, strcat
  fbuf, end


// ファイル名に対応するアイコンを返す
get_file_icon:
  get_file_type 3, * 1, + pp0#=
  file_association#(pp0#), pp0#=
  file_icon#(pp0#), end


//  ファイルのタイプ番号を求める
get_file_type:
  get_file_extention pp0#=
  if pp0#=NULL then 0, end  // タイプ0はデフォルトのファイル番号
  file_associations#, 1, - qq0#=
  for ii0#=0 to qq0#
    ii0#, 3, * rr0#=
    file_association#(rr0#), pp0#, strcmp ss0#=
    if ss0#=0 then ii0#, end 
  next ii0#
  0, end


//  ファイル名から拡張子を求める
get_file_extention:
  pp0#= xstrlen pp0#, + qq0#=
  get_file_extention1:
    if qq0#<pp0# then NULL, end
    if (qq0)$='.' then qq0#, end
    qq0#--
  goto get_file_extention1

// 開く・保存ダイアログ

  char xdialog$(Filer.SIZE),xdialog_win$(Window.SIZE)
  char xdialog_txt$(TextField.SIZE),xdialog_btn$(Button.SIZE)
  long xdialog_ok_action#
  
// 作成する
create_xdialog:
  long comwin#
  xdialog_win, xdialog, "", create_window
  paint_xdialog, xdialog_win, ->Window.paint#=
  close_xdialog, xdialog_win, ->Window.minimized#=
  FALSE, xdialog_win, ->Window.resizable#=
  xdialog_win, ->Window.component comwin#=
  100, comwin#, ->Component.x#=
  100, comwin#, ->Component.y#=
  480, comwin#, ->Component.width#=
  360, comwin#, ->Component.height#=
  FALSE, comwin#, ->Component.is_visible#= 
  xdialog, xdialog_win, comwin#, create_filer
  xdialog_txt,  xdialog, comwin#, "",     create_textfield
  xdialog_btn, xdialog, comwin#, " OK ", create_button
  xdialog_btn, xdialog_ok, set_button_lclicked
  xdialog, xdialog_txt_set_fname, set_filer_open_action
  no_operation, xdialog_ok_action#=
  end


// 表示用コールバック
paint_xdialog:
  long combase#,comtxt#,combtn#
  xdialog_win, ->Window.component comwin#=
  xdialog, ->Filer.base ->Label.component combase#=
  xdialog_txt, ->TextField.component comtxt#=
  xdialog_btn, ->Button.component combtn#=
  2, combase#, ->Component.x#=
  TITLEBAR_HEIGHT+3, combase#, ->Component.y#=
  comwin#, ->Component.width#  pp0#= 10, - combase#, ->Component.width#=
  comwin#, ->Component.height# qq0#= TITLEBAR_HEIGHT+FONT_HEIGHT+16, - combase#, ->Component.height#=
  pp0#, 85, - pp0#=
  qq0#, FONT_HEIGHT+9, - qq0#=
  10,     comtxt#, ->Component.x#=
  qq0#, comtxt#, ->Component.y#=
  pp0#, comtxt#, ->Component.width#=
  FONT_HEIGHT+2, comtxt#, ->Component.height#=
  pp0#, 15, + combtn#, ->Component.x#=    
  qq0#, combtn#, ->Component.y#=
  60,     combtn#, ->Component.width#=
  FONT_HEIGHT+2, combtn#, ->Component.height#=
  end


// 閉じるボタンをクリックしたときの処理
close_xdialog:
  desktop, ->Desktop.component input_client#=
  xdialog_win, ->Window.component comwin#=
  WINDOW_NORMAL, xdialog_win, ->Window.state#=
  xdialog_win, ->Window.height# comwin#, ->Component.height#=
  FALSE, comwin#, ->Component.is_visible#=
  file_menu, ->Label.component com1#=
  FALSE, com1#, ->Component.is_visible#=
  file_property_sheet, ->Label.component com1#=
  FALSE, com1#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  no_operation, xdialog_ok_action#=
  end


// テキストボックスにクリックしたファイルの名前をセットする
xdialog_txt_set_fname:
  xdialog_txt, set_textfield_text
  xdialog_win, ->Window.component repaint
  end


// OKボタンをクリックしたときの処理
xdialog_ok:
  desktop, ->Desktop.component input_client#=
  xdialog_win, ->Window.component comwin#=
  FALSE, comwin#, ->Component.is_visible#=
  file_menu, ->Label.component com1#=
  FALSE, com1#, ->Component.is_visible#=
  file_property_sheet, ->Label.component com1#=
  FALSE, com1#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  xdialog_txt, ->TextField.text# @xdialog_ok_action
  no_operation, xdialog_ok_action#=
  end


// 開くダイアログを表示する
show_open_dialog:
  "Open",
   goto show_xdialog


// 保存ダイアログを表示する
show_save_dialog:
  "Save",
  goto show_xdialog


// ダイアログを表示する
show_xdialog:
  pp0#= pop xdialog_ok_action#=
  pp0#, xdialog_win, ->Window.title#=
  xdialog_win, ->Window.component comwin#=
  TRUE, comwin#, ->Component.is_visible#= 
  comwin#, pop_up_component
  xdialog, update_filer
  xdialog_txt, ->TextField.component request_focus
  "", xdialog_txt, set_textfield_text
  desktop, ->Desktop.component repaint
  xdialog_win, ->Window.component input_client#=
  end



// 内部ファイラー

  char xfiler$(Filer.SIZE),xfiler_win$(Window.SIZE)
  
// 作成する
create_xfiler:
  xfiler_win, xfiler, "Explore", create_window
  paint_xfiler, xfiler_win, ->Window.paint#=
  close_xfiler, xfiler_win, ->Window.minimized#=
  xfiler_win, ->Window.component com0#=
  100, com0#, ->Component.x#=
  100, com0#, ->Component.y#=
  480, com0#, ->Component.width#=
  360, com0#, ->Component.height#=
  FALSE, com0#, ->Component.is_visible#= 
  xfiler, xfiler_win, com0#, create_filer
  xfiler_win,  xfiler_icon, set_window_icon
  xfiler, xfiler_exec_command, set_filer_open_action
  end


// 表示用コールバック
paint_xfiler:
  xfiler_win, ->Window.component com0#=
  xfiler, ->Filer.base ->Label.component com1#=
  2, com1#, ->Component.x#=
  TITLEBAR_HEIGHT+3, com1#, ->Component.y#=
  com0#, ->Component.width# 10, - com1#, ->Component.width#=
  com0#, ->Component.height# TITLEBAR_HEIGHT+5, - com1#, ->Component.height#=
  end


// 閉じるボタンをクリックしたときの処理
close_xfiler:
  xfiler_win, ->Window.component com0#=
  WINDOW_NORMAL, xfiler_win, ->Window.state#=
  xfiler_win, ->Window.height# com0#, ->Component.height#=
  FALSE, com0#, ->Component.is_visible#=
  file_menu, ->Label.component com1#=
  FALSE, com1#, ->Component.is_visible#=
  file_property_sheet, ->Label.component com1#=
  FALSE, com1#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  end


// 表示する
show_xfiler:
  xfiler_win, ->Window.component com0#=
  TRUE, com0#, ->Component.is_visible#= 
  xfiler, update_filer
  desktop, ->Desktop.component repaint
  end


// ファイルを開く(実行する)
xfiler_exec_command:
  long dxx#
  get_file_command dxx#= exec_command
  desktop, ->Desktop.component repaint
  end


// アイコンデータ
xfiler_icon:
 data 68719476752
 data -16777216,-16777216,-16777216,-16777216
 data -72057594028124779,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data 5934154462710474,-16777216,-16777216,-16777216
 data -16777216,-16777216,36451593608859019,70927274619672471
 data 55385441543910387,-72057594037927936,-16777216,-16777216
 data -16777216,63047384019468662,41534773306443683,72057589759277304
 data 72057589759474683,4521260545392318,-16777216,-16777216
 data -16777216,53976967141490856,69237290886594969,68961356424149223
 data 66701795591389439,51715250256084735,36170092854712360,-16777216
 data -16777216,42382561191822216,68955725723137781,5911958074556413
 data 7606155168379391,68101521152933882,3956111568780995,-72057594036875248
 data 40127269570119062,42665054076440695,41532578574207334,40417609359725478
 data 44926899817907347,39277372852048765,51423905444790248,-72057594037927936
 data 72053191705001623,71492268984368127,72047694155087103,68670943622332390
 data 66405962553553919,72057581169800703,72053191705002618,9325099860537006
 data 72055326306447506,59895655420002108,60172736645234448,60182606480342812
 data 63285643040057600,54239892162477849,53122547822264174,-72057594037730557
 data -16777216,68960299864029951,64447951385642936,66145571567876258
 data 68678927964097486,63893720214516195,2817004638619610,-72057594037927936
 data -16777216,55079764427274484,61013824387022643,51689849819168529
 data 51133411036757780,53396343405674298,5076496739925785,-72057594035954146
 data -16777216,62188390568620523,69804888001075602,70649145426952393
 data 67834425723565495,64738166620078761,42661635286153661,-72057594037927936
 data -16777216,61606474033306289,55101784724078408,54812531560414997
 data 54534260630552335,59330553688751905,45490644345746944,-72057594037270006
 data -16777216,42949823293262758,43227007596267822,43220324627479895
 data 40399922684791946,38982720917248688,40390237533539715,-72057594036480490
 data -16777216,-16777216,146030006296,1692148395409408
 data 1407374884735262,1126999418732549,1125921382006801,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216


_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _1960324856_in

 end
_1960324856_in:
// ウィンドウシステムメイン関数


// char log$(FILE_SIZE)
// "log", log, wopen

 1000000, clock_interval#=
 0, time_zone#=

  screen_width#, screen_height#, * 4, * xmalloc screen_buffer#=
  if screen_buffer#=NULL then end
  screen_width#, screen_height#, * 4, * xmalloc copy_area#=
  if copy_area#=NULL then end
  FONT_WIDTH, FONT_HEIGHT, * 256, * tt#= xmalloc font_area#=
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
  COLOR_WHITE, color_title#=
  COLOR_BLUE,   color_titlebar#=
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
  END_KEY,      lclick_key#=
  PGDN_KEY,    rclick_key#=

  TRUE, gui_is_running#=
  FALSE, key_mask#=
  NULL, focused_component#= clicked_component#=

  create_desktop                     // デスクトップコンポーネントを生成
  create_desktop_menu           // デスクトップメニューを作成
  create_icon_menu                 // アイコンメニューを作成
  create_property_sheet         // プロパティシートを作成
  create_file_menu                  // ファイルメニューを作成
  create_file_property_sheet   // ファイルプロパティシートを作成
  load_desktop                        // デスクトップの設定を読み込む
  create_xdialog                      // 開く・保存用のダイアログを作成
  create_xfiler                         // 内部ファイラーを作成
  create_task_bar                    // タスクバーを作成

  desktop, ->Desktop.component  input_client#= tt#=
  show_desktop_menu, desktop, ->Desktop.rclicked#= // デスクトップの右クリック動作を定義
  desktop, ->Desktop.component repaint
  clock_interval#, clock_count#=

event_loop: 
  if gui_is_running#=0 goto event_loop_exit

  // 既定の時間ごとに時計の表示を更新する
  if clock_count#>=clock_interval# then disp_clock 0, clock_count#=
  clock_count#++

  // マウス・キーボード等の状態を読み込んでマウスカーソルの位置を更新する
  read_input_device

mouse_event:

  // マウスボタンの状態が変化したときマウスイベントの割り当てをおこなう
  if mouse_left#<>mouse_left0#     then  input_client#, dispatch_mouse_event gotomouse_event1
  if mouse_right#<>mouse_right0# then  input_client#, dispatch_mouse_event gotomouse_event1

mouse_event1:
  mouse_left#,   mouse_left0#=
  mouse_right#, mouse_right0#=

keyboad_event:

  // キー入力がマスクされているならキーボードイベントの処理はしない
  if key_mask#=TRUE goto event_loop

  // キー入力があればキーボードイベントの処理をする
  if key_code#=0 goto event_loop

  // フォーカスされているGUIコンポーネントがあればキーボードイベントを処理する
  if focused_component#=NULL goto event_loop
  
  // キーボードイベント処理アドレスにジャンプする
  focused_component#, focused_component#, ->Component.look_and_feel# ->@LookAndFeel.key_pressed
  goto event_loop
  
// イベントループ終了処理
event_loop_exit:
  save_desktop
  remove_desktop
  screen_buffer#, xfree
  copy_area#, xfree
  font_area#, xfree
  cls
  
//  log, wclose
  
  end

 long gui_end#

 end
