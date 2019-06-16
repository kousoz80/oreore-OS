// アイコン

xcalc:
 data 68719476752
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,25231094624526478,25800774791573912,25800774791178667
 data 25800774791178667,25800774791178667,35375261916309931,-72057594030876792
 data 70083966374287762,64157598697977277,68671093932097504,72053153043644394
 data 70368709818505444,70367640371723261,61080022702489577,15393170425578
 data 4491320323717837,9582359800189205,4796078310818318,3389794348434190
 data 24189255812899,24938577287097793,28316354314740380,7696581394811
 data 72049893166587287,65020715326111753,66146580886977023,72057551105028863
 data 45526026287710207,23010175625175459,33960327890836380,4398046511243
 data 259274296504002,56503640558406173,50047368422408898,54226543398862020
 data 49183139396113620,25788650098835637,32826748582469284,2220498882989
 data 70367640378186908,24695804260100770,27215872026251179,29190650744711849
 data 15080467700485005,25541388831140005,31691996746393768,1702095539404949
 data 264776150263226,8864818571181,2555316579334399,13215631146232
 data 5644970023190264,19842765679595,10015879131113,2199024374434
 data 65860742213643683,28602274585230515,26084465970162090,24371345250691762
 data 29983226829262539,23259769060111287,35928423638936749,5372278237823113
 data 279056916126379,1411811591300513,6494892510735609,7052301955688945
 data 4510196712861176,68957997761167359,8924954678221,1099512022166
 data 61643015612504985,23823797049925274,26078934052678052,26078934053201575
 data 26078934053201575,26078934053201575,35078522625894055,6597069770603
 data 29690967193265871,14916422937751,7310034342050,7310034339494
 data 7310034339494,7310034339494,3405788806645414,7073398819651717
 data -16777216,2547628571099394,1411781520065798,1411781520327682
 data 1411781520327682,1411781520327682,14293651489794,-72057594036610498
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216
 data -16777216,-16777216,-16777216,-16777216

 long STATE_1385354486#,STATE2_1385354486#
// 主要変数 
 long disp#,reg#
 long memory#
 long op#,op0#
 long num#
 char buf$(64)

// 数値を表示
paint_disp:
 disp#, dec buf, strcpy
 buf, display, ->Label.text#=
 display, ->Label.component repaint
 end

 long STATE_59151413#,STATE2_59151413#
