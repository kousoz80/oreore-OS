 long STATE_256603806#,STATE2_256603806#
create_gui:
 char GUI$(Window.SIZE)
 long guicom#,com#
 GUI, desktop, "About", create_window
 GUI, ->Window.component guicom#=
  0, guicom#, ->Component.x#=
 0, guicom#, ->Component.y#=
 408, guicom#, ->Component.width#=
 326, guicom#, ->Component.height#=
  FALSE, GUI, ->Window.resizable#=
 GUI_closed, GUI, ->Window.minimized#=
 16777215, guicom#, ->Component.background#=
  char BUTTON0$(Button.SIZE)
  BUTTON0, GUI, guicom#, "", create_button
 BUTTON0, ->Button.component com#=
 3, com#, ->Component.x#=
 27, com#, ->Component.y#=
 397, com#, ->Component.width#=
 293, com#, ->Component.height#=
 3355443, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 BUTTON0_clicked, BUTTON0, ->Button.lclicked#=
 BUTTON0_created
 GUI_created
 end


_INIT_STATES:
 _SINIT_256603806

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 Start

 end
_1928828629_in:
// イメージを読み込む


  long com0#,com1#,icon#,wid#,hei#,tt#
  char fp$(FILE_SIZE)
  GUI, ->Window.component com0#=
  screen_width#, screen_height#, * 4, * malloc icon#=
  if icon#=NULL then end
 "about.img", fp, ropen tt#=
  if tt#=ERROR then end
  4000000, icon#, fp, _read
  fp, rclose
 (icon)!(0), 2, + wid#=
 (icon)!(1), 2, + hei#=
  screen_width#,  wid#, - 2, /  com0#, ->Component.x#=
  screen_height#, hei#, - 2, /  com0#, ->Component.y#=
  wid#,  com0#, ->Component.width#=
  hei#,   com0#, ->Component.height#=
  BUTTON0, ->Button.component com1#=
  0,  com1#, ->Component.x#=
  0,  com1#, ->Component.y#=
  wid#,  com1#, ->Component.width#=
  hei#,   com1#, ->Component.height#=
  BUTTON0, icon#, set_button_image  
  desktop, ->Desktop.component  repaint
  end


 end
_47247990_in:
// 終了する


  if icon#<>NULL then icon#, free
  GUI, ->Window.component remove_component
  desktop, ->Desktop.component repaint
  end

 end
Start:
 STATE_256603806#, STATE2_256603806#=
 in
 _1928828629_in

 end
GUI_created:
 STATE_256603806#, STATE2_256603806#=

 end
GUI_closed:
 STATE_256603806#, STATE2_256603806#=
 _47247990_in

 end
BUTTON0_clicked:
 STATE_256603806#, STATE2_256603806#=
 _47247990_in

 end
BUTTON0_created:
 STATE_256603806#, STATE2_256603806#=

 end
in:
 if  STATE2_256603806#<>168654403 then  end
// GUIを作成する
 create_gui

 _SINIT_256603806

 end
_SINIT_256603806:
 168654403, STATE_256603806#=

 end
