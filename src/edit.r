// "edit.r" スクリーンエディタ

  const LINES 24
  const COLS  64

  long   buf#,li#,li0#,el#,l#
  long   text#,text0#,tail#,copy_p#
  long   temp1#,temp2#,temp3#,temp4#
  long   t1#,t2#,t3#,t4#
  long   kk#,xx#,yy#,y0#
  long   xxtext#,xxli#
  long   k#,k2#
  count i#,j#
  char   flg$
  char   fp$(FILE_SIZE),fname$(16),sbuf$(256)
  short disp_buf%(2048)

main:
  "notitle.txt", fname, strcpy
  1,   li#= li0#= el#=
  1000000, malloc buf#=
  buf#, text#= tail#= copy_p#=
  0,   xx#= yy#= y0#= (buf)$=

  if argc#>1 then argv#(1), fname, strcpy 0, sbuf$= read_file1

// コマンド（１文字）入力
get_command:
  display
   0, flg$=
   1, l#=

// コマンドタイプ０：数字（パラメータ）
get_command0:
   k#, k2#=
   inkey k#=
   if k#=0     goto get_command0
   if k#=k2# goto get_command0

   if k+2$<'0' goto get_command1
   if k+2$>'9' goto get_command1
   if flg$=0 then 0, l#=
   l#, 10, * k+2$, + '0', - l#=
   1,  flg$=
   goto get_command0

// コマンドタイプ１：テキストが空の時は無効
get_command1:
   if tail#=buf# goto get_command2
   if k+2$='s'    then text#, copy_p#= 
   if k$=2      then xjump_foward  // 下矢印キー
   if k+2$='j'     then xjump            
   if k+2$='.'     then xjump_end
   if k$=1      then xjump_reverse  // 上矢印キー
   if k+2$='d'    then delete_line 
   if k+2$='c'    then copy
   if k+2$='m'   then modefy
   if k+2$=';'     then text#, xxtext#= li#, xxli#= serch
   if k+2$=':'     then text#, xxtext#= li#, xxli#= serch_next
   if k+2$='w'    then write_file

// コマンドタイプ２：常に有効
get_command2:
   if k+2$='i'    then li#, xxli#= insert
   if k+2$='a'   then li#, xxli#= 1, l#= jump_foward nl insert
   if k+2$='r'   then nl erase_line  read_file
   if k+2$='q'   goto quit
   if k+2$='?'   then help
   goto get_command

// 指定行にジャンプ
xjump:
  jump
  li#, li0#=
  text#, text0#=
  end

// 後方にジャンプ
xjump_foward:
  jump_foward
  li#, li0#, - LINES-1, - xx#=
  if xx#>0 then xx#, l#= jump0_foward
  end

// 前方にジャンプ
xjump_reverse:
  jump_reverse
  if li#<li0# then li#, li0#= text#, text0#=
  end

// 最終行にジャンプ
xjump_end:
 el#, li#=  li0#=
 tail#, text#= text0#=
 LINES/2, l#= jump0_reverse
 end

// 指定行削除
delete_line:
  if l#=0 then end
  text#, temp1#= temp2#=
  li#,   temp3#=
  jump_foward
  if copy_p#<temp1# goto loop5
  if copy_p#<text#  then buf#, copy_p#= gotoloop5
  copy_p#, text#, - temp1#, + copy_p#=
  loop5:
    if text#>=tail# goto exit5
    (text)$, (temp1)$=
    temp1#++
    text#++
    goto loop5
  exit5:
  0,      (temp1)$=
  temp1#, tail#=
  temp3#, li#, - el#, + el#=
  temp3#, li#=
  temp2#, text#=
  end

// 指定行コピー
copy:
  text#, temp1#=
  l#,    temp2#=
  li#,   temp3#=
  loop6:
  if temp2#<=0      goto exit6
  if temp1#>=tail#  goto exit6
    copy_p#, sbuf,  strcpy
    copy_p#, text#= 1, l#= jump_foward text#, copy_p#=
    temp1#,  text#= insert1 text#, temp1#=
    temp2#--
    goto loop6
  exit6:
  temp3#, li#=
  end

// 現在の行を修正
modefy:
  0, LINES-1, locate erase_line 
  "STRING1? ", prints sbuf, inputs
  text#, sbuf, strstr  temp1#=
  if temp1#=NULL then 0, LINES-1, locate erase_line "STRING NOT FOUND", prints getchar end
  sbuf, strlen temp1#, + temp2#=
  text#, temp3#=
  sbuf,  temp4#=
  loop7:
    if temp3#>=temp1# goto exit7
    (temp3)$, (temp4)$=
    temp3#++
    temp4#++
    goto loop7
  exit7:
  0, LINES-1, locate erase_line 
  "STRING2? ", prints temp4#, inputs
  temp2#, temp4#, strcat
  1, l#= delete_line insert1
  1, l#= gotojump_reverse

// 文字列のサーチ
serch:
  0, LINES-1, locate erase_line 
  "STRING? ", prints sbuf, inputs
serch1:
  text#, sbuf, strstr temp1#=
  if temp1#<>NULL then   li#, li0#=  text#, text0#= end

// 続けて文字列サーチ
serch_next:
  1, l#= jump_foward
  if text#<tail# goto serch1
  xxtext#, text#=
  xxli#, li#=
  end

