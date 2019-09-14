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

 long STATE_539858037#,STATE2_539858037#
// 主要変数 
 long disp#,reg#,tt#
 long memory#
 long op#,op0#
 long num#,digit#
 char buf$(64)

// 数値を表示
paint_disp:
 disp#, xstr buf, strcpy
 buf, display, ->Label.text#=
 display, ->Label.component repaint
 end

 long STATE_678564897#,STATE2_678564897#
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
 _SINIT_539858037
 _SINIT_678564897

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 Start

 end
_524577335_in:
 GUI, ->Window.component remove_component
 

 end
_1463130725_op_in:
 STATE_539858037#, STATE2_539858037#=
 _1302355178_in
 op#, op#=
 _187936463_in
 op#, op#=
 _1390200442_in

 end
_517700348_num_in:
 STATE_539858037#, STATE2_539858037#=
 num#, num#=
 _339177144_in
 num#, num#=
 _513697760_in
 num#, num#=
 _1393136219_in

 end
_2120447765_start:
 STATE_539858037#, STATE2_539858037#=
 _1158907066_in

 end
_1180310225_dot_in:
 STATE_539858037#, STATE2_539858037#=
 _2046536377_in

 end
_1158907066_in:
 if  STATE2_539858037#<>1542706759 then  end
// 初期設定


 GUI, xcalc, set_window_icon
 ^0.0, disp#=
 ^0.0, memory#=
 '=', op#=
 paint_disp
 _S8_539858037

 end
_1393136219_in:
 if  STATE2_539858037#<>1948131631 then  end
// 数字の1桁目を入力


 num#, (double) disp#=
 paint_disp
 
 _S9_539858037

 end
_513697760_in:
 if  STATE2_539858037#<>1343546231 then  end
// 数字を入力する


 num#, (double) tt#=
 disp#, ^10.0, .* tt#, .+ disp#=
 paint_disp
 _S9_539858037

 end
_187936463_in:
 if  STATE2_539858037#<>1948131631 then  end
// 計算状態に遷移

 _S16_539858037

 end
_1390200442_in:
 if  STATE2_539858037#<>1343546231 then  end
// 計算状態に遷移



 _S16_539858037

 end
_530363027_in:
// 計算する



  if op#='I'     then ^0.0, disp#, .- disp#= gotoskip1
  if op#='C'    then ^0.0, disp#= gotoskip1
  if op#='P'    then memory#, disp#, .+ memory#= gotoskip1  
  if op#='M'   then memory#, disp#= ^0.0, memory#= gotoskip1
  if op0#='+' then disp#, reg#, .+ disp#= gotoskip0
  if op0#='-'   then disp#, reg#,  .-  disp#= gotoskip0
  if op0#='*'  then disp#, reg#, .*  disp#= gotoskip0
  if op0#='/'   then disp#, reg#, ./  disp#=
skip0:
  op#, op0#=
  disp#, reg#=
skip1:
 paint_disp
 _S8_539858037

 end
_2046536377_in:
 if  STATE2_539858037#<>1343546231 then  end
//小数入力状態に
// 遷移する


 ^1.0, digit#=
  
 _S20_539858037

 end
_339177144_in:
 if  STATE2_539858037#<>1519918793 then  end
//小数を入力



 digit#, ^10.0, ./ digit#=
 num#, (double) 
 digit#, .* disp#, .+ disp#=
 paint_disp
 _S20_539858037

 end
_1302355178_in:
 if  STATE2_539858037#<>1519918793 then  end
// 計算状態に遷移
 _S16_539858037

 end
_SINIT_539858037:
 1542706759, STATE_539858037#=

 end
_S8_539858037:
 1948131631, STATE_539858037#=

 end
_S9_539858037:
 1343546231, STATE_539858037#=

 end
_S16_539858037:
 1594514412, STATE_539858037#=
 _530363027_in

 end
_S20_539858037:
 1519918793, STATE_539858037#=

 end
Start:
 STATE_678564897#, STATE2_678564897#=
 in

 end
GUI_created:
 STATE_678564897#, STATE2_678564897#=
 _2120447765_start

 end
GUI_closed:
 STATE_678564897#, STATE2_678564897#=
 _524577335_in

 end
div_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _559793528_div

 end
mult_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _726507635_mul

 end
minus_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _361061805_minus

 end
plus_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1382870507_plus

 end
