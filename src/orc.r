// oregengo-Rコンパイラ for oreore-OS
// セルフホスト ver 0.03

 const SINGLE_QUOT 39
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
 infile#, outfile#, infile#=  swap outfile#=
 compile_s    // struct / enum構文の処理
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
  if k#=SINGLE_QUOT goto case_single_quot
  if k#<>DBL_QUOT then k#, wfp, putc gotoloop4

  // 文字列があるときの処理
  case_dbl_quot:
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
  
  // 文字定数があるときの処理
  case_single_quot:
    rfp, getc wfp, fprintd
    loop6:
      rfp, getc k#=
      if k#=EOF goto exit4
    if k#<>SINGLE_QUOT goto loop6
  goto loop4
     
 exit4:
 rfp, rclose
 wfp, wclose
 sfp, wclose
 end


// struct / class / enum構文の処理
compile_s:
 char  sbuf$(1024),sname$(512),cname$(512)
 long  mode#,offset#,s#,p#

 infile#,  rfp, ropen
 outfile#, wfp, wopen
 cmp_loop:
  buf,  rfp, finputs k#=
  if k#=EOF goto cmp_end

  // コメントを除去
  buf, "/*", strstr k#=
  if k#<>NULL then NULL, (k)$=
  buf, "//", strstr k#=
  if k#<>NULL then NULL, (k)$=

  // 不要なスペースを除去
  buf, strlen buf, + k#=
  del_space:
   if k#=buf goto cmp_loop
   k#--
  if (k)$=' ' goto del_space
  NULL, (k)$(1)=

  // 空文の場合はファイルからの読み込みに戻る
  if buf$=NULL goto cmp_loop
  
    // 通常文の場合
    mode0:
    if mode#<>0 goto mode1
      buf, s#=
      mode01:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode01

      // struct文が検出された場合
      mode0_struct:
        s#, "struct ", 7, strncmp k#=
        if k#<>0 goto mode0_class
        1, mode#=
        0, offset#=
        s#, 7, + s#=
        mode02:
        if (s)$=' ' then s#++ gotomode02
        s#, sname, strcpy
        " const0", wfp, fprints wfp, fnl
        goto cmp_loop

      // class文が検出された場合
      mode0_class:
        s#, "class ", 6, strncmp k#=
        if k#<>0 goto mode0_enum
        1, mode#=
        0, offset#=
        s#, 6, + s#=
        mode03:
        if (s)$=' ' then s#++ gotomode03
        s#, sname, strcpy
        " const0", wfp, fprints wfp, fnl
        goto cmp_loop

      // enum文が検出された場合
      mode0_enum:
      s#, "enum", strcmp k#=
      if k#<>0 goto mode0_other
      2, mode#=
      0, offset#=
      goto cmp_loop

      // 上記以外の場合
      mode0_other:
         buf, wfp, fprints wfp, fnl
         goto cmp_loop

    // struct/class 文の場合
    mode1:
    if mode#<>1 goto mode2
      buf, s#=
      mode11:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode11

        // field文が検出された場合
        mode1_field:
        s#, "field ", 6, strncmp k#=
        if k#<>0 goto mode1_long 
        s#, 6, + s#=
        mode110:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode110
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".",  wfp, fprints s#, wfp, fprints
        " 0", wfp, fprints wfp, fnl
        goto cmp_loop
        
        // long文が検出された場合
        mode1_long:
        s#, "long ", 5, strncmp k#=
        if k#<>0 goto mode1_int 
        s#, 5, + s#=
        mode12:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode12
        s#, "#", strstr p#=
        if p#<>NULL then NULL, (p)$=
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".",  wfp, fprints s#, wfp, fprints
        " 8", wfp, fprints wfp, fnl
        goto cmp_loop
        
        // int文が検出された場合
        mode1_int:
        s#, "int ", 4, strncmp k#=
        if k#<>0 goto mode1_short 
        s#, 4, + s#=
        mode13:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode13
        s#, "!", strstr p#=
        if p#<>NULL then NULL, (p)$=
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".",  wfp, fprints s#, wfp, fprints
        " 4", wfp, fprints wfp, fnl
        goto cmp_loop
        
        // short文が検出された場合
        mode1_short:
        s#, "short ", 6, strncmp k#=
        if k#<>0 goto mode1_char 
        s#, 6, + s#=
        mode14:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode14
        s#, "%", strstr p#=
        if p#<>NULL then NULL, (p)$=
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".",  wfp, fprints s#, wfp, fprints
        " 2", wfp, fprints wfp, fnl
        goto cmp_loop
        
        // char文が検出された場合
        mode1_char:
        s#, "char ", 5, strncmp k#=
        if k#<>0 goto mode1_end 
        s#, 5, + s#=
        mode15:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode15
        s#, "$", strstr p#=
        if p#<>NULL then NULL, (p)$=
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".",  wfp, fprints s#, wfp, fprints
        " 1", wfp, fprints wfp, fnl
        goto cmp_loop
        
        // end文が検出された場合
        mode1_end:
        s#, "end", strcmp k#=
        if k#<>0 goto mode1_class 
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".SIZE 0",  wfp, fprints  wfp, fnl
        0, mode#=
        goto cmp_loop
        
        // クラスが検出された場合
        mode1_class:
        cname, p#=
        mode16:  // クラス名を読み込む
        if (s)$<>' ' then (s)$, (p)$= s#++ p#++ gotomode16
        NULL, (p)$=
        mode17:  // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode17
        " const_plus ", wfp, fprints  sname, wfp, fprints
        ".", wfp, fprints s#, wfp, fprints
        " ", wfp, fprints cname, wfp, fprints
        ".SIZE",  wfp, fprints wfp, fnl
        goto cmp_loop

    // enum文の場合
    mode2:
    if mode#<>2 goto cmp_loop // 普通はないが、それ以外のモードならループの先頭にジャンプする
      buf, s#=
      mode21:       // 空白を読み飛ばす
        if (s)$=' ' then s#++ gotomode21

        // end文が検出された場合
        mode2_end:
        s#, "end", strcmp k#=
        if k#<>0 goto mode2_other 
        0, mode#=
        goto cmp_loop

        // 上記以外の場合
        mode2_other:
        if (s)$='_'    goto def_enum
        if (s)$>='A' goto def_enum
        goto cmp_loop

        // 列挙子を定義する
        def_enum:
        " const ", wfp, fprints  s#, wfp, fprints
        " ",  wfp, fprints  offset#, wfp, fprintd
        wfp, fnl
        offset#++
        goto cmp_loop

 // コンパイル終了
 cmp_end:
 rfp, rclose
 wfp, wclose
 end


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


