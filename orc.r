// oregengo-Rコンパイラ for Kous-OS
// セルフホスト ver 0.02

 const MAX_PASS 3
 count i#,j#,k#
 char  asmfile$(128),cmd$(128)
 char  rfp$(FILE_SIZE),wfp$(FILE_SIZE),sfp$(FILE_SIZE)
 long   infile#,outfile#,strfile#,varfile#,t#

main:
 if argc#=1 goto abort
 "compile:", prints nl
 "asm.s",  asmfile, strcpy
 "__tmp1", infile#=
 "__tmp2", outfile#=
 "__str",  strfile#=
 "__var",  varfile#=

 // 入力ファイルの結合
 infile#, wfp, wopen
 for i#=2 to argc#
   argv-8#(i#), k#=
   k#, cat_file j#=
   if j#=ERROR then wfp, wclose infile#, delete gotoabort
 next i#
 wfp, wclose

 // コンパイル処理
 str_procsr   // 文字列の処理
 infile#, k#= outfile#, infile#= varfile#, outfile#= k#, varfile#=
 0, compile   // 宣言文の処理
 outfile#, varfile#, outfile#= swap varfile#=
 for i#=1 to MAX_PASS
  i#, compile // 実行文の処理
  infile#, outfile#, infile#=  swap outfile#=
 next i#

 // 出力ファイルを結合する
 asmfile, wfp, wopen
 infile#,   cat_file
 strfile#,  cat_file
 varfile#,  cat_file
 wfp, wclose

// tempファイルを消去
 infile#,   delete
 outfile#, delete
 strfile#,  delete
 varfile#, delete
 end

// 異常終了
abort:
 " command input error", prints nl
 end


//　ファイル結合サブルーチン
cat_file:
 rfp, ropen t#=
 if t#=ERROR then ERROR, end
 lop1:
  rfp, getc t#=
  if t#=EOF goto ext1
  t#, wfp, putc
  goto lop1
 ext1:
 rfp, rclose
 NULL, end


// マクロ処理
compile:
 const LEN_ARG 32
 char  buf$(1024),arg$(1024)
 long   pass#,line#,sou#,obj#,ref#,arg_p#

 pass#=
 infile#,  rfp, ropen
 outfile#, wfp, wopen
 1, line#=
 cmple_loop:
  buf,  rfp, finputs k#=
  if k#=EOF goto cmple_end

  // コメントを除去
  buf, "/*", strstr k#=
  if k#<>NULL then NULL, (k)$=
  buf, "//", strstr k#=
  if k#<>NULL then NULL, (k)$=

  // 不要なスペースを除去
  buf, strlen buf, + k#=
  del_space:
   if k#=buf goto cmple_next
   k#--
  if (k)$=SPACE goto del_space
  NULL, (k)$(1)=

  // 文字列arg(0)に現在の行を代入
  line#, dec arg+0, strcpy

  // パターンの比較
  ref_data#(pass#), restore
  read_ref: fault_cmp:
   read ref#=
   if ref#=NULL goto cmple_err
   buf, sou#=
   read obj#=
   arg+LEN_ARG, arg_p#=

   // 1文字ごとに比較する
   cmp_a_char:
    if (ref)$<>NULL goto case_SPACE
    if (sou)$<>NULL goto fault_cmp
    goto success_cmp

    // スペース
    case_SPACE:
     if (ref)$<>SPACE goto case_YEN
     if (sou)$<>SPACE goto fault_cmp
     loop1:
      sou#++
     if (sou)$=SPACE goto loop1
     if (sou)$=NULL  goto fault_cmp
     ref#++
     goto cmp_a_char

    // 引数
    case_YEN:
     if (ref)$<>'\'   goto otherwise 
     ref#++
     arg_p#, k#=

     // 引数を分離する
     ext_arg:
      if (sou)$=NULL then if (ref)$<>NULL goto fault_cmp
      if (sou)$=(ref)$ then  NULL, (k)$=  gotostore_arg
      (sou)$, (k)$=
      sou#++
      k#++
      goto ext_arg

    // 分離した引数を格納する
    store_arg:
     if (arg_p)$=NULL goto fault_cmp
     arg_p#, LEN_ARG, + arg_p#=
     goto cmp_a_char

    // その他の文字
    otherwise:
     if (sou)$<>(ref)$ goto fault_cmp
     sou#++
     ref#++
     goto cmp_a_char

    // パターンの比較が成功したとき
    success_cmp: // オブジェクトを展開する
     buf, j#=
     loop2:
      if (obj)$<>'\' goto skip2
       (obj)$(1), '0', - LEN_ARG, * arg, + k#=
       obj#, 2, + obj#=
       loop3:
        if (k)$=NULL goto loop2
        (k)$, (j)$=
        k#++
        j#++
       goto loop3
      skip2:
      if (obj)$=NULL then  NULL, (j)$=  buf, wfp, fprints gotocmple_next
      (obj)$, (j)$=
      obj#, 1, + obj#=
      j#++
     goto loop2

  // error処理
  cmple_err:

  // 次の行に移る
  cmple_next:
  line#++
  goto cmple_loop

 // コンパイル終了
 cmple_end:
 rfp, rclose
 wfp, wclose
 end