create_gui:
 char GUI$(Window.SIZE)
 long guicom#,com#
 GUI, desktop, "Calculator", create_window
 GUI, ->Window.component guicom#=
  0, guicom#, ->Component.x#=
 0, guicom#, ->Component.y#=
 241, guicom#, ->Component.width#=
 180, guicom#, ->Component.height#=
  FALSE, GUI, ->Window.resizable#=
 GUI_closed, GUI, ->Window.minimized#=
 16764108, guicom#, ->Component.background#=
  char div_Button$(Button.SIZE)
  div_Button, GUI, guicom#, "/", create_button
 div_Button, ->Button.component com#=
 136, com#, ->Component.x#=
 145, com#, ->Component.y#=
 43, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 div_Button_clicked, div_Button, ->Button.lclicked#=
 char mult_Button$(Button.SIZE)
  mult_Button, GUI, guicom#, "x", create_button
 mult_Button, ->Button.component com#=
 135, com#, ->Component.x#=
 115, com#, ->Component.y#=
 44, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 mult_Button_clicked, mult_Button, ->Button.lclicked#=
 char minus_Button$(Button.SIZE)
  minus_Button, GUI, guicom#, "-", create_button
 minus_Button, ->Button.component com#=
 135, com#, ->Component.x#=
 84, com#, ->Component.y#=
 44, com#, ->Component.width#=
 29, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 minus_Button_clicked, minus_Button, ->Button.lclicked#=
 char plus_Button$(Button.SIZE)
  plus_Button, GUI, guicom#, "+", create_button
 plus_Button, ->Button.component com#=
 134, com#, ->Component.x#=
 54, com#, ->Component.y#=
 45, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 plus_Button_clicked, plus_Button, ->Button.lclicked#=
 char equal_Button$(Button.SIZE)
  equal_Button, GUI, guicom#, "=", create_button
 equal_Button, ->Button.component com#=
 180, com#, ->Component.x#=
 145, com#, ->Component.y#=
 51, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 equal_Button_clicked, equal_Button, ->Button.lclicked#=
 char CLR_Button$(Button.SIZE)
  CLR_Button, GUI, guicom#, "C", create_button
 CLR_Button, ->Button.component com#=
 180, com#, ->Component.x#=
 115, com#, ->Component.y#=
 51, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 CLR_Button_clicked, CLR_Button, ->Button.lclicked#=
 char MR_Button$(Button.SIZE)
  MR_Button, GUI, guicom#, "Mr", create_button
 MR_Button, ->Button.component com#=
 180, com#, ->Component.x#=
 84, com#, ->Component.y#=
 51, com#, ->Component.width#=
 29, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 MR_Button_clicked, MR_Button, ->Button.lclicked#=
 char mem_pButton$(Button.SIZE)
  mem_pButton, GUI, guicom#, "M+", create_button
 mem_pButton, ->Button.component com#=
 180, com#, ->Component.x#=
 54, com#, ->Component.y#=
 51, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 mem_pButton_clicked, mem_pButton, ->Button.lclicked#=
 char inv_Bottun$(Button.SIZE)
  inv_Bottun, GUI, guicom#, "+/-", create_button
 inv_Bottun, ->Button.component com#=
 89, com#, ->Component.x#=
 145, com#, ->Component.y#=
 46, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 inv_Bottun_clicked, inv_Bottun, ->Button.lclicked#=
 char dot_Button$(Button.SIZE)
  dot_Button, GUI, guicom#, ".", create_button
 dot_Button, ->Button.component com#=
 46, com#, ->Component.x#=
 145, com#, ->Component.y#=
 42, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 dot_Button_clicked, dot_Button, ->Button.lclicked#=
 char Button3$(Button.SIZE)
  Button3, GUI, guicom#, "3", create_button
 Button3, ->Button.component com#=
 88, com#, ->Component.x#=
 115, com#, ->Component.y#=
 46, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button3_clicked, Button3, ->Button.lclicked#=
 char Button9$(Button.SIZE)
  Button9, GUI, guicom#, "9", create_button
 Button9, ->Button.component com#=
 88, com#, ->Component.x#=
 54, com#, ->Component.y#=
 45, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button9_clicked, Button9, ->Button.lclicked#=
 char Button8$(Button.SIZE)
  Button8, GUI, guicom#, "8", create_button
 Button8, ->Button.component com#=
 46, com#, ->Component.x#=
 54, com#, ->Component.y#=
 41, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button8_clicked, Button8, ->Button.lclicked#=
 char Button7$(Button.SIZE)
  Button7, GUI, guicom#, "7", create_button
 Button7, ->Button.component com#=
 3, com#, ->Component.x#=
 54, com#, ->Component.y#=
 42, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button7_clicked, Button7, ->Button.lclicked#=
 char Button6$(Button.SIZE)
  Button6, GUI, guicom#, "6", create_button
 Button6, ->Button.component com#=
 88, com#, ->Component.x#=
 84, com#, ->Component.y#=
 46, com#, ->Component.width#=
 29, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button6_clicked, Button6, ->Button.lclicked#=
 char Button5$(Button.SIZE)
  Button5, GUI, guicom#, "5", create_button
 Button5, ->Button.component com#=
 46, com#, ->Component.x#=
 84, com#, ->Component.y#=
 41, com#, ->Component.width#=
 29, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button5_clicked, Button5, ->Button.lclicked#=
 char Button4$(Button.SIZE)
  Button4, GUI, guicom#, "4", create_button
 Button4, ->Button.component com#=
 3, com#, ->Component.x#=
 84, com#, ->Component.y#=
 42, com#, ->Component.width#=
 29, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button4_clicked, Button4, ->Button.lclicked#=
 char Button2$(Button.SIZE)
  Button2, GUI, guicom#, "2", create_button
 Button2, ->Button.component com#=
 46, com#, ->Component.x#=
 115, com#, ->Component.y#=
 41, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button2_clicked, Button2, ->Button.lclicked#=
 char Button1$(Button.SIZE)
  Button1, GUI, guicom#, "1", create_button
 Button1, ->Button.component com#=
 3, com#, ->Component.x#=
 115, com#, ->Component.y#=
 42, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button1_clicked, Button1, ->Button.lclicked#=
 char Button0$(Button.SIZE)
  Button0, GUI, guicom#, "0", create_button
 Button0, ->Button.component com#=
 3, com#, ->Component.x#=
 145, com#, ->Component.y#=
 42, com#, ->Component.width#=
 28, com#, ->Component.height#=
 0, com#, ->Component.foreground#=
 12632256, com#, ->Component.background#=
 Button0_clicked, Button0, ->Button.lclicked#=
 char display$(Label.SIZE)
  display, GUI, guicom#, "", create_label
 display, ->Label.component com#=
 5, com#, ->Component.x#=
 26, com#, ->Component.y#=
 225, com#, ->Component.width#=
 24, com#, ->Component.height#=
 3355443, com#, ->Component.foreground#=
 16777215, com#, ->Component.background#=
 display_created
 GUI_created
 end