// ファイルに出力
write_file:
  0, LINES-1, locate erase_line 
  "FILE NAME? ", prints sbuf, inputs
  if sbuf$<>0 then sbuf, fname, strcpy
  text#, temp1#=
  li#,   temp2#=
  fname, fp, wopen t1#=
  if t1#=ERROR then "can not open ", prints fname, prints getchar end
  buf#, text#=
  1,  li#=
  loop8:
    if text#>=tail# goto exit8
    text#, fp, fprints fp, fnl
    1, l#= jump_foward
    goto loop8
  exit8:
  temp1#, text#=
  temp2#, li#=
  fp, wclose
  end

// ファイルから入力
read_file:
  0, LINES-1, locate erase_line 
  "FILE NAME? ", prints sbuf, inputs
read_file1:
  if sbuf$<>0 then sbuf, fname, strcpy
  fname, fp, ropen t1#=
  if t1#=ERROR goto read_error
  buf#, text#=
  1,   li#=
  loop9:
    text#, fp, finputs temp1#=
    if temp1#=EOF goto exit9
    if (text)$=0 then " ", text#, strcpy
    text#, strlen text#, + 1, + text#=
    li#++
    goto loop9
  exit9:
  fp, rclose
  0, (text)$=
  li#,   el#=
  text#, tail#=
  buf#, text#= text0#=
  1, li#= li0#=
  end

// 読み込みエラー
read_error:
  0, LINES-1, locate erase_line
  "can not open ", prints fname, prints getchar
   end


// テキスト挿入
insert:
  erase_line
  "> ", prints sbuf, inputs
  sbuf, ".", strcmp temp1#=
  if sbuf$=NULL then " ", sbuf, strcpy
  if temp1#=0 then xxli#, l#= xjump end
  insert1
  goto insert

// １行挿入
insert1:
  li#++
  el#++
  sbuf, strlen 1, + t1#=
  text#, t2#=  + text#=
  t1#, tail#, t3#=  + tail#= t4#=
  if copy_p#>=t2# then copy_p#, t1#, + copy_p#=
  loop10:
    (t3)$, (t4)$=
    t3#--
    t4#--
  if t3#>=t2# goto loop10
  sbuf, t2#, strcpy
  end

// 終わり
quit:
 buf#, free
  cls
  end

// ヘルプ
help:
  cls
  "(r) read (w) write (q) quit", prints nl
  "(a) append (i) insert (.) tail", prints nl
  "(j) jump (BS) up (Enter) down", prints nl
  "(d) delete (m) modefy (?) line no", prints nl
 getchar
 end
 

// スクリーン表示
display:
   long tx0#,ds#
   text0#, tx0#=
   disp_buf, ds#=
   1, i#=
   1, j#=
display1:
   if  tx0#>=tail# goto display4
   if (tx0)$=NULL then tx0#++ gotodisplay2
   (tx0)$, (ds)%=
   tx0#++
   ds#, 2, + ds#=
   j#++
   if j#<=COLS goto display1
   goto display3
display2:
   ' ', (ds)%=
   ds#, 2, + ds#=
   j#++
   if j#<=COLS goto display2
display3:
   CR, (ds)%=
   ds#, 2, + ds#=
   LF, (ds)%=
   ds#, 2, + ds#=
   1, j#=
   i#++
   if i#<=LINES goto display1
   goto set_locate

display4:
   '~', (ds)%=
   ds#, 2, + ds#=
   j#++
display5:
   ' ', (ds)%=
   ds#, 2, + ds#=
   j#++
   if j#<=COLS goto display5
display6:
   CR, (ds)%=
   ds#, 2, + ds#=
   LF, (ds)%=
   ds#, 2, + ds#=
   1, j#=
   i#++
   if i#<=LINES goto display4

set_locate:
   0, cursor
   NULL, (ds)%=
   0, 0, locate
   disp_buf, wputs
   0, LINES, locate erase_line li#, printd
   li#, li0#, - kk#=
   0, kk#, locate
   1, cursor
  end

// 指定行にジャンプ
jump_foward:
   li#, l#, + l#=
   goto jump_foward1

// 後ろにジャンプ
jump:
  buf#, text#=
  1, li#=
  jump_foward1:
    if li#>=l# then end
    jump_foward2:
      if text#>=tail# then el#, li#= tail#, text#= end
      text#++
    if (text)$<>NULL goto jump_foward2
    text#++
    li#++
  goto jump_foward1

// 前にジャンプ
jump_reverse:
  li#,   l#, - l#=
  jump_reverse1:
    if li#<=l# then end
    text#--
    jump_reverse2:
      if text#<=buf# then 1, li#= buf#, text#= end
      text#--
    if (text)$<>NULL goto jump_reverse2
    text#++
    li#--
  goto jump_reverse1

// 後ろにジャンプ
jump0_foward:
  li0#, l#, + l#=
  goto jump01

// 指定行にジャンプ
jump0:
  buf#, text0#=
  1,   li0#=
  jump01:
    if  li0#>=l# then end
    jump02:
      if text0#>=tail# then end
      text0#++
    if (text0)$<>NULL   goto jump02
    text0#++
    li0#++
  goto jump01

// 前にジャンプ
jump0_reverse:
  li0#,   l#, - l#=
  jump0_reverse1:
    if li0#<=l# then end
    text0#--
    jump0_reverse2:
      if text0#<=buf# then 1, li#= buf#, text#= end
      text0#--
    if (text0)$<>NULL goto jump0_reverse2
    text0#++
    li0#--
  goto jump0_reverse1

// 一行画面消去
erase_line:
  count nn#
  13, putch
  for nn#=1 to COLS
    ' ', putch
  next nn#
  13, putch
  end