// 文字列処理
str_procsr:
 const DBL_QUOT 34
 infile#,   rfp, ropen
 outfile#,  wfp, wopen
 strfile#,  sfp, wopen
 1, j#=
 loop4:
  rfp, getc k#=
  if k#=EOF goto exit4
  if k#<>DBL_QUOT then k#, wfp, putc gotoloop4
  'S', wfp, putc j#,  wfp, fprintd
  'S', sfp, putc  j#,  sfp, fprintd
  ':', sfp, putc sfp, fnl
  loop5:
   rfp, getc k#=
   if k#=EOF goto exit4
   if k#=DBL_QUOT goto exit5
   " byte ", sfp, fprints k#, sfp, fprintd sfp, fnl
   goto loop5
  exit5:
  " byte NULL", sfp, fprints sfp, fnl
  j#++
  goto loop4
 exit4:
 rfp, rclose
 wfp, wclose
 sfp, wclose
 end

/* データの先頭アドレス */
ref_data:
 data pass1,pass2,pass3,pass4

/* パス１定義データ （宣言文の定義）*/
pass1:
  data " long \#(\),\#(\),\#(\),\#(\)"
  data " align 8
\1: memory \2*8
\3: memory \4*8
\5: memory \6*8
\7: memory \8*8
"
 data " long \#(\),\#(\),\#(\)"
 data " align 8
\1: memory \2*8
\3: memory \4*8
\5: memory \6*8
"
  data  " long \#(\),\#(\)"
  data  " align 8
\1: memory \2*8
\3: memory \4*8
"
  data  " long \#(\)"
  data  " align 8
\1: memory \2*8
"
 data " long \#,\#,\#,\#,\#,\#,\#,\#"
 data " align 8
\1: memory 8
\2: memory 8
\3: memory 8
\4: memory 8
\5: memory 8
\6: memory 8
\7: memory 8
\8: memory 8
"
 data " long \#,\#,\#,\#,\#,\#,\#"
 data " align 8
\1: memory 8
\2: memory 8
\3: memory 8
\4: memory 8
\5: memory 8
\6: memory 8
\7: memory 8
"
 data " long \#,\#,\#,\#,\#,\#"
 data " align 8
\1: memory 8
\2: memory 8
\3: memory 8
\4: memory 8
\5: memory 8
\6: memory 8
"
  data " long \#,\#,\#,\#,\#"
  data " align 8
\1: memory 8
\2: memory 8
\3: memory 8
\4: memory 8
\5: memory 8
"
 data " long \#,\#,\#,\#"
 data " align 8