equal_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _699177208_equal

 end
CLR_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _457570680_clr

 end
MR_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1712713392_mem

 end
mem_pButton_clicked:
 STATE_678564897#, STATE2_678564897#=
 _538805305_mem_plus

 end
inv_Bottun_clicked:
 STATE_678564897#, STATE2_678564897#=
 _524996002_inv

 end
dot_Button_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1180310225_dot_in

 end
Button3_clicked:
 STATE_678564897#, STATE2_678564897#=
 _728616825_key3

 end
Button9_clicked:
 STATE_678564897#, STATE2_678564897#=
 _525823317_key9

 end
Button8_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1690974824_key8

 end
Button7_clicked:
 STATE_678564897#, STATE2_678564897#=
 _553885847_key7

 end
Button6_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1691395529_key6

 end
Button5_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1078546883_key5

 end
Button4_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1969564376_key4

 end
Button2_clicked:
 STATE_678564897#, STATE2_678564897#=
 _1239297019_key2

 end
Button1_clicked:
 STATE_678564897#, STATE2_678564897#=
 _683749860_key1

 end
Button0_clicked:
 STATE_678564897#, STATE2_678564897#=
 _579644022_key0

 end
display_created:
 STATE_678564897#, STATE2_678564897#=

 end
in:
 if  STATE2_678564897#<>1384129430 then  end
// GUIを作成する
 create_gui

 _SINIT_678564897

 end
_SINIT_678564897:
 1384129430, STATE_678564897#=

 end
_1693953780_num_out:
 num#, num#=
 _517700348_num_in

 end
_579644022_key0:
 _1215566169_Pin11

 end
_683749860_key1:
 _1160570496_Pin12

 end
_1239297019_key2:
 _2110202136_Pin13

 end
_728616825_key3:
 _772284837_Pin14

 end
_1969564376_key4:
 _1184760804_Pin15

 end
_1078546883_key5:
 _1688532305_Pin16

 end
_1691395529_key6:
 _540006204_Pin17

 end
_553885847_key7:
 _1329979285_Pin18

 end
_1690974824_key8:
 _2037544122_Pin19

 end
_525823317_key9:
 _977213624_Pin20

 end
_1215566169_Pin11:
 0, num#=
 _1693953780_num_out

 end
_1160570496_Pin12:
 1, num#=
 _1693953780_num_out

 end
_2110202136_Pin13:
 2, num#=
 _1693953780_num_out

 end
_772284837_Pin14:
 3, num#=
 _1693953780_num_out

 end
_1184760804_Pin15:
 4, num#=
 _1693953780_num_out

 end
_1688532305_Pin16:
 5, num#=
 _1693953780_num_out

 end
_540006204_Pin17:
 6, num#=
 _1693953780_num_out

 end
_1329979285_Pin18:
 7, num#=
 _1693953780_num_out

 end
_2037544122_Pin19:
 8, num#=
 _1693953780_num_out

 end
_977213624_Pin20:
 9, num#=
 _1693953780_num_out

 end
_1020422411_op_out:
 op#, op#=
 _1463130725_op_in

 end
_1382870507_plus:
 _1976745784_Pin14

 end
_361061805_minus:
 _180769492_Pin13

 end
_726507635_mul:
 _151107083_Pin15

 end
_559793528_div:
 _1615118494_Pin16

 end
_699177208_equal:
 _1479311024_Pin17

 end
_524996002_inv:
 _1871847219_Pin10

 end
_538805305_mem_plus:
 _1962130430_Pin12

 end
_1712713392_mem:
 _954675698_Pin18

 end
_457570680_clr:
 _757735585_Pin11

 end
_1871847219_Pin10:
 'I', op#=
 _1020422411_op_out

 end
_757735585_Pin11:
 'C', op#=
 _1020422411_op_out

 end
_1962130430_Pin12:
 'P', op#=
 _1020422411_op_out

 end
_180769492_Pin13:
 '-', op#=
 _1020422411_op_out

 end
_1976745784_Pin14:
 '+', op#=
 _1020422411_op_out

 end
_151107083_Pin15:
 '*', op#=
 _1020422411_op_out

 end
_1615118494_Pin16:
 '/', op#=
 _1020422411_op_out

 end
_1479311024_Pin17:
 '=', op#=
 _1020422411_op_out

 end
_954675698_Pin18:
 'M', op#=
 _1020422411_op_out

 end
