// "edit.r" ラインエディタ

  long  li#,el#,text#,tail#,copy_p#,l#
  long  temp1#,temp2#,temp3#,temp4#
  long  t1#,t2#,t3#,t4#
  char k$,flg$
  char fp$(FILE_SIZE),fname$(16),sbuf$(256),buf$(4096)

main:
  "backup.txt", fname, strcpy
  if argc#>1 then argv#(1), fname, strcpy
  1,   li#= el#=
  buf, text#= tail#= copy_p#=
  0,   buf$=

/* コマンド（１文字）入力 */
get_command:
   if text#=tail# then "[END OF TEXT]", prints gotoskip1
     text#, prints 
   skip1:
   nl
   0, flg$=
   1, l#=

/* コマンドタイプ０：数字（パラメータ）*/
get_command0:
   getchar k$=
   if k$<'0' goto get_command1
   if k$>'9' goto get_command1
   if flg$=0 then 0, l#=
   l#, 10, * k$, + '0', - l#=
   1,  flg$=
   goto get_command0

/* コマンドタイプ１：テキストが空の時は無効 */
get_command1:
   if tail#=buf goto get_command2
   if k$='s'    then text#, copy_p#=           gotoget_command
   if k$=CR   then jump_foward               gotoget_command
   if k$='j'    then jump                      gotoget_command
   if k$='.'    then el#, li#= tail#, text#=   gotoget_command
   if k$=8      goto jump_reverse
   if k$='d'    then delete_line            gotoget_command
   if k$='c'    goto copy
   if k$='m'    goto modefy
   if k$=';'    goto serch
   if k$=':'    goto serch_next
   if k$='w'    goto write_file

/* コマンドタイプ２：常に有効 */
get_command2:
   if k$='i'    goto insert
   if k$='a'    then 1, l#= jump_foward gotoinsert
   if k$='r'    goto read_file
   if k$='q'    goto quit
   if k$='z'    goto help
   if k$=12     then cls  1, l#= jump
   if k$='?'    then li#, printd nl
   goto get_command

/* 後ろにジャンプ */
jump_foward:
  li#, l#, + l#=
  goto loop1

/* 指定行にジャンプ */
jump:
  buf, text#=
  1,   li#=
  loop1:
    if  li#>=l# then end
    loop2:
      if text#>=tail# then end
      text#++
    if (text)$<>0   goto loop2
    text#, 1, + text#=
    li#++
  goto loop1

/* 前にジャンプ */
jump_reverse:
  li#,   l#, - l#=
  loop3:
    if li#<=l# goto get_command
    text#--
    loop4:
      if text#<=buf then 1, li#= buf, text#= gotoget_command
      text#--
    if (text)$<>0 goto loop4
    text#++
    li#--
  goto loop3

/* 指定行削除 */
delete_line:
  if l#=0 then end
  text#, temp1#= temp2#=
  li#,   temp3#=
  jump_foward
  if copy_p#<temp1# goto loop5
  if copy_p#<text#  then buf, copy_p#= gotoloop5
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

/* 指定行コピー */
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
  goto get_command

/* 現在の行を修正 */
modefy:
  "STRING1? ", prints sbuf, inputs
  text#, sbuf, strstr  temp1#=
  if temp1#=NULL then "STRING NOT FOUND", prints nl gotoget_command
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
  "STRING2? ", prints temp4#, inputs
  temp2#, temp4#, strcat
  1, l#= delete_line insert1
  1, l#= gotojump_reverse

/* 文字列のサーチ */
serch:
  "STRING? ", prints sbuf, inputs
serch1:
  text#, sbuf, strstr temp1#=
  text#, sbuf, strstr temp1#=
  if temp1#<>NULL goto get_command

/* 続けて文字列サーチ  */
serch_next:
  1, l#= jump_foward
  if text#<tail# goto serch1
  goto get_command

/* ファイルに出力 */
write_file:
  "FILE NAME? ", prints sbuf, inputs
  if sbuf$<>0 then sbuf, fname, strcpy
  text#, temp1#=
  li#,   temp2#=
  fname, fp, wopen t1#=
  if t1#=ERROR then "can not open ", prints fname, prints nl gotoquit
  buf, text#=
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
  goto get_command

/* ファイルから入力 */
read_file:
  "FILE NAME? ", prints sbuf, inputs
  if sbuf$<>0 then sbuf, fname, strcpy
  fname, fp, ropen t1#=
  if t1#=ERROR then "can not open ", prints fname, prints nl gotoget_command
  buf, text#=
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
  goto get_command

/* テキスト挿入 */
insert:
  "> ", prints sbuf, inputs
  sbuf, ".", strcmp temp1#=
  if sbuf$=NULL then " ", sbuf, strcpy
  if temp1#=0 goto get_command
  insert1
  goto insert

/* １行挿入 */
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

/* 終わり */
quit:
  "**** END ****", prints nl
  end

/* ヘルプ */
help:
  cls
  "(r) read (w) write (q) quit", prints nl
  "(a) append (i) insert (.) tail", prints nl
  "(j) jump (BS) up (Enter) down", prints nl
  "(d) delete (m) modefy (?) line no", prints nl
 nl nl nl
  goto get_command