\1: memory 8
\2: memory 8
\3: memory 8
\4: memory 8
"
 data " long \#,\#,\#"
 data " align 8
\1: memory 8
\2: memory 8
\3: memory 8
  "
 data " long \#,\#"
 data " align 8
\1: memory 8
\2: memory 8
"
 data " long \#"
 data " align 8
\1: memory 8
"
 data " int \!(\),\!(\),\!(\),\!(\)"
 data " align 8
\1: memory \2*4
\3: memory \4*4
\5: memory \6*4
\7: memory \8*4
"
 data " int \!(\),\!(\),\!(\)"
 data " align 8
\1: memory \2*4
\3: memory \4*4
\5: memory \6*4
"
 data " int \!(\),\!(\)"
 data " align 8
\1: memory \2*4
\3: memory \4*4
"
 data " int \!(\)"
 data " align 8
\1: memory \2*4
"
 data " int \!,\!,\!,\!,\!,\!,\!,\!"
 data " align 8
\1: memory 4
\2: memory 4
\3: memory 4
\4: memory 4
\5: memory 4
\6: memory 4
\7: memory 4
\8: memory 4
"
 data " int \!,\!,\!,\!,\!,\!,\!"
 data " align 8
\1: memory 4
\2: memory 4
\3: memory 4
\4: memory 4
\5: memory 4
\6: memory 4
\7: memory 4
"
 data " int \!,\!,\!,\!,\!,\!"
 data " align 8
\1: memory 4
\2: memory 4
\3: memory 4
\4: memory 4
\5: memory 4
\6: memory 4
"
 data " int \!,\!,\!,\!,\!"
 data " align 8
\1: memory 4
\2: memory 4
\3: memory 4
\4: memory 4
\5: memory 4
"
 data " int \!,\!,\!,\!"
 data " align 8
\1: memory 4
\2: memory 4
\3: memory 4
\4: memory 4
"
 data " int \!,\!,\!"
 data " align 8
\1: memory 4
\2: memory 4
\3: memory 4
"
 data " int \!,\!"
 data " align 8
\1: memory 4
\2: memory 4
"
 data " int \!"
 data " align 8
\1: memory 4
"
 data " short \%(\),\%(\),\%(\),\%(\)"
 data " align 8
\1: memory \2*2
\3: memory \4*2
\5: memory \6*2
\7: memory \8*2
"
 data " short \%(\),\%(\),\%(\)"
 data " align 8
\1: memory \2*2
\3: memory \4*2
\5: memory \6*2
"
 data " short \%(\),\%(\)"
 data " align 8
\1: memory \2*2
\3: memory \4*2
"
 data " short \%(\)"
 data " align 8
\1: memory \2*2
"
 data " short \%,\%,\%,\%,\%,\%,\%,\%"
 data " align 8
\1: memory 2
\2: memory 2
\3: memory 2
\4: memory 2
\5: memory 2
\6: memory 2
\7: memory 2
\8: memory 2
"
 data " short \%,\%,\%,\%,\%,\%,\%"
 data " align 8
\1: memory 2
\2: memory 2
\3: memory 2
\4: memory 2
\5: memory 2
\6: memory 2
\7: memory 2
"
 data " short \%,\%,\%,\%,\%,\%"
 data " align 8
\1: memory 2
\2: memory 2
\3: memory 2
\4: memory 2
\5: memory 2
\6: memory 2
"
 data " short \%,\%,\%,\%,\%"
 data " align 8
\1: memory 2
\2: memory 2
\3: memory 2
\4: memory 2
\5: memory 2
"
 data " short \%,\%,\%,\%"
 data " align 8
\1: memory 2
\2: memory 2
\3: memory 2
\4: memory 2
"
 data " short \%,\%,\%"
 data " align 8
\1: memory 2
\2: memory 2
\3: memory 2
"
 data " short \%,\%"
 data " align 8
\1: memory 2
\2: memory 2
"
 data " short \%"
 data " align 8