_INIT_STATES:
 _SINIT_1385354486
 _SINIT_59151413

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 Start

 end
_1955129074_in:
 GUI, ->Window.component remove_component
 

 end
_690403084_op_in:
 STATE_1385354486#, STATE2_1385354486#=
 op#, op#=
 _1049831450_in
 op#, op#=
 _1204554775_in

 end
_1797474771_num_in:
 STATE_1385354486#, STATE2_1385354486#=
 num#, num#=
 _54349282_in
 num#, num#=
 _16563350_in

 end
_1713807281_start:
 STATE_1385354486#, STATE2_1385354486#=
 _1383430782_in

 end
_1383430782_in:
 if  STATE2_1385354486#<>1533946706 then  end
// 初期設定


 GUI, xcalc, set_window_icon
 0, disp#=
 0, memory#=
 '=', op#=
 paint_disp
 _S8_1385354486

 end
_16563350_in:
 if  STATE2_1385354486#<>844443520 then  end
// 数字の1桁目を入力


 num#, disp#=
 paint_disp
 
 _S9_1385354486

 end
_54349282_in:
 if  STATE2_1385354486#<>366883177 then  end
// 数字を入力する


 disp#, 10, * num#, + disp#=
 paint_disp
 _S9_1385354486

 end
_1049831450_in:
 if  STATE2_1385354486#<>844443520 then  end
// 計算状態に遷移

 _S16_1385354486

 end
_1204554775_in:
 if  STATE2_1385354486#<>366883177 then  end
// 計算状態に遷移



 _S16_1385354486

 end
_841619504_in:
// 計算する



  if op#='I'     then 0, disp#, - disp#= gotoskip1
  if op#='C'    then 0, disp#= gotoskip1
  if op#='P'    then memory#, disp#, + memory#= gotoskip1  
  if op#='M'   then memory#, disp#= 0, memory#= gotoskip1
  if op0#='+' then disp#, reg#, + disp#= gotoskip0
  if op0#='-'   then disp#, reg#,  -  disp#= gotoskip0
  if op0#='*'  then disp#, reg#, *  disp#= gotoskip0
  if op0#='/'   then disp#, reg#, /  disp#=
skip0:
  op#, op0#=
  disp#, reg#=
skip1:
 paint_disp
 _S8_1385354486

 end
_SINIT_1385354486:
 1533946706, STATE_1385354486#=

 end
_S8_1385354486:
 844443520, STATE_1385354486#=

 end
_S9_1385354486:
 366883177, STATE_1385354486#=

 end
_S16_1385354486:
 406098332, STATE_1385354486#=
 _841619504_in

 end
Start:
 STATE_59151413#, STATE2_59151413#=
 in

 end
GUI_created:
 STATE_59151413#, STATE2_59151413#=
 _1713807281_start

 end
GUI_closed:
 STATE_59151413#, STATE2_59151413#=
 _1955129074_in

 end
div_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1795122134_div

 end
mult_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1472622943_mul

 end
minus_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _409048126_minus

 end
plus_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _196672467_plus

 end
equal_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _728583862_equal

 end
CLR_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1513795827_clr

 end
MR_Button_clicked:
 STATE_59151413#, STATE2_59151413#=
 _975010270_mem

 end
