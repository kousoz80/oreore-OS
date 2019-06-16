// プログラム終了
exit_program:
  GUI, ->Window.component remove_component
  end
// テキストを読み込む
file_open:
  char infile$(FILE_SIZE),buf$(65536)
  pp#=
  pp#, infile, ropen tt#=
  if tt#=ERROR then end
  65536, buf, infile, _read tt#=
  infile, rclose
  NULL, buf$(tt#)=
  buf, textarea, set_textarea_text
  desktop, ->Desktop.component repaint
  end

// メモ帳 for oreoer-OS ver 0.0.6
 long pp#,tt#

// テキストを保存する
file_save:
  char outfile$(FILE_SIZE)
  pp#=
  pp#, outfile, wopen tt#=
  if tt#=ERROR then end
  textarea, ->TextArea.text# pp#= strlen tt#=
  tt#, pp#, outfile, _write
  outfile, wclose
  end

 long STATE_1675397414#,STATE2_1675397414#
create_gui:
 char GUI$(Window.SIZE)
 long guicom#,com#
 GUI, desktop, "NotePad", create_window
 GUI, ->Window.component guicom#=
  0, guicom#, ->Component.x#=
 0, guicom#, ->Component.y#=
 430, guicom#, ->Component.width#=
 329, guicom#, ->Component.height#=
  FALSE, GUI, ->Window.resizable#=
 GUI_closed, GUI, ->Window.minimized#=
 13421772, guicom#, ->Component.background#=
  char file_menu$(Button.SIZE)
  file_menu, GUI, guicom#, "File", create_button
 file_menu, ->Button.component com#=
 9, com#, ->Component.x#=
 25, com#, ->Component.y#=
 68, com#, ->Component.width#=
 26, com#, ->Component.height#=
 3355443, com#, ->Component.foreground#=
 13421772, com#, ->Component.background#=
 file_menu_clicked, file_menu, ->Button.lclicked#=
 file_menu_created
 char textarea$(TextArea.SIZE)
  textarea, GUI, guicom#, "", create_textarea
 textarea, ->TextArea.component com#=
 21, com#, ->Component.x#=
 55, com#, ->Component.y#=
 391, com#, ->Component.width#=
 259, com#, ->Component.height#=
 3355443, com#, ->Component.foreground#=
 16777215, com#, ->Component.background#=
 textarea_created
 GUI_created
 end

// ファイルメニュー
 
  char fmenu$(Label.SIZE)
  char fmenu_open$(Button.SIZE)
  char fmenu_save$(Button.SIZE)
  char fmenu_exit$(Button.SIZE)
  long com0#,com1#
  

// ファイルメニューを作成する
create_fmenu:
  GUI, ->Window.component com#=

  // シートを生成
  fmenu, GUI, com#, "", create_label 
  fmenu, ->Label.component com0#=
  160, com0#, ->Component.width#=
  60, com0#, ->Component.height#=
  RAISED_BORDER, com#, ->Component.border#=
  FALSE, com0#, ->Component.is_visible#=

  // 開くボタンを生成
  fmenu_open, desktop, com0#, "   open", create_button 
  fmenu_open, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  0,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  fmenu_open, fmenu_open_clicked, set_button_lclicked

  // 保存ボタンを生成
 fmenu_save, desktop, com0#, "  save", create_button 
 fmenu_save, ->Button.component com1#=
  0,    com1#, ->Component.x#=
  20,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
 fmenu_save, fmenu_save_clicked, set_button_lclicked

  // 終了ボタンを生成
  fmenu_exit, desktop, com0#, "  exit", create_button 
  fmenu_exit, ->Button.component com1#=
  0,   com1#, ->Component.x#=
  40,   com1#, ->Component.y#=
  160, com1#, ->Component.width#=
  20,   com1#, ->Component.height#=
  fmenu_exit, fmenu_exit_clicked, set_button_lclicked
  end


// ファイルメニューを表示する
show_fmenu:
  1, key_mask#=
  GUI, ->Window.component com0#=
  fmenu, ->Label.component com1#=
  mouse_x#, com0#, ->Component.left# - com1#, ->Component.x#=
  mouse_y#, com0#, ->Component.top# - com1#, ->Component.y#=
  TRUE, com1#, ->Component.is_visible#=
  com1#, pop_up_component
  com0#, repaint
  end


// ファイルメニューを非表示にする
hide_fmenu:
  0, key_mask#=
  GUI, ->Window.component com0#=
  fmenu, ->Label.component com1#=
  TRUE, com1#, ->Component.is_visible#=
  com0#, repaint
  end


// 開くボタンをクリックしたとき
fmenu_open_clicked:
  0, key_mask#=
  fmenu, ->Label.component com0#=
  FALSE, com0#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  file_open, show_open_dialog
  end


// 保存ボタンをクリックしたとき
fmenu_save_clicked:
  0, key_mask#=
  fmenu, ->Label.component com0#=
  FALSE, com0#, ->Component.is_visible#=
  desktop, ->Desktop.component repaint
  file_save, show_save_dialog
  end


// 終了ボタンをクリックしたとき
fmenu_exit_clicked:
  0, key_mask#=
  fmenu, ->Label.component com0#=
  FALSE, com0#, ->Component.is_visible#=
  exit_program
  end


_INIT_STATES:
 _SINIT_1675397414

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 Start

 end
_1630441211_in:
  exit_program

 end
_631621439_in:
 long ico#
 "text.ico", load_image ico#=
 GUI, ico#, set_window_icon
 textarea, ->TextArea.component request_focus
 if argc#>1 then argv#(1), file_open
 create_fmenu 
 

 end
Start:
 STATE_1675397414#, STATE2_1675397414#=
 in

 end
GUI_created:
 STATE_1675397414#, STATE2_1675397414#=
 _631621439_in

 end
GUI_closed:
 STATE_1675397414#, STATE2_1675397414#=
 _1630441211_in

 end
file_menu_clicked:
 STATE_1675397414#, STATE2_1675397414#=
 _2116716003_show_memu

 end
file_menu_created:
 STATE_1675397414#, STATE2_1675397414#=
 _2024968460_menu_created

 end
textarea_created:
 STATE_1675397414#, STATE2_1675397414#=

 end
in:
 if  STATE2_1675397414#<>1989188336 then  end
// GUIを作成する
 create_gui

 _SINIT_1675397414

 end
_SINIT_1675397414:
 1989188336, STATE_1675397414#=

 end
_2024968460_menu_created:
 _753283148_in

 end
_2116716003_show_memu:
 _729024847_in

 end
_753283148_in:
 NULL, file_menu,  ->Button.component ->Component.border#=

 end
_729024847_in:
 fmenu, ->Label.component ->Component.is_visible# tt#=
 if tt#=FALSE then show_fmenu
 if tt#=TRUE  then hide_fmenu


 end