\1: memory 2
"
 data " char \$(\),\$(\),\$(\),\$(\)"
 data " align 8
\1: memory \2
\3: memory \4
\5: memory \6
\7: memory \8
"
 data " char \$(\),\$(\),\$(\)"
 data " align 8
\1: memory \2
\3: memory \4
\5: memory \6
"
 data " char \$(\),\$(\)"
 data " align 8
\1: memory \2
\3: memory \4
"
 data " char \$(\)"
 data " align 8
\1: memory \2
"
 data " char \$,\$,\$,\$,\$,\$,\$,\$"
 data " align 8
\1: memory 1
\2: memory 1
\3: memory 1
\4: memory 1
\5: memory 1
\6: memory 1
\7: memory 1
\8: memory 1
"
 data " char \$,\$,\$,\$,\$,\$,\$"
 data " align 8
\1: memory 1
\2: memory 1
\3: memory 1
\4: memory 1
\5: memory 1
\6: memory 1
\7: memory 1
"
 data " char \$,\$,\$,\$,\$,\$"
 data " align 8
\1: memory 1
\2: memory 1
\3: memory 1
\4: memory 1
\5: memory 1
\6: memory 1
"
 data " char \$,\$,\$,\$,\$"
 data " align 8
\1: memory 1
\2: memory 1
\3: memory 1
\4: memory 1
\5: memory 1
"
 data " char \$,\$,\$,\$"
 data " align 8
\1: memory 1
\2: memory 1
\3: memory 1
\4: memory 1
"
 data " char \$,\$,\$"
 data " align 8
\1: memory 1
\2: memory 1
\3: memory 1
"
 data " char \$,\$"
 data " align 8
\1: memory 1
\2: memory 1
"
 data " char \$"
 data " align 8
\1: memory 1
"
 data " count \#,\#,\#,\#,\#,\#,\#,\#"
 data " align 8
\1: memory 32
\2: memory 32
\3: memory 32
\4: memory 32
\5: memory 32
\6: memory 32
\7: memory 32
\8: memory 32
"
 data " count \#,\#,\#,\#,\#,\#,\#"
 data " align 8
\1: memory 32
\2: memory 32
\3: memory 32
\4: memory 32
\5: memory 32
\6: memory 32
\7: memory 32
"
 data " count \#,\#,\#,\#,\#,\#"
 data " align 8
\1: memory 32
\2: memory 32
\3: memory 32
\4: memory 32
\5: memory 32
\6: memory 32
"
 data " count \#,\#,\#,\#,\#"
 data " align 8
\1: memory 32
\2: memory 32
\3: memory 32
\4: memory 32
\5: memory 32
"
 data " count \#,\#,\#,\#"
 data " align 8
\1: memory 32
\2: memory 32
\3: memory 32
\4: memory 32
"
 data " count \#,\#,\#"
 data " align 8
\1: memory 32
\2: memory 32
\3: memory 32
"
 data " count \#,\#"
 data " align 8
\1: memory 32
\2: memory 32
"
 data " count \#"
 data " align 8
\1: memory 32
"
 data NULL

/* パス2定義データ （if-then文の定義）*/
pass2:
 data ".data"
 data "/ align 8/
"
 data " .data"
 data "/ align 8/
" 
 data " if \<>\ then \"
 data " if \1=\2 goto L\0
   \3
L\0:
"
 data " if \>=\ then \"
 data " if \1<\2 goto L\0
   \3
L\0:
"
 data " if \<=\ then \"
 data " if \1>\2 goto L\0
   \3
L\0:
"
 data " if \>\ then \"
 data " if \1<=\2 goto L\0
 \3
L\0:
"
 data " if \<\ then \"
 data " if \1>=\2 goto L\0
 \3
L\0:
"
 data " if \=\ then \"
 data " if \1<>\2 goto L\0
 \3
L\0:
"

 data "\: \"
 data "\1:
 \2
