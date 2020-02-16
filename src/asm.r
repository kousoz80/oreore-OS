// asm X64アセンブラ
main:
 const IMAGE_BASE 22
 const IMAGE_SIZE  52
 const PROG_ADDR 42
 char    buf$(256),xbuf$(256),infile$(FILE_SIZE),outfile$(FILE_SIZE)
 long    in_fname#,out_fname#,start_adrs#,blist#,prev_loc#
 count  i#,j#
 long    cmnt1#,cmnt2#,pc#,ofset#
 long    image_size#

 // ファイル名・オプション設定
 NULL,  in_fname#= out_fname#=
 0x4a8000, start_adrs#=
 0, blist#=
 if argc#<2 then " command input error", prints nl end
 for i#=2 to argc#
   argv-8#(i#), buf, strcpy
   buf, xbuf, strcpy

   // リストオプションの設定
   NULL, buf+5$=
   buf, "-list", strcmp j#=
   if j#=0 then  1, blist#= gotoset_fname1

   // スタートアドレスの設定
   NULL, buf+4$=
   buf, "-p0x", strcmp j#=
   if j#=0 then  xbuf+4, 16, atoi start_adrs#= gotoset_fname1

   // ファイルネームの設定
   if in_fname#=NULL then argv-8#(i#), in_fname#= gotoset_fname1
   argv-8#(i#), out_fname#= 
   set_fname1:
 next i#

 if in_fname#=NULL then " command input error", prints nl end
 if out_fname#=NULL then "a.efi", out_fname#=

 // 各パラメータを読み込む
 paramater, restore
 read cmnt1#= read cmnt2#= read pc#= read ofset#=
 symbols,   restore
 0, symbl_p#=
 loop_init:
  read i#=
  if i#=NULL goto exit_init
  read j#=  read symbl_type$=
  i#, j#, def_symbl
  goto loop_init
 exit_init:

 // pass1: ラベルの定義
 1, pass#= 0, line#=
 start_adrs#, location#=
 in_fname#, infile,  ropen j#=
 if j#=ERROR then "file not found", prints nl end
 loop_pass1:
  buf, infile, finputs j#=
  if j#=EOF goto exit_pass1
  buf, xbuf, strcpy
  asm_1line
  if (lbl)$=NULL goto loop_pass1
   lbl#, lbl_serch
   if ex$=NULL  then LABEL, symbl_type$= lbl#, address#, def_symbl gotoloop_pass1
    line#, printd " mulsymbol: ", prints xbuf, prints nl
  goto loop_pass1
 exit_pass1:
 infile, rclose

 // ヘッダにプログラム情報を書き込む
 start_adrs#, 0xffffffffff000000, and i#=
 start_adrs#, 0xffffff, and j#=
 i#, header#(IMAGE_BASE)=
 j#, header!(PROG_ADDR)=
 location#, start_adrs#, - image_size#= i#=
 image_size#, 4096, / 4096, * image_size#=
 if image_size#<i# then image_size#, 4096, + image_size#=
 image_size#, header!(IMAGE_SIZE)=
 
 // pass2: コードの生成
 2, pass#= 0, line#=
 start_adrs#, location#=
 in_fname#,   infile,   ropen
 out_fname#, outfile, wopen

 // ヘッダを出力
 for i#=1 to HEADER_SIZE
   header-1$(i#),  outfile, putc
 next i#

 loop_pass2:
  buf, infile, finputs j#=
  if j#=EOF goto exit_pass2
  buf, xbuf, strcpy
  asm_1line j#=
  if j#<>ERROR goto no_error
    line#, printd " error: ", prints xbuf, prints nl
  no_error:

  // 命令タイプごとの処理
  case_NORMAL:
     if ins_type#<>NORMAL goto case_MEMORY
     if wordlen#<1 goto case_MEMORY
     for i#=1 to wordlen#
       ins-1$(i#),  outfile, putc
     next i#
     // リスト出力モード
     if blist#=0 goto case_MEMORY
     address#, hex prints ":", prints
     for i#=1 to wordlen#
       ins-1$(i#),  hex prints " ", prints
     next i#
     for i#=wordlen# to MAX_WORD
       "   ", prints
     next i#
     xbuf, prints nl

  case_MEMORY:
     if ins_type#<>MEMORY goto case_ALIGN
     location#, prev_loc#, - j#=
     if j#<1 goto memory1
       for i#=1 to j#
         0,  outfile, putc
       next i#
     memory1:
     // リスト出力モード
     if blist#=0 goto case_ALIGN
     address#, hex prints ": alloc ", prints
     j#, printd " bytes.            ", prints 
     xbuf, prints nl

  case_ALIGN:
     if ins_type#<>ALIGN goto default
     location#, prev_loc#, - j#=
     if j#<1 goto align1
       for i#=1 to j#
         0,  outfile, putc
       next i#
     align1:
     // リスト出力モード
     if blist#=0 goto default
     address#, hex prints ": skip ", prints
     j#, printd " bytes.", prints nl 

  default:
  goto loop_pass2
 exit_pass2:
 infile,  rclose
 outfile, wclose
 end


// 1行アセンブル
asm_1line:
 const NORMAL  0
 const ORG         1
 const EQU         2
 const MEMORY  3
 const ALIGN      4
 const EQU_PP   5
 const LABEL      0
 const MAX_WORD 64
 const END      -1

 count k#
 char  ins$(MAX_WORD),field$(MAX_WORD),arg$(256)
 long  location#,ins_type#,wordlen#,address#,line#,pass#
 long  lbl#,stt#,ref#,sou#,start_adr#,end_adr#,last_equ#

 line#, 1, + line#=
 location#, address#=
  0, wordlen#=  
 -1, ins_type#=

// コメントを除去する 
 buf, cmnt1, strstr k#=
 if k#<>NULL then NULL, (k)$=
 buf, cmnt2, strstr k#=
 if k#<>NULL then NULL, (k)$=

// 不要なスペースを除去する
 buf, strlen buf, + k#=
 del_space:
  if k#=buf goto normal_end
  k#, 1, - k#=
 if (k)$=SPACE goto del_space
 NULL, (k)$(1)=

// ラベルを分離する
ext_label:
 buf, lbl#= stt#=
 loop1:
  if  (stt)$=':'   goto exit1
  if  (stt)$=SPACE goto exit1
  if  (stt)$=NULL  goto normal_end
  stt#, 1, + stt#=
  goto loop1
 exit1:
 NULL, (stt)$=

// ステートメントを分離する
ext_statement:
 stt#, 1, + stt#=
 if  (stt)$=SPACE goto ext_statement
 if  (stt)$=NULL  goto normal_end

// 命令定義データを読み込む
 def_ins, restore
 read_ref:
  read ref#=  // 命令パターンを読み込む
  if  ref#=NULL goto error_end  // 読み込むデータが無ければエラー
  read ins_type#= read wordlen#=
  stt#, sou#=

 // 命令コードを読み込む
  0, k#=
  read_ins:
   if k#>=wordlen# goto clear_field
   read ins$(k#)= k#, 1, + k#=
  goto read_ins

 // ビットフィールドのクリア
  clear_field:
   for k#=0 to MAX_WORD
    0, field$(k#)=
   next k#
   0, d_bit_adr#=

  // パターンの比較
  cmp_a_char: // 1文字ごとに比較する
   if (ref)$<>NULL goto case_SPACE
   if (sou)$<>NULL goto fault_cmp
   goto success_cmp

   // スペース
   case_SPACE:
    if (ref)$<>SPACE goto case_YEN
    if (sou)$<>SPACE goto fault_cmp
    loop2:
     sou#, 1, + sou#=
     if (sou)$=SPACE goto loop2
     if (sou)$=NULL  goto fault_cmp
     ref#, 1, + ref#=
     goto cmp_a_char

   // \xxyy : 引数が存在する xx:タイプﾟ yy:ビットフィールドの幅
   case_YEN:
    long arg_type#

    if (ref)$<>'\' goto otherwise 
    (ref)$(1),     '0', - 10, *
    (ref)$(2), + '0', - arg_type#= // 引数のタイプ
    (ref)$(3),     '0', - 10, *
    (ref)$(4), + '0', - field_size#= // ビットフィールドの幅
    ref#, 5, + ref#=
    arg, k#=

    // 引数を分離する
    ext_arg:
     if (sou)$=NULL then if (ref)$<>NULL goto fault_cmp
     if (sou)$=(ref)$ then NULL, (k)$= gotoeval_arg
     (sou)$, (k)$=
     sou#, 1, + sou#=
     k#,   1, + k#=
     goto ext_arg

    // 引数を評価する
    eval_arg:
     long value#

     if arg$=NULL   goto fault_cmp
     if arg_type#<8 goto normal_form

     // アセンブラ固有のシンボル(レジスタ等)として評価する
     implied_symbol:
      arg, arg_type#, symbl_serch value#=
      if ex$=NULL goto fault_cmp
      goto set_field

      // 通常の数式として評価する
     normal_form:
      const A_QUOT 39
      char  op1$,op2$
      long  num#,p#,v#

      '+', op1$=
      arg, num#= p#=
      0, value#=
      if arg_type#<4 then 0, value#= gotoserch_op
      if arg_type#<6 then ofset#, location#, - wordlen#, - value#=

      // 演算子を探す
      serch_op:
       (p)$, op2$= p#++
       if op2$='+'    goto number2
       if op2$='-'     goto number2
       if op2$='*'     goto number2
       if op2$='/'      goto number2
       if op2$=NULL goto number1
       goto serch_op

      number1:
       if (num)$=NULL goto fault_cmp

      number2:
       NULL, (p)$(-1)=  0, v#=
       if (num)$=NULL goto serch_next

       // 先頭が "\'" 
       if (num)$=A_QUOT then (num)$(1), v#= gotoserch_next

       // 先頭が "^" 
       if (num)$='^' then num#, 1, + xval v#= gotoserch_next

       // 先頭が"0"
       if (num)$<>'0' goto decimal
       if (num)$(1)='b' then num#, 2, + 2,   atoi v#= gotoserch_next // 2進数
       if (num)$(1)='x' then num#, 2, + 16, atoi v#= gotoserch_next // 16進数
       num#, 1, +  8,  atoi v#= gotoserch_next // 8進数

       // 10進数
       decimal:
        if (num)$<'0' goto label
        if (num)$>'9' goto label
        num#, 10, atoi v#=
        goto serch_next
       
       // ラベル
       label:
        num#, pc#, strcmp k#=
         if k#=0 then location#, v#= gotoserch_next
        num#, lbl_serch v#=
         if ex$=NULL then if pass#=2 goto fault_cmp

      serch_next:
       if op1$='+' then value#, v#, + value#=
       if op1$='-'  then value#, v#,  - value#=
       if op1$='*'  then value#, v#,  * value#=
       if op1$='/'   then value#, v#,  / value#=
       if op2$<>NULL then op2$, op1$= p#, num#= gotoserch_op

    // 引数の値をビット列に変換する
    set_field:
     0, s_bit_adr#=
     value, field, bit_copy  k#=
     if k#=ERROR   then if pass#=2 goto fault_cmp
     goto cmp_a_char

   // その他の文字
   otherwise:
    if (ref)$<>(sou)$ goto fault_cmp
    ref#, 1, + ref#=
    sou#, 1, + sou#=
    goto cmp_a_char

  // パターン比較が失敗したときの処理
  fault_cmp:
   read k#=
   if k#<>END goto fault_cmp
   goto read_ref

  // パターン比較が成功したときの処理
  success_cmp:
   0, s_bit_adr#=
   create_ins:  // 命令コードを展開
    read field_size#=
    if field_size#=END goto normal_end
    read d_bit_adr#=
    field, ins, bit_copy
    goto create_ins

 // エラー発生
 error_end:
  ERROR,
  goto exit_asm

 // 正常終了
 normal_end:
  NULL,

 exit_asm:
  k#=

  if ins_type#=EQU       then value#, address#= last_equ#=
  if ins_type#=EQU_PP then last_equ#, address#= value#, last_equ#, + last_equ#=
  if ins_type#=ORG       then value#, location#= address#=

  if  ins_type#<>NORMAL goto not_NORMAL
    location#, prev_loc#= address#=
    location#, wordlen#, + location#=
  not_NORMAL:

  if  ins_type#<>MEMORY goto not_MEMORY
    location#, prev_loc#= address#=
    location#, value#, + location#=
  not_MEMORY:

  if  ins_type#<>ALIGN goto not_ALIGN
    location#, prev_loc#=
    location#, value#, / value#, * location#=
    if location#<prev_loc# then location#, value#, + location#=
    location#, address#=
  not_ALIGN:

  k#, end

// ビット列をコピーする
bit_copy:
 count x#,y#,z#
 long field_size#,s_bit_adr#,d_bit_adr#,s#,d#

 d#= swap s#=
 if field_size#<=0 then NULL, end
  for x#=1 to field_size#
   s_bit_adr#, 8, / y#=
   s_bit_adr#, 8, mod power2 (s)$(y#), and z#=
   d_bit_adr#, 8, / y#=
   if z#<>0 then d_bit_adr#, 8, mod power2 (d)$(y#), xor (d)$(y#)=
   s_bit_adr#, 1, + s_bit_adr#=
   d_bit_adr#, 1, + d_bit_adr#=
  next x#
  field_size#, 1, -   power2 y#=
  arg_type#,  1, and z#=
  if z#=0 then 0, y#, - x#=       y#,   1, - y#=
  if z#=1 then 0,       x#=    2, y#, * 1, - y#=
  if (s)#<x# then ERROR, end
  if (s)#>y# then ERROR, end
  NULL, end

// 2のべき乗を求める
power2:
/ rax=0xff/
/ rdi&=rax/
/ rax=1/
loop_pwr2:
/ rdi&rdi/
/ jz exit_pwr2/
/ shl rax/
/ rdi--/
/ jmp loop_pwr2/
exit_pwr2:
/ rdi=rax/
 end

// シンボルを定義する
 const LEN_SYMBOL 256
 const TYPE       0
 const VALUE      1
 const NAME       9
 const LIMIT      255

 char symbl_type$,ex$
 long  symbl_name#,symbl_p#
 char symbol$(1024000)

def_symbl:
 z#= swap x#=
 symbl_p#,    symbol+NAME, + x#, swap strcpy
 symbl_type$, symbol+TYPE$(symbl_p#)=
 z#,          symbol+VALUE#(symbl_p#)=
 NULL,        symbol+LIMIT$(symbl_p#)=
 symbl_p#,    LEN_SYMBOL, + symbl_p#=
 end

// ラベルの検索
lbl_serch:
 LABEL,

// シンボルの検索
symbl_serch:
 symbl_type$= swap symbl_name#=
 symbl_p#, LEN_SYMBOL, - y#=
 for x#=0 to y# step LEN_SYMBOL
  if symbol+TYPE$(x#)<>symbl_type$  goto not_match
   symbol+NAME,  x#, + symbl_name#, strcmp z#=
   if z#=0 then 1, ex$= symbol+VALUE#(x#), end
  not_match:
 next x#
 NULL, ex$=
 end

// データ領域
 .data

// ファイルヘッダ
 const HEADER_SIZE 0x400
header:
 data 0x0000000300905a4d,0x0000ffff00000004,0x00000000000000b8,0x0000000000000040
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000008000000000
 data 0xcd09b4000eba1f0e,0x685421cd4c01b821,0x72676f7270207369,0x6f6e6e6163206d61
 data 0x6e75722065622074,0x20534f44206e6920,0x0a0d0d2e65646f6d,0x0000000000000024
 data 0x0001866400004550,0x00000000597f1ad0,0x022700f000000000,0x000002001902020b
 data 0x0000000000000000,0x0000100000001000,0x0000000000400000,0x0000020000001000
 data 0x0000000000000004,0x0000000000020005,0x0000040000006000,0x0000000a00000000
 data 0x0000000000200000,0x0000000000001000,0x0000000000100000,0x0000000000001000
 data 0x0000001000000000,0x0000000000000000,0x0000000000005000,0x0000000000000000
 data 0x0000000000003000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x000000747865742e,0x0000100000000070,0x0000040000000200
 data 0x0000000000000000,0xe050002000000000,0x000061746164722e,0x0000200000000040
 data 0x0000060000000200,0x0000000000000000,0x4050004000000000,0x000061746164702e
 data 0x000030000000000c,0x0000080000000200,0x0000000000000000,0x4030004000000000
 data 0x000061746164782e,0x000040000000000c,0x00000a0000000200,0x0000000000000000
 data 0x4030004000000000,0x000061746164692e,0x0000500000000014,0x00000c0000000200
 data 0x0000000000000000,0xc030004000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 data 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000
 
 
// アセンブラデータ
paramater:
  data "/*","//","$",0

// レジスタの定義データ
symbols:
 data "rax",0,17
 data "rcx",1,17
 data "rdx",2,17
 data "rbx",3,17
 data "rsp",4,17
 data "rbp",5,17
 data "rsi",6,17
 data "rdi",7,17
 data "r8",0,19
 data "r9",1,19
 data "r10",2,19
 data "r11",3,19
 data "r12",4,19
 data "r13",5,19
 data "r14",6,19
 data "r15",7,19
 data "eax",0,21
 data "ecx",1,21
 data "edx",2,21
 data "ebx",3,21
 data "ax",0,23
 data "cx",1,23
 data "dx",2,23
 data "bx",3,23
 data "al",0,25
 data "cl",1,25
 data "dl",2,25
 data "bl",3,25
 data "xmm0",0,27
 data "xmm1",1,27
 data "xmm2",2,27
 data "xmm3",3,27
 data "xmm4",4,27
 data "xmm5",5,27
 data "xmm6",6,27
 data "xmm7",7,27
 data NULL

// 命令定義データ
def_ins:
 data "org \0664",ORG,0
 data END
 data "equ \0664",EQU,0
 data END
 data "= \0664",EQU,0
 data END
 data "+= \0664",EQU_PP,0
 data END
 data "memory \0264",MEMORY,0
 data END
 data "align \0664",ALIGN,0
 data END
 data "byte \0664",NORMAL,1
 data 0,8,0,END
 data "short \0664",NORMAL,2
 data 0,0,16,0,END
 data "int \0664",NORMAL,4
 data 0,0,0,0,32,0,END
 data "long \0664",NORMAL,8
 data 0,0,0,0,0,0,0,0
 data 64,0,END
 data "syscall",NORMAL,2
 data 15,5,END
 data "jmp (\1703)",NORMAL,2
 data 255,224,3,8,END
 data "jmp \0464",NORMAL,5
 data 233,0,0,0,0,32,8,END
 data "call (\1703)",NORMAL,2
 data 255,208,3,8,END
 data "call \0464",NORMAL,5
 data 232,0,0,0,0,32,8,END
 data "ret",NORMAL,1
 data 195,END
 data "jc \0464",NORMAL,6
 data 15,130,0,0,0,0,32,16
 data END
 data "jnc \0464",NORMAL,6
 data 15,131,0,0,0,0,32,16
 data END
 data "jz \0464",NORMAL,6
 data 15,132,0,0,0,0,32,16
 data END
 data "jnz \0464",NORMAL,6
 data 15,133,0,0,0,0,32,16
 data END
 data "jlt \0464",NORMAL,6
 data 15,140,0,0,0,0,32,16
 data END
 data "jle \0464",NORMAL,6
 data 15,142,0,0,0,0,32,16
 data END
 data "jgt \0464",NORMAL,6
 data 15,143,0,0,0,0,32,16
 data END
 data "jge \0464",NORMAL,6
 data 15,141,0,0,0,0,32,16
 data END
 data "ja \0464",NORMAL,6
 data 15,135,0,0,0,0,32,16
 data END
 data "jae \0464",NORMAL,6
 data 15,131,0,0,0,0,32,16
 data END
 data "jb \0464",NORMAL,6
 data 15,130,0,0,0,0,32,16
 data END
 data "jbe \0464",NORMAL,6
 data 15,134,0,0,0,0,32,16
 data END
 data "shl \1703",NORMAL,3
 data 72,209,224,3,16,END
 data "shl \1903",NORMAL,3
 data 73,209,224,3,16,END
 data "shr \1703",NORMAL,3
 data 72,209,232,3,16,END
 data "shr \1903",NORMAL,3
 data 73,209,232,3,16,END
 data "sar \1703",NORMAL,3
 data 72,209,248,3,16,END
 data "sar \1903",NORMAL,3
 data 73,209,248,3,16,END
 data "rol \1703",NORMAL,3
 data 72,209,192,3,16,END
 data "rol \1903",NORMAL,3
 data 73,209,192,3,16,END
 data "rcl \1703",NORMAL,3
 data 72,209,208,3,16,END
 data "rcl \1903",NORMAL,3
 data 73,209,208,3,16,END
 data "ror \1703",NORMAL,3
 data 72,209,200,3,16,END
 data "ror \1903",NORMAL,3
 data 73,209,200,3,16,END
 data "rcr \1703",NORMAL,3
 data 72,209,216,3,16,END
 data "rcr \1903",NORMAL,3
 data 73,209,216,3,16,END
 data "neg \1703",NORMAL,3
 data 72,247,216,3,16,END
 data "neg \1903",NORMAL,3
 data 73,247,216,3,16,END
 data "not \1703",NORMAL,3
 data 72,247,208,3,16,END
 data "not \1903",NORMAL,3
 data 73,247,208,3,16,END
 data "push \1703",NORMAL,1
 data 80,3,0,END
 data "push \1903",NORMAL,2
 data 65,80,3,8,END
 data "pop \1703",NORMAL,1
 data 88,3,0,END
 data "pop \1903",NORMAL,2
 data 65,88,3,8,END
 data "\1703++",NORMAL,3
 data 72,255,192,3,16,END
 data "\1903++",NORMAL,3
 data 73,255,192,3,16,END
 data "\2103++",NORMAL,2
 data 255,192,3,8,END
 data "\2303++",NORMAL,3
 data 102,255,192,3,16,END
 data "\2503++",NORMAL,2
 data 254,192,3,8,END
 data "\1703--",NORMAL,3
 data 72,255,200,3,16,END
 data "\1903--",NORMAL,3
 data 73,255,200,3,16,END
 data "\2103--",NORMAL,2
 data 255,200,3,8,END
 data "\2303--",NORMAL,3
 data 102,255,200,3,16,END
 data "\2503--",NORMAL,2
 data 254,200,3,8,END
 data "\2703.+=\2703",NORMAL,4
 data 242,15,88,192,3,27,3,24
 data END
 data "\2703.-=\2703",NORMAL,4
 data 242,15,92,192,3,27,3,24
 data END
 data "\2703.*=\2703",NORMAL,4
 data 242,15,89,192,3,27,3,24
 data END
 data "\2703./=\2703",NORMAL,4
 data 242,15,94,192,3,27,3,24
 data END
 data "\2703=sqrt(\2703)",NORMAL,4
 data 242,15,81,192,3,27,3,24
 data END
 data "\2703.-\2703",NORMAL,4
 data 102,15,47,192,3,27,3,24
 data END
 data "\2703=(double)\1703",NORMAL,5
 data 242,72,15,42,192,3,35,3
 data 32,END
 data "\1703=(_long)\2703",NORMAL,5
 data 242,72,15,44,192,3,35,3
 data 32,END
 data "\1703=(long)\2703",NORMAL,5
 data 242,72,15,45,192,3,35,3
 data 32,END
 data "exg rax,\1703",NORMAL,2
 data 72,144,3,8,END
 data "exg \1703,rax",NORMAL,2
 data 72,144,3,8,END
 data "exg rax,\1903",NORMAL,2
 data 73,144,3,8,END
 data "exg \1903,rax",NORMAL,2
 data 73,144,3,8,END
 data "exg \1703,\1703",NORMAL,3
 data 72,135,192,3,16,3,19,END
 data "exg \1903,\1903",NORMAL,3
 data 77,135,192,3,16,3,19,END
 data "exg \1703,\1903",NORMAL,3
 data 76,135,192,3,16,3,19,END
 data "exg \1903,\1703",NORMAL,3
 data 73,135,192,3,16,3,19,END
 data "\1703+=\1703",NORMAL,3
 data 72,1,192,3,16,3,19,END
 data "\1903+=\1903",NORMAL,3
 data 77,1,192,3,16,3,19,END
 data "\1703+=\1903",NORMAL,3
 data 76,1,192,3,16,3,19,END
 data "\1903+=\1703",NORMAL,3
 data 73,1,192,3,16,3,19,END
 data "\1703-=\1703",NORMAL,3
 data 72,41,192,3,16,3,19,END
 data "\1903-=\1903",NORMAL,3
 data 77,41,192,3,16,3,19,END
 data "\1703-=\1903",NORMAL,3
 data 76,41,192,3,16,3,19,END
 data "\1903-=\1703",NORMAL,3
 data 73,41,192,3,16,3,19,END
 data "\1703+=\1703",NORMAL,3
 data 72,1,192,3,16,3,19,END
 data "\1903+=\1903",NORMAL,3
 data 77,1,192,3,16,3,19,END
 data "\1703+=\1903",NORMAL,3
 data 76,1,192,3,16,3,19,END
 data "\1903+=\1703",NORMAL,3
 data 73,1,192,3,16,3,19,END
 data "\1703-=\1703",NORMAL,3
 data 72,41,192,3,16,3,19,END
 data "\1903-=\1903",NORMAL,3
 data 77,41,192,3,16,3,19,END
 data "\1703-=\1903",NORMAL,3
 data 76,41,192,3,16,3,19,END
 data "\1903-=\1703",NORMAL,3
 data 73,41,192,3,16,3,19,END
 data "\1703&=\1703",NORMAL,3
 data 72,33,192,3,16,3,19,END
 data "\1903&=\1903",NORMAL,3
 data 77,33,192,3,16,3,19,END
 data "\1703&=\1903",NORMAL,3
 data 76,33,192,3,16,3,19,END
 data "\1903&=\1703",NORMAL,3
 data 73,33,192,3,16,3,19,END
 data "\1703|=\1703",NORMAL,3
 data 72,9,192,3,16,3,19,END
 data "\1903|=\1903",NORMAL,3
 data 77,9,192,3,16,3,19,END
 data "\1703|=\1903",NORMAL,3
 data 76,9,192,3,16,3,19,END
 data "\1903|=\1703",NORMAL,3
 data 73,9,192,3,16,3,19,END
 data "\1703^=\1703",NORMAL,3
 data 72,49,192,3,16,3,19,END
 data "\1903^=\1903",NORMAL,3
 data 77,49,192,3,16,3,19,END
 data "\1703^=\1903",NORMAL,3
 data 76,49,192,3,16,3,19,END
 data "\1903^=\1703",NORMAL,3
 data 73,49,192,3,16,3,19,END
 data "\1703-\1703",NORMAL,3
 data 72,57,192,3,16,3,19,END
 data "\1903-\1903",NORMAL,3
 data 77,57,192,3,16,3,19,END
 data "\1703-\1903",NORMAL,3
 data 76,57,192,3,16,3,19,END
 data "\1903-\1703",NORMAL,3
 data 73,57,192,3,16,3,19,END
 data "\1703&\1703",NORMAL,3
 data 72,133,192,3,16,3,19,END
 data "\1903&\1903",NORMAL,3
 data 77,133,192,3,16,3,19,END
 data "\1703&\1903",NORMAL,3
 data 76,133,192,3,16,3,19,END
 data "\1903&\1703",NORMAL,3
 data 73,133,192,3,16,3,19,END
 data "\1703=\0632(rsp)",NORMAL,8
 data 72,139,132,36,0,0,0,0
 data 3,19,32,32,END
 data "\1703=\0632(\1703)",NORMAL,7
 data 72,139,128,0,0,0,0,3
 data 19,32,24,3,16,END
 data "\1703=(\1703)",NORMAL,3
 data 72,139,0,3,19,3,16,END
 data "\0632(rsp)=\1703",NORMAL,8
 data 72,137,132,36,0,0,0,0
 data 32,32,3,19,END
 data "\0632(\1703)=\1703",NORMAL,7
 data 72,137,128,0,0,0,0,32
 data 24,3,16,3,19,END
 data "(\1703)=\1703",NORMAL,3
 data 72,137,0,3,16,3,19,END
 data "\1903=\0632(rsp)",NORMAL,8
 data 76,139,132,36,0,0,0,0
 data 3,19,32,32,END
 data "\1903=\0632(\1703)",NORMAL,7
 data 76,139,128,0,0,0,0,3
 data 19,32,24,3,16,END
 data "\1903=(\1703)",NORMAL,3
 data 76,139,0,3,19,3,16,END
 data "\0632(rsp)=\1903",NORMAL,8
 data 76,137,132,36,0,0,0,0
 data 32,32,3,19,END
 data "\0632(\1703)=\1903",NORMAL,7
 data 76,137,128,0,0,0,0,32
 data 24,3,16,3,19,END
 data "(\1703)=\1903",NORMAL,3
 data 76,137,0,3,16,3,19,END
 data "\2103=(\1703)",NORMAL,2
 data 139,0,3,11,3,8,END
 data "(\1703)=\2103",NORMAL,2
 data 137,0,3,8,3,11,END
 data "\2303=(\1703)",NORMAL,3
 data 102,139,0,3,19,3,16,END
 data "(\1703)=\2303",NORMAL,3
 data 102,137,0,3,16,3,19,END
 data "\2503=(\1703)",NORMAL,2
 data 138,0,3,11,3,8,END
 data "(\1703)=\2503",NORMAL,2
 data 136,0,3,8,3,11,END
 data "\2703=\1703",NORMAL,5
 data 102,72,15,110,192,3,35,3
 data 32,END
 data "\1703=\2703",NORMAL,5
 data 102,72,15,126,192,3,32,3
 data 35,END
 data "\1703=\1703",NORMAL,3
 data 72,137,192,3,16,3,19,END
 data "\1903=\1903",NORMAL,3
 data 77,137,192,3,16,3,19,END
 data "\1703=\1903",NORMAL,3
 data 76,137,192,3,16,3,19,END
 data "\1903=\1703",NORMAL,3
 data 73,137,192,3,16,3,19,END
 data "\1703=&\0664(rip)",NORMAL,7
 data 72,141,5,0,0,0,0,3
 data 19,32,24,END
 data "\1703=&\0664",NORMAL,8
 data 72,141,4,37,0,0,0,0
 data 3,19,32,32,END
 data "\1703=\0664",NORMAL,10
 data 72,184,0,0,0,0,0,0
 data 0,0,3,8,64,16,END
 data "\1903=\0664",NORMAL,10
 data 73,184,0,0,0,0,0,0
 data 0,0,3,8,64,16,END
 data "umul \1703",NORMAL,3
 data 72,247,224,3,16,END
 data "umul \1903",NORMAL,3
 data 73,247,224,3,16,END
 data "mul \1703",NORMAL,3
 data 72,247,232,3,16,END
 data "mul \1903",NORMAL,3
 data 73,247,232,3,16,END
 data "udiv \1703",NORMAL,3
 data 72,247,240,3,16,END
 data "udiv \1903",NORMAL,3
 data 73,247,240,3,16,END
 data "div \1703",NORMAL,3
 data 72,247,248,3,16,END
 data "div \1903",NORMAL,3
 data 73,247,248,3,16,END
 data "in al,(dx)",NORMAL,1
 data 236,END
 data "in ax,(dx)",NORMAL,2
 data 102,237,END
 data "in eax,(dx)",NORMAL,1
 data 237,END
 data "out (dx),al",NORMAL,1
 data 238,END
 data "out (dx),ax",NORMAL,2
 data 102,239,END
 data "out (dx),eax",NORMAL,1
 data 239,END
 data "ext al",NORMAL,4
 data 72,15,182,192,END
 data "ext ax",NORMAL,4
 data 72,15,183,192,END
 data "ext eax",NORMAL,2
 data 72,152,END
 data "cli",NORMAL,1
 data 250,END
 data "sti",NORMAL,1
 data 251,END
 data "nop",NORMAL,1
 data 144,END
 data NULL
