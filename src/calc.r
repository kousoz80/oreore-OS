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

 long STATE_1905073751#,STATE2_1905073751#
// 主要変数 
 long disp#,reg#
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

 long STATE_120943799#,STATE2_120943799#
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
 _SINIT_1905073751
 _SINIT_120943799

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 Start

 end
_422757906_in:
 GUI, ->Window.component remove_component
 

 end
_1855985040_op_in:
 STATE_1905073751#, STATE2_1905073751#=
 _1177799984_in
 op#, op#=
 _1852985660_in
 op#, op#=
 _28979513_in

 end
_408888500_num_in:
 STATE_1905073751#, STATE2_1905073751#=
 num#, num#=
 _1773005119_in
 num#, num#=
 _408742851_in
 num#, num#=
 _674626992_in

 end
_1175712752_start:
 STATE_1905073751#, STATE2_1905073751#=
 _676921317_in

 end
_1656511012_dot_in:
 STATE_1905073751#, STATE2_1905073751#=
 _374342970_in

 end
_676921317_in:
 if  STATE2_1905073751#<>984911739 then  end
// 初期設定


 GUI, xcalc, set_window_icon
 ^0.0, disp#=
 ^0.0, memory#=
 '=', op#=
 paint_disp
 _S8_1905073751

 end
_674626992_in:
 if  STATE2_1905073751#<>1020689667 then  end
// 数字の1桁目を入力


 num#, (double) disp#=
 paint_disp
 
 _S9_1905073751

 end
_408742851_in:
 if  STATE2_1905073751#<>708429430 then  end
// 数字を入力する


 num#, (double) num#=
 disp#, ^10.0, .* num#, .+ disp#=
 paint_disp
 _S9_1905073751

 end
_1852985660_in:
 if  STATE2_1905073751#<>1020689667 then  end
// 計算状態に遷移

 _S16_1905073751

 end
_28979513_in:
 if  STATE2_1905073751#<>708429430 then  end
// 計算状態に遷移



 _S16_1905073751

 end
_1924912204_in:
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
 _S8_1905073751

 end
_374342970_in:
 if  STATE2_1905073751#<>708429430 then  end
//小数入力状態に
// 遷移する


 ^1.0, digit#=
  
 _S20_1905073751

 end
_1773005119_in:
 if  STATE2_1905073751#<>1827295799 then  end
//小数を入力



 digit#, ^10.0, ./ digit#=
 num#, (double) num#=
 num#, digit#, .* disp#, .+ disp#=
 paint_disp
 _S20_1905073751

 end
_1177799984_in:
 if  STATE2_1905073751#<>1827295799 then  end
// 計算状態に遷移
 _S16_1905073751

 end
_SINIT_1905073751:
 984911739, STATE_1905073751#=

 end
_S8_1905073751:
 1020689667, STATE_1905073751#=

 end
_S9_1905073751:
 708429430, STATE_1905073751#=

 end
_S16_1905073751:
 1675297996, STATE_1905073751#=
 _1924912204_in

 end
_S20_1905073751:
 1827295799, STATE_1905073751#=

 end
Start:
 STATE_120943799#, STATE2_120943799#=
 in

 end
GUI_created:
 STATE_120943799#, STATE2_120943799#=
 _1175712752_start

 end
GUI_closed:
 STATE_120943799#, STATE2_120943799#=
 _422757906_in

 end
div_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1770553272_div

 end
mult_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _231134312_mul

 end
minus_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1507760223_minus

 end
plus_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _574696958_plus

 end
equal_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1456723744_equal

 end
CLR_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1047426468_clr

 end
MR_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _2089551869_mem

 end
mem_pButton_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1196616080_mem_plus

 end
inv_Bottun_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1784913221_inv

 end
dot_Button_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1656511012_dot_in

 end
Button3_clicked:
 STATE_120943799#, STATE2_120943799#=
 _861590684_key3

 end
Button9_clicked:
 STATE_120943799#, STATE2_120943799#=
 _2119451654_key9

 end
Button8_clicked:
 STATE_120943799#, STATE2_120943799#=
 _272024265_key8

 end
Button7_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1907175167_key7

 end
Button6_clicked:
 STATE_120943799#, STATE2_120943799#=
 _347531874_key6

 end
Button5_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1218377862_key5

 end
Button4_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1855474646_key4

 end
Button2_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1985632812_key2

 end
Button1_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1436310399_key1

 end
Button0_clicked:
 STATE_120943799#, STATE2_120943799#=
 _1794757506_key0

 end
display_created:
 STATE_120943799#, STATE2_120943799#=

 end
in:
 if  STATE2_120943799#<>721471913 then  end
// GUIを作成する
 create_gui

 _SINIT_120943799

 end
_SINIT_120943799:
 721471913, STATE_120943799#=

 end
_1825345703_num_out:
 num#, num#=
 _408888500_num_in

 end
_1794757506_key0:
 _356863252_Pin11

 end
_1436310399_key1:
 _771999252_Pin12

 end
_1985632812_key2:
 _46112687_Pin13

 end
_861590684_key3:
 _794776528_Pin14

 end
_1855474646_key4:
 _281904834_Pin15

 end
_1218377862_key5:
 _550425001_Pin16

 end
_347531874_key6:
 _1584558328_Pin17

 end
_1907175167_key7:
 _199653685_Pin18

 end
_272024265_key8:
 _2002847005_Pin19

 end
_2119451654_key9:
 _561299905_Pin20

 end
_356863252_Pin11:
 0, num#=
 _1825345703_num_out

 end
_771999252_Pin12:
 1, num#=
 _1825345703_num_out

 end
_46112687_Pin13:
 2, num#=
 _1825345703_num_out

 end
_794776528_Pin14:
 3, num#=
 _1825345703_num_out

 end
_281904834_Pin15:
 4, num#=
 _1825345703_num_out

 end
_550425001_Pin16:
 5, num#=
 _1825345703_num_out

 end
_1584558328_Pin17:
 6, num#=
 _1825345703_num_out

 end
_199653685_Pin18:
 7, num#=
 _1825345703_num_out

 end
_2002847005_Pin19:
 8, num#=
 _1825345703_num_out

 end
_561299905_Pin20:
 9, num#=
 _1825345703_num_out

 end
_1052412777_op_out:
 op#, op#=
 _1855985040_op_in

 end
_574696958_plus:
 _1860054445_Pin14

 end
_1507760223_minus:
 _723250618_Pin13

 end
_231134312_mul:
 _1103082873_Pin15

 end
_1770553272_div:
 _1765560768_Pin16

 end
_1456723744_equal:
 _490604384_Pin17

 end
_1784913221_inv:
 _737009057_Pin10

 end
_1196616080_mem_plus:
 _609324873_Pin12

 end
_2089551869_mem:
 _34791983_Pin18

 end
_1047426468_clr:
 _747666388_Pin11

 end
_737009057_Pin10:
 'I', op#=
 _1052412777_op_out

 end
_747666388_Pin11:
 'C', op#=
 _1052412777_op_out

 end
_609324873_Pin12:
 'P', op#=
 _1052412777_op_out

 end
_723250618_Pin13:
 '-', op#=
 _1052412777_op_out

 end
_1860054445_Pin14:
 '+', op#=
 _1052412777_op_out

 end
_1103082873_Pin15:
 '*', op#=
 _1052412777_op_out

 end
_1765560768_Pin16:
 '/', op#=
 _1052412777_op_out

 end
_490604384_Pin17:
 '=', op#=
 _1052412777_op_out

 end
_34791983_Pin18:
 'M', op#=
 _1052412777_op_out

 end