"
 data "\"
 data "\1
"
 data NULL

/* パス3定義データ （実行文の定義）*/
pass3:
 data "/\/"
 data "/\1/
"
 data "\:"
 data "\1:
"

 data " long \"
 data ""
 data " int \"
 data ""
 data " short \"
 data ""
 data " char \"
 data ""
 data " count \"
 data ""
 data " const \ \"
 data "/\1: equ \2/
"
 data " if \<>\ goto \"
 data " \1,
 \2,
 jnz \3
"
 data " if \>=\ goto \"
 data " \1,
 \2,
 jge \3
"
 data " if \<=\ goto \"
 data " \2,
 \1,
 jge \3
"
 data " if \>\ goto \"
 data " \2,
  \1,
  jlt \3
"
 data " if \<\ goto \"
 data " \1,
 \2,
 jlt \3
"
 data " if \=\ goto \"
 data " \1,
 \2,
 jz \3
"
 data " goto \"
 data " jmp \1
"
// for-next (cpu依存する部分あり) ---> ジャンプアドレス($+xxx)
 data " for \#=\ to \ step \"
 data " \2,
 \1#=
 \3,
 \1+8#=
 \4,
 \1+16#=
 11(rip),
 \1+24#=
"
 data " for \#=\ to \"
 data " \2,
 \1#=
 \3,
 \1+8#=
 1,
 \1+16#=
 11(rip),
 \1+24#=
"
 data " next \#"
 data " \1#,
 \1+8#,
 jz $+73
 \1#,
 \1+16#,
 +
 \1#=
 \1+24#,
 jmp@
"
 data " data \,\,\,\,\,\,\,\"
 data " data\1
 data\2
 data\3
 data\4
 data\5
 data\6
 data\7
 data\8
"
 data " data \,\,\,\,\,\,\"
 data " data\1
 data\2
 data\3
 data\4
 data\5
 data\6
 data\7
"
 data " data \,\,\,\,\,\"
 data " data\1
 data\2
 data\3
 data\4
 data\5
 data\6
"
 data " data \,\,\,\,\"
 data " data\1
 data\2
 data\3
 data\4
 data\5
"
 data " data \,\,\,\"
 data " data\1
 data\2
 data\3
 data\4
"
 data " data \,\,\"
 data " data\1
 data\2
 data\3
"
 data " data \,\"
 data " data\1
 data\2
"
 data " data \"
 data " data\1
"
 data " \ \ \ \ \ \ \ \"
 data " \1
 \2
 \3
 \4
 \5
 \6
 \7
 \8
"
 data " \ \ \ \ \ \ \"
 data " \1
  \2
  \3
  \4
  \5
  \6
  \7
"
 data " \ \ \ \ \ \"
 data " \1
 \2
 \3
 \4
 \5
 \6
"
 data " \ \ \ \ \"
 data " \1
  \2
  \3
  \4
  \5
"
 data " \ \ \ \"
 data " \1
  \2
  \3
  \4
"
 data " \ \ \"
 data " \1
  \2
  \3
 "
 data " \ \"
 data " \1
  \2
"
 data " \"
 data " \1
"
 data NULL

/* パス4定義データ （コード生成）*/
pass4:
 data "/\/"
 data "\1
"
 data " \:"
 data "\1:
"
 data "\:"
 data "\1:
"
 data " jge \"
 data " rsi-rdi
 jge \1
"
 data " jlt \"
 data " rsi-rdi
 jlt \1
"
 data " jz \"
 data " rsi-rdi
 jz \1
"
 data " jnz \"
 data " rsi-rdi
 jnz \1
"
 data " jmp \"
 data " jmp \1
"
 data " goto\"
 data " jmp \1
"
 data " +"
 data " rdi+=rsi
"
 data " -"
 data " exg rdi,rsi
 rdi-=rsi
"
 data " *"
 data " rax=rdi
 mul rsi
 rdi=rax