mem_pButton_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1588964171_mem_plus

 end
inv_Bottun_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1256260807_inv

 end
dot_Button_clicked:
 STATE_59151413#, STATE2_59151413#=

 end
Button3_clicked:
 STATE_59151413#, STATE2_59151413#=
 _654921991_key3

 end
Button9_clicked:
 STATE_59151413#, STATE2_59151413#=
 _683397181_key9

 end
Button8_clicked:
 STATE_59151413#, STATE2_59151413#=
 _876186865_key8

 end
Button7_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1168451188_key7

 end
Button6_clicked:
 STATE_59151413#, STATE2_59151413#=
 _684312238_key6

 end
Button5_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1585828274_key5

 end
Button4_clicked:
 STATE_59151413#, STATE2_59151413#=
 _648253591_key4

 end
Button2_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1247384753_key2

 end
Button1_clicked:
 STATE_59151413#, STATE2_59151413#=
 _742639586_key1

 end
Button0_clicked:
 STATE_59151413#, STATE2_59151413#=
 _1555794841_key0

 end
display_created:
 STATE_59151413#, STATE2_59151413#=

 end
in:
 if  STATE2_59151413#<>1731700821 then  end
// GUIを作成する
 create_gui

 _SINIT_59151413

 end
_SINIT_59151413:
 1731700821, STATE_59151413#=

 end
_802537427_num_out:
 num#, num#=
 _1797474771_num_in

 end
_1555794841_key0:
 _96392987_Pin11

 end
_742639586_key1:
 _968498753_Pin12

 end
_1247384753_key2:
 _237638271_Pin13

 end
_654921991_key3:
 _1418028783_Pin14

 end
_648253591_key4:
 _661681515_Pin15

 end
_1585828274_key5:
 _1313943506_Pin16

 end
_684312238_key6:
 _280393101_Pin17

 end
_1168451188_key7:
 _1878776682_Pin18

 end
_876186865_key8:
 _1266954451_Pin19

 end
_683397181_key9:
 _208447950_Pin20

 end
_96392987_Pin11:
 0, num#=
 _802537427_num_out

 end
_968498753_Pin12:
 1, num#=
 _802537427_num_out

 end
_237638271_Pin13:
 2, num#=
 _802537427_num_out

 end
_1418028783_Pin14:
 3, num#=
 _802537427_num_out

 end
_661681515_Pin15:
 4, num#=
 _802537427_num_out

 end
_1313943506_Pin16:
 5, num#=
 _802537427_num_out

 end
_280393101_Pin17:
 6, num#=
 _802537427_num_out

 end
_1878776682_Pin18:
 7, num#=
 _802537427_num_out

 end
_1266954451_Pin19:
 8, num#=
 _802537427_num_out

 end
_208447950_Pin20:
 9, num#=
 _802537427_num_out

 end
_1449996739_op_out:
 op#, op#=
 _690403084_op_in

 end
_196672467_plus:
 _818200941_Pin14

 end
_409048126_minus:
 _565856977_Pin13

 end
_1472622943_mul:
 _392940185_Pin15

 end
_1795122134_div:
 _2052938015_Pin16

 end
_728583862_equal:
 _155347015_Pin17

 end
_1256260807_inv:
 _1957476459_Pin10

 end
_1588964171_mem_plus:
 _533615281_Pin12

 end
_975010270_mem:
 _530255787_Pin18

 end
_1513795827_clr:
 _493309417_Pin11

 end
_1957476459_Pin10:
 'I', op#=
 _1449996739_op_out

 end
_493309417_Pin11:
 'C', op#=
 _1449996739_op_out

 end
_533615281_Pin12:
 'P', op#=
 _1449996739_op_out

 end
_565856977_Pin13:
 '-', op#=
 _1449996739_op_out

 end
_818200941_Pin14:
 '+', op#=
 _1449996739_op_out

 end
_392940185_Pin15:
 '*', op#=
 _1449996739_op_out

 end
_2052938015_Pin16:
 '/', op#=
 _1449996739_op_out

 end
_155347015_Pin17:
 '=', op#=
 _1449996739_op_out

 end
_530255787_Pin18:
 'M', op#=
 _1449996739_op_out

 end