// データ領域
 .data

/* データの先頭アドレス */
ref_data:
 data pass1,pass2,pass3,codegen

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


// 実数比較
 data " if \.<>\ then \"
 data " if \1.=\2 goto L\0
   \3
L\0:
"
 data " if \.>=\ then \"
 data " if \1.<\2 goto L\0
   \3
L\0:
"
 data " if \.<=\ then \"
 data " if \1.>\2 goto L\0
   \3
L\0:
"
 data " if \.>\ then \"
 data " if \1.<=\2 goto L\0
 \3
L\0:
"
 data " if \.<\ then \"
 data " if \1.>=\2 goto L\0
 \3
L\0:
"
 data " if \.=\ then \"
 data " if \1.<>\2 goto L\0
 \3
L\0:
"

// 整数比較
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
 data "/\1: = \2/
"
 data " const_plus \ \"
 data "/\1: += \2/
"
 data " const0"
 data "/ = 0/
"



// 実数比較
 data " if \.<>\ goto \"
 data " \1,
 \2,
 .jnz \3
"
 data " if \.>=\ goto \"
 data " \1,
 \2,
 .jge \3
"
 data " if \.<=\ goto \"
 data " \2,
 \1,
 .jge \3
"
 data " if \.>\ goto \"
 data " \2,
  \1,
  .jlt \3
"
 data " if \.<\ goto \"
 data " \1,
 \2,
 .jlt \3
"
 data " if \.=\ goto \"
 data " \1,
 \2,
 .jz \3
"



// 整数比較
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
 jz $+118
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

// 以降は"codegen.r" に続く