"
 data " /"
 data " rdx^=rdx
 rax=rsi
 div rdi
 rdi=rax
"
 data " neg"
 data " neg rdi
"
 data " not"
 data " not rdi
"
 data " mod"
 data " rdx^=rdx
 rax=si
 div rdi
 rdi=rdx
"
 data " swap"
 data " exg rdi,rsi
"
 data " push"
 data " rdx=rsi
 rsi=rdi
"
 data " pop"
 data " rdi=rsi
 rsi=rdx
"
 data " umul"
 data " rax=rdi
 umul rsi
 rdi=rax
"
 data " udiv"
 data " rdx^=rdx
 rax=rsi
 udiv rdi
 rdi=rax
"
 data " and"
 data " rdi&=rsi
"
 data " or"
 data " rdi|=rsi
"
 data " xor"
 data " rdi^=rsi
"
 data " getchar$,"
 data " call getchar
"
 data " inkey$,"
 data " call inkey
"
 data " \(rip),"
 data " rdx=rsi
 rsi=rdi
 rdi=&\1(rip)
"
 data " end"
 data " rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 rax=r15
 rax=-8(rax)
 jmp (rax)
"
 data " return"
 data " rax=__stack_p
 r15=(rax)
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 r15++
 (rax)=r15
 rax=r15
 rax=-8(rax)
 jmp (rax)
"
 data " jmp@"
 data " jmp (rdi)
"
 data " call@"
 data " call (rdi)
"
 data " (\)#(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
"
 data " \#(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 rdi=(rcx)
"
 data " (\)!(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 eax=(rcx)
 ext eax
 rdi=rax
"
 data " \!(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 eax=(rcx)
 ext eax
 rdi=rax
"
 data " (\)%(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 ax=(rcx)
 ext ax
 rdi=rax
"
 data " \%(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rax+=rax
 rcx=&\1
 rcx+=rax
 ax=(rcx)
 ext ax
 rdi=rax
"
 data " (\)$(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
"
 data " \$(\#),"
 data " rdx=rsi
 rsi=rdi
 rcx=&\2
 rax=(rcx)
 rcx=&\1
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
"
 data " (\)#(\#)="
 data " rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
"
 data " \#(\#)="
 data " rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 (rcx)=rdi
"
 data " (\)!(\#)="
 data " rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=eax
"
 data " \!(\#)="
 data " rcx=&\2
 rax=(rcx)
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 rax=rdi
 (rcx)=eax
"
 data " (\)%(\#)="
 data " rcx=&\2
 rax=(rcx)
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=ax
"
 data " \%(\#)="
 data " rcx=&\2
 rax=(rcx)
 rax+=rax
 rcx=&\1
 rcx+=rax
 rax=rdi
 (rcx)=ax
"
 data " (\)$(\#)="
 data " rcx=&\2
 rax=(rcx)
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=al
"
 data " \$(\#)="
 data " rcx=&\2
 rax=(rcx)
 rcx=&\1
 rcx+=rax
 rax=rdi
 (rcx)=al
"
 data " (\)#(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rdi=(rcx)
"
 data " \#(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 rdi=(rcx)
"
 data " (\)!(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 eax=(rcx)
 ext eax
 rdi=rax
"
 data " \!(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 eax=(rcx)
 ext eax
 rdi=rax
"
 data " (\)%(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 ax=(rcx)
 ext ax
 rdi=rax
"
 data " \%(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rax+=rax
 rcx=&\1
 rcx+=rax
 ax=(rcx)
 ext ax
 rdi=rax
"
 data " (\)$(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
"
 data " \$(\),"
 data " rdx=rsi
 rsi=rdi
 rax=\2
 rcx=&\1
 rcx+=rax
 al=(rcx)
 ext al
 rdi=rax
"
 data " (\)#(\)="
 data " rax=\2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 (rcx)=rdi
"
 data " \#(\)="
 data " rax=\2
 rax+=rax
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 (rcx)=rdi
"
 data " (\)!(\)="
 data " rax=\2
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=eax
"
 data " \!(\)="
 data " rax=\2
 rax+=rax
 rax+=rax
 rcx=&\1
 rcx+=rax
 rax=rdi
 (rcx)=eax
"
 data " (\)%(\)="
 data " rax=\2
 rax+=rax
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=ax
"
 data " \%(\)="
 data " rax=\2
 rax+=rax
 rcx=&\1
 rcx+=rax
 rax=rdi
 (rcx)=ax
"
 data " (\)$(\)="
 data " rax=\2
 rcx=&\1
 rcx=(rcx)
 rcx+=rax
 rax=rdi
 (rcx)=al
"
 data " \$(\)="
 data " rax=\2
 rcx=&\1
 rcx+=rax
 rax=rdi
 (rcx)=al
"
 data " \#++"
 data " rcx=&\1
 rax=(rcx)
 rax++
 (rcx)=rax
"
 data " \#--"
 data " rcx=&\1
 rax=(rcx)
 rax--
 (rcx)=rax
"
 data " \!++"
 data " rcx=&\1
 eax=(rcx)
 eax++
 (rcx)=eax
"
 data " \!--"
 data " rcx=&\1
 eax=(rcx)
 eax--
 (rcx)=eax
"
 data " \%++"
 data " rcx=&\1
 ax=(rcx)
 ax++
 (rcx)=ax
"
 data " \%--"
 data " rcx=&\1
 ax=(rcx)
 ax--
 (rcx)=ax
"
 data " \$++"
 data " rcx=&\1
 al=(rcx)
 al++
 (rcx)=al
"
 data " \$--"
 data " rcx=&\1
 al=(rcx)
 al--
 (rcx)=al
"
 data ""
 data " (\)#,
 rdx=rsi
 rsi=rdi
 rax=&\1
 rax=(rax)
 rdi=(rax)
"
 data " (\)#="
 data " rax=&\1
 rax=(rax)
 (rax)=rdi
"
 data " \#,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 rdi=(rax)
"
 data " \#="
 data " rax=&\1
 (rax)=rdi
"
 data " (\)!,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 rax=(rax)
 eax=(rax)
 ext eax
 rdi=rax
"
 data " (\)!="
 data " rax=&\1
 rax=(rax)
 rcx=rdi
 (rax)=ecx
"
 data " \!,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 eax=(rax)
 ext eax
 rdi=rax
"
 data " \!="
 data " rax=&\1
 rcx=rdi
 (rax)=ecx
"
 data " (\)%,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 rax=(rax)
 ax=(rax)
 ext ax
 rdi=rax
"
 data " (\)%="
 data " rax=&\1
 rax=(rax)
 rcx=rdi
 (rax)=cx
"
 data " \%,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 ax=(rax)
 ext ax
 rdi=rax
"
 data " \%="
 data " rax=&\1
 rcx=rdi
 (rax)=cx
"
 data " (\)$,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 rax=(rax)
 al=(rax)
 ext al
 rdi=rax
"
 data " (\)$="
 data " rax=&\1
 rax=(rax)
 rcx=rdi
 (rax)=cl
"
 data " \$,"
 data " rdx=rsi
 rsi=rdi
 rax=&\1
 al=(rax)
 ext al
 rdi=rax
"
 data " \$="
 data " rax=&\1
 rcx=rdi
 (rax)=cl
"
 data " \,"
 data " rdx=rsi
 rsi=rdi
 rdi=\1
"
 data " data\"
 data " long \1
"
 data " @\"
 data " rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 rax=r15
 r15=$+23
 (rax)=r15
 rax=\1
 jmp (rax)
"
 data " \"
 data " rax=__stack_p
 r15=(rax)
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 r15--
 (rax)=r15
 rax=r15
 r15=$+18
 (rax)=r15
 jmp \1
"
 data NULL
