//  oreore Basic ver 0.03
// oreore-OS上で動作するBASICインタプリタ
// (コンパイラ対応バージョン)

// プログラム構造体
 struct Program
   long prev# // 前の行
   long next# // 次の行
   long lineno#      // 行番号
   long label#       // ラベルのチェックサム(ラベルが無いときは-1)
   long text#        // テキスト先頭文字
 end


// 値
  struct Value
    long type#
    long data#
  end


// 変数
  struct Variable
    long name#        // 変数名
    long dimension#   // 配列ならば0より大きな数値が入る 
    long dim#
    long dim1#
    long dim2#
    long dim3#
    long dim4#
    long dim5#
    long dim6#
    long dim7#
    long dim8#
    long dim9#
    long value#
    long prev#
    long next#
  end


// FOR文用データ
  long ForStack#,ForStackP#
  struct  _ForStack
    long var#     // ループ変数へのポインタ
    long limit#   // ループ変数上限値
    long step#    // STEP値
    long program# // リピートTEXT行記憶用
    long token_p# // リピート有効文字先頭
  end


// GOSUB文用データ
  long GosubStack#,GosubStackP#
  struct  _GosubStack
    long program#  // リターンする行記憶用
    long token_p#  // リターンする文字先頭
  end


// BASICのコマンド
  struct _Command
    long keyword#
    long func#
  end

// BASICの関数
  struct _Function
    long keyword#
    long func#
  end

Command:
  data "run",cmd_run
  data "if",cmd_if
  data "for",cmd_for
  data "next",cmd_next
  data "goto",cmd_goto
  data "gosub",cmd_gosub
  data "return",cmd_return
  data "print",cmd_print
  data "input",cmd_input
  data "clear",cmd_clear
  data "pset",cmd_pset
  data "cls",cmd_cls
  data "line",cmd_line
  data "locate",cmd_locate
  data "dim",cmd_dim
  data "open",cmd_open
  data "close",cmd_close
  data "box",cmd_box
  data "boxf",cmd_boxf
  data "circle",cmd_circle
  data "circlef",cmd_circlef
//  data "start",cmd_start
  data "exec",cmd_exec
  data "wait",cmd_wait
  data "image",cmd_image
  data "save",cmd_save
  data "edit",cmd_edit
  data "load",cmd_load
  data "new",cmd_new
//  data "let",cmd_let
  data "end",cmd_end
  data "list",cmd_list
  data "run",cmd_run
  data "bye",cmd_quit
  data "stop",cmd_stop
  data "cont",cmd_cont
  data "color",cmd_color
  data "make",cmd_make
  data "then",cmd_then
  data "else",cmd_else
  data "out",cmd_out
  data NULL,NULL

Function:
 data "abs",func_abs
  data "int",func_int
  data "sgn",func_sgn
  data "sqr",func_sqr
  data "exp",func_exp
  data "log",func_log
  data "sin",func_sin
  data "cos",func_cos
  data "tan",func_tan
  data "atn",func_atn
  data "chr$",func_chrs
  data "asc",func_asc
  data "mid$",func_mids
  data "left$",func_lefts
  data "right$",func_rights
  data "input$",func_inputs
  data "inkey$",func_inkeys
//  data "eof",func_eof
  data "str$",func_strs
  data "hex$",func_hexs
  data "bin$",func_bins
  data "oct$",func_octs
  data "val",func_val
  data "len",func_len
  data "time$",func_times
  data "date$",func_dates
    data "instr",func_instr
  data "rnd",func_rnd
  data "point",func_point
  data "inp",func_inp
//  data "netstat",func_netstat
  data NULL,NULL

// プログラムを消去する
clear_program:
  TopProg, prog#=
  
  clear_program1:
    if prog#=NULL goto clear_program2
    prog#, pp#=
    pp#, ->Program.next# prog#=
    pp#, ->Program.text# free
    pp#, free
    goto clear_program1
  clear_program2:
  NULL, TopProg#= EndProg#=
  end

// 指定されたラベルの位置を返す
// ラベルが見つからないときはNULLを返す
serch_label_position:
  str#= pop lbl#=
  
//  "serch label position:", prints
//  "lbl: ", prints lbl#, printd nl
//  "str: ", prints  str#, prints nl
//  " start serch:", prints nl
  
  TopProg#, pp#=
serch_label_position1:
  if pp#=NULL then NULL, end
  pp#, ->Program.label# tt#=
  
//  "lbl=", prints
//  tt#, printd nl
  
  if tt#<>lbl# goto serch_label_position4
  pp#, ->Program.text# ss#=
serch_label_position2:
  ss#, is_space tt#=
  if tt#<>0 then ss#++ gotoserch_label_position2
  if (ss)$<>LABEL_HEADER goto serch_label_position4
serch_label_position3:
  ss#, is_symbol_char tt#=
  if tt#=0 then pp#, end
  if (ss)$<>(str)$ goto serch_label_position4
  ss#++
  str#++
  goto serch_label_position3
serch_label_position4:

// "next line:", prints nl

  pp#, ->Program.next# pp#=
  goto serch_label_position1

// プログラムに1行文字列を追加する
append_line:
  str#= ss#=

//  "append line:", prints nl

  NULL, BreakProg#=
  -1, lbl#=   
append_line1:
  (ss)$, is_space tt#=
  if tt#<>0 then ss#++ gotoappend_line1
  if (ss)$<>LABEL_HEADER goto append_line3
  ss#++
  0, lbl#=
append_line2:
  (ss)$, is_symbol_char tt#=
  if tt#<>0 then (ss)$, lbl#, + lbl#= ss#++ gotoappend_line2

  // プログラムが空の場合
append_line3:
  if TopProg#<>NULL goto append_line4
  1, CurrentLineNo#=
  Program.SIZE, malloc TopProg#= EndProg#=
  NULL, TopProg#, ->Program.prev#=
  NULL, TopProg#, ->Program.next#=
  CurrentLineNo#, TopProg#, ->Program.lineno#=
  CurrentLineNo#++
  lbl#, TopProg#, ->Program.label#=
  str#, strlen 1, + malloc TopProg#, ->Program.text#=
  str#, TopProg#, ->Program.text# strcpy
  end

  // プログラムを追加
append_line4:
  Program.SIZE, malloc pp#=
  EndProg#, pp#, ->Program.prev#=
  NULL, pp#, ->Program.next#=
  CurrentLineNo#, pp#, ->Program.lineno#=
  CurrentLineNo#++
  lbl#, pp#, ->Program.label#=
  str#, strlen 1, + malloc pp#, ->Program.text#=
  str#, pp#, ->Program.text# strcpy
  pp#, EndProg#, ->Program.next#=
  pp#, EndProg#=
  end

// BASICのプログラムを最初から実行する
exec_basic:
  CurrentProg#=
  clear_value
  CurrentProg#, ->Program.text# TokenP#= 
  getToken // 最初のトークン切り出し
  CurrentProg#, TokenP#,  exec_basic2
  end

// BASICプログラムを現在のロケーションから継続して実行する
exec_basic2:
 long no#
  TokenP#= pop CurrentProg#=
  
//  "exec basic2:", prints nl
  
  0, status#=
  if CurrentProg#=NULL then "can't continue", assertError

  // ループ
  exec_basic2_1:

    if BreakFlg#=0 goto exec_basic2_2
      0, BreakFlg#=
      CurrentProg#, BreakProg#=
      TokenP#, BreakToken#=
      "Break", assertError

    // トークンがCOMMANDなら次のトークンをとりだしてDISPATCH
    exec_basic2_2:
    if TokenType#<>COMMAND goto exec_basic2_3

//  "exec basic2 command:", prints nl

     TokenCode#, _Command.SIZE, * no#=
      getToken
      Command, no#, + ->@_Command.func status#=
      if status#<>DONE then status#, end
      goto exec_basic2_1

    // トークンが変数なら代入
    exec_basic2_3:
    if TokenType#=VARIABLE then cmd_let gotoexec_basic2_1


    // トークンがEOLなら次の行へ
    if TokenType#<>EOL goto exec_basic2_4

//  "exec basic2 eol:", prints nl

      // 次の行に移る
      CurrentProg#, ->Program.next# CurrentProg#=

      // 最終行(中身無し)に到達すると終了
      if CurrentProg#=NULL then TERMINATE, end

      // テキストポインタを設定
      CurrentProg#, ->Program.text# TokenP#=
      getToken
      goto exec_basic2_1

    // マルチステートメントの処理
    exec_basic2_4:
    if TokenType#<>DELIMIT goto exec_basic2_5

//  "exec basic2 delimit:", prints nl

      if TokenText$=':' then getToken gotoexec_basic2_1
      "Syntax Error", assertError

    // ラベルの場合は無視(1つの行に2個以上ラベルがある場合は、最初のラベル以外は無視されるので注意)
    exec_basic2_5:
    if TokenType#=LABEL then getToken gotoexec_basic2_1

    // 上記以外の場合は文法エラー  

//  "exec basic2 other:", prints nl

    "Syntax Error", assertError
    end

// エラーを発生させる
assertError:
 long mesg#
 mesg#=
 
// "assert error:", prints nl
// "current prog=", prints CurrentProg#, hex prints nl
 
  // コンパイル出力ファイルが開いていたら閉じておく
  // xxxclose
  0, IsPass1#=
  
  StackSave#, __stack_p#=
  CurrentProg#, ->Program.lineno# tt#=
  if tt#<=0 then  mesg#, prints nl gotobasic_entry
  "Line ", prints tt#, printd  " : ", prints
  mesg#, prints nl
  if SysError#=1 then end
  goto basic_entry

// プログラムをロードする
load_basic:
  char buf$(MAX_TEXT_LENGTH+1)
  char rfp$(FILE_SIZE)
  long flg#,fname#

  flg#= pop fname#=

// "load basic:", prints nl

  fname#, rfp, ropen tt#=
  if tt#<>ERROR goto load_basic1
    if flg#<>0 then "can't load", assertError
    end
  load_basic1:
  cmd_new
  load_basic2:
     buf, rfp, finputs tt#=
     if tt#=EOF goto load_basic3
     buf, append_line
  goto load_basic2
  load_basic3:
  rfp, rclose
  end

// トークンを切り出してバッファに格納する
getToken:

// "getToken:", prints TokenP#, prints nl

  NULL, TokenText$=
  0, ii#=

  // 空白や制御文字をスキップする
getToken1:
   if (TokenP)$>' ' goto getToken2
     if (TokenP)$=NULL then EOL, TokenType#= end
     TokenP#++
     goto getToken1

  // "'"が現れたときは行の終わり
getToken2:
  if (TokenP)$=A_QUOT then EOL, TokenType#= end

  // 先頭が"であれば次の"までは文字列
  if (TokenP)$<>DBL_QUOT goto getToken4
    STRING, TokenType#=
    TokenP#++
getToken3:
   if (TokenP)$=NULL then "SyntaxError", assertError
   if (TokenP)$<>DBL_QUOT then (TokenP)$, TokenText$(ii#)= TokenP#++ ii#++ gotogetToken3
   TokenP#++
    NULL, TokenText$(ii#)=
//    "string:", prints nl 
    end

  // 先頭がアルファベット
getToken4:
  (TokenP)$, is_symbol_char0 tt#=
  if tt#=0 goto getToken10
  
//  "symbol char:", prints nl
  
getToken5:
  (TokenP)$, is_symbol_char tt#=
  if tt#=1 then  (TokenP)$, TokenText$(ii#)= TokenP#++ ii#++ gotogetToken5
  NULL, TokenText$(ii#)=

//  "TokenText=", prints TokenText, prints nl

    // "else"キーワードが出てきたら行の終わりと判断する
getToken6:
    TokenText, "else", strcmp tt#=
    if tt#=0 then EOL, TokenType#= end

    // Basicのコマンドの場合
    Command, pp#= 0, ii#=
getToken7:
    pp#, ->_Command.keyword# qq#=
    if qq#=NULL goto  getToken8
    TokenText, qq#, strcmp tt#=
    if tt#=0 then  COMMAND, TokenType#= ii#, TokenCode#= end
    pp#, _Command.SIZE, + pp#=
    ii#++
    goto getToken7

    // 関数の場合
getToken8:
    Function, pp#= 0, ii#=
getToken8x:
    pp#, ->_Function.keyword# qq#=
    if qq#=NULL goto  getToken9
    TokenText, qq#, strcmp tt#=
    if tt#=0 then  FUNCTION, TokenType#= ii#, TokenCode#= end
    pp#, _Function.SIZE, + pp#=
    ii#++
    goto getToken8x

    // コマンドでも関数でもないときは変数とみなす
getToken9:
  
//  "variable:", prints nl
  
    VARIABLE, TokenType#= end

  // 先頭がラベルの先頭文字であれば英数字と'_'が続いているところはラベル
getToken10:
  if (TokenP)$<>LABEL_HEADER goto getToken20
    LABEL, TokenType#=
    TokenP#++
    0, TokenCode#=
getToken11:
    (TokenP)$, is_symbol_char tt#=
    if tt#=1 then (TokenP)$, TokenText$(ii#)= TokenCode#, + TokenCode#= TokenP#++ ii#++ gotogetToken11
    NULL, TokenText$(ii#)=
  
//  "label:", prints nl
//  "TokenText=", prints TokenText, prints nl

  
    end

// 先頭が'&' , '.' あるいは'0'~'9'で始まっている場合が数値
getToken20:
  (TokenP)$, cc#=
  if cc#='&' goto getToken21
  if cc#='.'   goto getToken21
  if cc#<'0'  goto getToken30
  if cc#>'9'  goto getToken30

getToken21:
      NUMBER, TokenType#=
      TokenP#, xval TokenValue#= pop tt#=
      if TokenValue#=NaN then "Bad Number Format", assertError
      0, ii#=
getToken22:
      (TokenP)$, TokenText$(ii#)=
      TokenP#++
      ii#++
      if TokenP#<tt# goto getToken22
      NULL, TokenText$(ii#)=
      end

// 上記以外は区切り文字
getToken30:
    DELIMIT, TokenType#=
    cc#, TokenText$(ii#)=
    ii#++
    TokenP#++
    (TokenP)$, bb#=
    
    if cc#<>'=' goto getToken31
    if bb#='<' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotogetToken33 
    if bb#='>' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotogetToken33 

getToken31:
    if cc#<>'<' goto getToken32
    if bb#='=' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotogetToken33 
    if bb#='>' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotogetToken33 

getToken32:
    if cc#<>'>' goto getToken33
    if bb#='=' then bb#, TokenText$(ii#)= ii#++ TokenP#++

getToken33:
    NULL, TokenText$(ii#)=
  
//  "delimitter:", prints nl
//  "TokenText=", prints TokenText, prints nl

 end

// トークンが正しければ次のトークンを読み込み
// トークンが間違っていたらエラーを発生させる
checkToken:
  long token#
  token#=
  
//  "check token:", prints nl
  
  TokenText, token#, strcmp tt#=
  if tt#<>0 then "Syntax Error", assertError
  getToken
  end

// 文字判別関数

// 空白文字
is_space:
  long cc1#
  cc1#=
  if cc1#=' ' then 1, end
  if cc1#=9  then 1, end
  0, end

// シンボル文字(最初の1文字)
is_symbol_char0:
  cc1#=
  if cc1#>='a' then if cc1#<='z' goto is_symbol_char0_1
  if cc1#>='A' then if cc1#<='Z' goto is_symbol_char0_1
  if cc1#='_' goto is_symbol_char0_1
  0, end
is_symbol_char0_1:
  1, end

// シンボル文字
is_symbol_char:
  cc1#=
  if cc1#>='0' then if cc1#<='9' goto is_symbol_char1
  if cc1#>='a' then if cc1#<='z' goto is_symbol_char1
  if cc1#>='A' then if cc1#<='Z' goto is_symbol_char1
  if cc1#='_' goto is_symbol_char1
  if cc1#='$' goto is_symbol_char1
  0, end
is_symbol_char1:
  1, end


  // 変数宣言

  long   JmpEntry#			       // エラー処理用のエントリポイント
  long   StackSave# 
  long   TopProg#          // BASICプログラム最初の行と最後の行
  long   EndProg#          // BASICプログラム最初の行と最後の行
  long   CurrentProg#      // 現在実行中への行へのポインタ
  long  BreakProg#         // 現在実行中への行へのポインタ
  char  TextBuffer$(MAX_TEXT_LENGTH+1) // プログラムテキストのバッファ
  char  TokenText$(MAX_TEXT_LENGTH+1)  // トークンバッファ
  char   VarName$(MAX_TEXT_LENGTH+1)    // 変数名格納エリア
  long   TokenP#           // トークン解析用の文字位置ポインタ
  long   BreakToken# 
  long   TokenType#,TokenCode#  // トークンタイプとコード
  long   TokenValue#    // トークンの値
  char   CalcStack$(Value.SIZE*STACK_SIZE)    // 演算用スタック
  long   CalcStackP#      // 演算スタックポインタ
  long   SysError#       // この変数がセットされたらシステムエラー
  long   TopVar#          // 変数リスト開始値
  long   EndVar#         // 変数リスト終値
  long   ErrorMessage#
  long   BreakFlg#
  long   RunFlg# 
  long   CurrentLineNo#
  long   BasicBusy# 
  char   Xfp$(FILE_SIZE*MAX_FILES)

  count ii#,jj#,kk#,ll#
  count mm#,nn#
  long aa#,bb#,cc#,lbl#,str#
  long pp#,qq#,rr#,ss#,tt#,uu#,vv#,ww#
  long xx#,yy#,zz#
 
 

// 定数

// トークンタイプ
  const VARIABLE              1     // 変数名
  const COMMAND               2     // コマンド名
  const FUNCTION              3     // 関数名
  const NUMBER                4     // 数字表現文字
  const DELIMIT               5     // 区切り文字
  const STRING                6     // 文字列
  const LABEL                 7     // ラベル
  const EOL                   8     // 行末
  const COUNT                 9     // カウンタ型

// 終了コード
  const DONE              1     // 正常終了
  const TERMINATE         2     // TEXT実行を終了
  const QUIT              3     // BASICを終了

  const MAX_DIMENSION     16    // 配列の最大次元
  const MAX_PROGRAM_SIZE  16000 // プログラムTEXT領域のバイトサイズ
  const MAX_TEXT_LENGTH   255   // テキスト行の長さの限界
  const MAX_STR_LENGTH    511   // 文字列の長さの限界
  const MAX_FILES         10    // 開くことのできるファイルの最大数
  const STACK_SIZE        64    // スタックサイズ
  const ALIGNMENT         4     // アドレス境界のアライメント

 const LABEL_HEADER '@'
 const A_QUOT     39
 const DBL_QUOT 34
 
  .data
EOF_STRING:
  data 255

// waitコマンド
cmd_wait:

// "cmd wait:", prints nl

  clear_value
  eval_expression
  get_number  (long) wait
  DONE, end

// clearコマンド
cmd_clear:

// "cmd clear:", prints nl

  clear_value
  clear_variable
  ForStack#, ForStackP#= 
  DONE, end

// closeコマンド
cmd_close:

// "cmd close:", prints nl

  if TokenText$<>'#' goto file_close_all
    getToken
    TokenValue#, (long) nn#=
    if nn#<0 then "Out of Range", assertError
    if nn#>MAX_FILES then "Out of Range", assertError
    nn#, FILE_SIZE, * Xfp, + fp_adr#=
    if (fp_adr)#(FILE_FP/8)<>NULL then  fp_adr#, wclose NULL, (fp_adr)#(FILE_FP/8)=
    getToken
    DONE, end

file_close_all:
    for ii#=0 to MAX_FILES-1
      ii#, FILE_SIZE, * Xfp, + fp_adr#=
      if (fp_adr)#(FILE_FP/8)<>NULL then  fp_adr#, wclose NULL, (fp_adr)#(FILE_FP/8)=
    next ii#
    DONE, end

// openコマンド
cmd_open:
  long  fp_adr#,io_flg#,fname0#

// "cmd open:", prints nl

  clear_value
  eval_expression
  "for", checkToken
  0, io_flg#=
  TokenText, "input",   strcmp ss#=
  TokenText, "output", strcmp tt#=
  ss#, tt#, * ss#=
  if ss#<>0 then "Syntax Error", assertError
  if tt#=0 then 1, io_flg#= 
  getToken
  "as", checkToken
  "#",  checkToken
  if TokenType#<>NUMBER then "Syntax Error", assertError
  TokenValue#, (long) nn#=
  
//  "file no=", prints nn#, printd nl
  
  if nn#<0 then "Out of Range", assertError
  if nn#>=MAX_FILES then "Out of Range", assertError
  getToken
  get_string fname0#=
  
//  "file name=", prints fname0#, prints nl
//  "i/o=", prints io_flg#, printd nl

  ERROR, tt#=
  nn#, FILE_SIZE, * Xfp, + fp_adr#=
  if (fp_adr)#(FILE_FP/8)<>NULL then "File already open", assertError
  if io_flg#=1 then  fname0#, fp_adr#, wopen tt#=
  if io_flg#=0 then  fname0#, fp_adr#, ropen  tt#=
  fname0#, free
  if tt#=ERROR then NULL, (fp_adr)#(FILE_FP/8)= "File can't open", assertError
  DONE, end

// dimコマンド
cmd_dim:

// "cmd dim:", prints nl

  long dim#(MAX_DIMENSION)
  char vname$(256)
  long vtype#,dx#,var#
  
    if TokenType#<>VARIABLE then "Syntax Error", assertError
    TokenText, vname, strcpy

//   "dim var=", prints vname, prints nl

    vname, var_type vtype#= 
    getToken
    "(", checkToken
    0, dx#=
    cmd_dim1:
      clear_value
      eval_expression
      if dx#>=MAX_DIMENSION then  "dimension size over", assertError
      get_number (long) tt#=
      if tt#<=0 then "Out of Range", assertError
      tt#, dim#(dx#)= dx#++
      if TokenText$=')' goto cmd_dim2
      ",", checkToken
      goto cmd_dim1

cmd_dim2:
    vname, 0, _variable var#=
    dx#, var#, ->Variable.dimension#=
    dx#--
    1, nn#=
    var#, ->Variable.dim pp#=
    for ii#=0 to dx#
    dim#(ii#), (pp)#(ii#)= 1, + nn#, * nn#=
    next ii#

    // 文字列型配列を初期化
    if vtype#<>STRING goto cmd_dim3
      nn#, 8, * malloc pp#=
      var#, ->Variable.value# ->Value.data#=
      nn#--
      for ii#=0 to nn#
        ALIGNMENT, malloc (pp)#(ii#)=
        "", (pp)#(ii#), strcpy
      next ii#
      goto cmd_dim4

    // 数値型配列を初期化
cmd_dim3:
      nn#, 8, * malloc pp#=
      var#, ->Variable.value# ->Value.data#=
      nn#--
      for ii#=0 to nn#
         0, (pp)#(ii#)=
      next ii#
     
cmd_dim4:
    getToken
    if TokenText$<>','  goto cmd_dim5
    getToken
    goto cmd_dim

cmd_dim5:
  getToken
  DONE, end

// ifコマンド
cmd_if:

// "cmd if:", prints nl

  // 論理式が真ならば"thenをチェックしてその次から始める"
  eval_expression
  get_number (long) tt#=
  if tt#=0 goto cmd_if1
    "then", checkToken
    if TokenType#<>LABEL then DONE, end
    TokenCode#, TokenText, serch_label_position pp#=
    if pp#=NULL then "LABEL not found", assertError
    pp#, CurrentProg#=
    CurrentProg#, ->Program.text# TokenP#= 
    getToken
    DONE, end

  // 行のトークンを逐次検索する
cmd_if1:
    getToken

    // "else"があったらそこから始める
    TokenText, "else", strcmp tt#=
    if tt#<>0 goto cmd_if2
    getToken
    if TokenType#<>LABEL then DONE, end
    TokenCode#, TokenText, serch_label_position pp#=
     if pp#=NULL then "LABEL not found", assertError
     pp#, CurrentProg#=
     CurrentProg#, ->Program.text# TokenP#= 
     getToken
     DONE, end

cmd_if2:
   if TokenType#<>EOL goto cmd_if1
   DONE, end


// returnコマンド
cmd_return:

// "cmd return:", prints nl

  if GosubStackP#<GosubStack# then "return without gosub", assertError
  GosubStackP#, _GosubStack.SIZE, - GosubStackP#=
  GosubStackP#, ->_GosubStack.token_p# TokenP#=
  GosubStackP#, ->_GosubStack.program# CurrentProg#=
  getToken
  DONE, end


// gosubコマンド
cmd_gosub:
  long pp1#
  
//  "cmd gosub:", prints nl
  
  GosubStack#, STACK_SIZE, + tt#=
  if GosubStackP#>=tt# then  "stack overflow (gosub)", assertError

  if TokenType#<>LABEL then "Syntax Error", assertError
  TokenCode#, TokenText, serch_label_position pp1#=
  if pp1#=NULL then "LABEL not found", assertError
  getToken

  CurrentProg#, GosubStackP#, ->_GosubStack.program#=
  TokenP#, GosubStackP#, ->_GosubStack.token_p#= 
  GosubStackP#,  _GosubStack.SIZE, + GosubStackP#=
  pp1#, CurrentProg#=
  CurrentProg#, ->Program.text# TokenP#=
  getToken
  DONE, end

// nextコマンド
cmd_next:

// "cmd next:", prints nl

  long for_var#
  if ForStackP#<=ForStack# then  "next without for", assertError
  ForStackP#, _ForStack.SIZE, - ForStackP#=

  // nextの後に変数名がある場合
  if TokenType#<>VARIABLE goto cmd_next1
    TokenText, get_variable ->Variable.value# ->Value.data ForStackP#, ->_ForStack.var#  - tt#=
    if tt#<>0 then "next without for", assertError
    getToken

  // STEP値をループ変数へ加える
cmd_next1:
  ForStackP#, ->_ForStack.var# for_var#=
  ForStackP#, ->_ForStack.step# (for_var)#, .+ (for_var)#=

  // 終了条件を満たさなければループエントリーに戻る
  (for_var)#, ForStackP#, ->_ForStack.limit# .- ForStackP#, ->_ForStack.step# .*  tt#=
  if tt#.>^0.0 goto cmd_next2
    ForStackP#, ->_ForStack.token_p# TokenP#=
    ForStackP#, ->_ForStack.program# CurrentProg#= 
    ForStackP#, _ForStack.SIZE, + ForStackP#=
    getToken
cmd_next2:
    DONE, end    

// forコマンド
cmd_for:

// "cmd for:", prints nl

  ForStack#, STACK_SIZE, + tt#=
  if ForStackP#>=tt# then "stack over flow (for-next)", assertError
  if TokenType#<>VARIABLE  then "Syntax Error", assertError

  // ループ変数を確保
  TokenText, 0, _variable ->Variable.value# ->Value.data for_var#= 
  for_var#, ForStackP#, ->_ForStack.var#=

  // ループ変数に初期値代入
  cmd_let

  "to", checkToken

  // ループ変数上限を得る
  clear_value
  eval_expression
  get_number ForStackP#, ->_ForStack.limit#=

  // STEP値がある場合
  TokenText, "step", strcmp tt#=
  if tt#<>0 goto cmd_for1
    getToken
    clear_value
    eval_expression
    get_number ForStackP#, ->_ForStack.step#=
    goto cmd_for2 

  // STEP値が省略された場合
cmd_for1:
  ^1.0,  ForStackP#, ->_ForStack.step#=

  // 現在の実行位置をスタックへ保存
cmd_for2:
  CurrentProg#, ForStackP#, ->_ForStack.program#=
  TokenP#, ForStackP#, ->_ForStack.token_p#=
  ForStackP#,  _ForStack.SIZE, + ForStackP#=
  DONE, end

// gotoコマンド
cmd_goto:

// "cmd goto:", prints nl

  1, RunFlg#=
  if TokenType#<>LABEL then "Syntax Error", assertError
  TokenCode#, TokenText, serch_label_position pp#=
  if pp#=NULL then "LABEL not found", assertError
  pp#, CurrentProg#=
  CurrentProg#, ->Program.text# TokenP#=
  getToken
  DONE, end



// inputコマンド
cmd_input:
 long input_var#

  // ファイルから入力
  if TokenText$<>'#' goto cmd_input3
    getToken
    TokenValue#, (long) nn#=
    if nn#<0 then   "Out of Range(input)", assertError
    if nn#>=MAX_FILES then  "Out of Range(input)", assertError
    nn#, FILE_SIZE, * Xfp, + fp_adr#=
    if (fp_adr)#(FILE_FP/8)=NULL  then "File is not oen", assertError
    getToken

      // 変数の場合は入力する
cmd_input1:
      if TokenType#<>VARIABLE goto cmd_input2
      TokenText, 0, get_variable_value input_var#= pop vtype#=
       sss, fp_adr#, finputs tt#=
       if tt#=EOF then EOF, sss+0$= NULL, sss+1$=
       sss, strlen 1, + tt#=
       
//  "input#: char=", prints sss$, printd nl
       
       if vtype#=STRING   then tt#, malloc (input_var)#= sss, swap strcpy
       if vtype#=NUMBER then sss, xval (input_var)#=
       goto cmd_input1

      // セパレータ ',' or ';'
cmd_input2:
      if TokenType#<>DELIMIT then DONE, end
      if TokenText$=',' then getToken gotocmd_input1
      if TokenText$=';' then getToken gotocmd_input1
      DONE, end

  // コンソールから入力
cmd_input3:
    long is_question#
    1, is_question#=

cmd_input4:

      // 文字列のときはプロンプト文字列を表示する
      if TokenType#=STRING then TokenText, prints getToken gotocmd_input4

      // 変数の場合は入力する
      if TokenType#<>VARIABLE goto cmd_input5
      TokenText, 0, get_variable_value input_var#= pop vtype#=

      if is_question#=1 then "? ", prints
      sss, inputs tt#=
      if tt#=3 then 1, BreakFlg#= // CTRL+Cで中断
      sss, strlen 1, + tt#=
      if vtype#=STRING   then tt#, malloc (input_var)#= sss, swap strcpy
      if vtype#=NUMBER then sss, xval (input_var)#=
      1, is_question#=
      goto cmd_input4

      // セパレータ ',' or ';'
cmd_input5:
      if TokenType#<>DELIMIT then DONE, end
      if TokenText$=',' then 1, is_question#= getToken gotocmd_input4
      if TokenText$=';' then 0, is_question#= getToken gotocmd_input4
      DONE, end

// printコマンド
cmd_print:
  long last_char#
  NULL, last_char#=

// "cmd print:", prints nl

  // print#文
  if TokenText$<>'#' goto cmd_print4

// "print#:", prints nl

    getToken
    if TokenType#<>NUMBER then "Syntax Error",  assertError
    TokenValue#, (long) nn#=
    if nn#<0 then "Out of range(print)", assertError
    if  nn#>=MAX_FILES then "Out of range(print)", assertError
    nn#, FILE_SIZE, * Xfp, + fp_adr#=
    if (fp_adr)#(FILE_FP/8)=NULL then  "File is not open", assertError
    
    getToken
    if TokenType#=DELIMIT then if TokenText$=':' goto cmd_print4
    if TokenType#=EOL goto cmd_print4
    ",", checkToken
cmd_print1:
    if TokenType#=EOL then NULL, last_char#= gotocmd_print3
    if TokenType#=DELIMIT then if TokenText$=':' goto cmd_print3

      // データの表示
      clear_value
      eval_expression

      // 文字列型データの表示
      value_type typ#=
      if typ#=STRING then get_string ss#= fp_adr#, fprints ss#, free

      // 数値型データの表示
      if typ#=NUMBER then get_number fp_adr#, fprintr

      check_value
      if TokenType#=EOL then NULL, last_char#= gotocmd_print3
      if TokenType#<>DELIMIT then "Syntax Error", assertError
      TokenText$, last_char#=

      // セパレータが':'の場合
      if last_char#=':' goto cmd_print3

      // セパレータが','の場合
      if last_char#<>',' goto cmd_print2
        ',', fp_adr#, putc  // カンマを出力
        getToken
        goto cmd_print1

      // セパレータが';'の場合
cmd_print2:
      if last_char#<>';' then "Syntax Error", assertError
        getToken
        goto cmd_print1

cmd_print3:
    if last_char#<>';' then  fp_adr#, fnl
    DONE, end

  // print文
cmd_print4:

// "print:", prints nl

    if TokenType#=EOL then NULL, last_char#= gotocmd_print6
    if TokenType#=DELIMIT then if TokenText$=':' goto cmd_print6

      // データの表示
      clear_value
      eval_expression

      // 文字列型データの表示
      value_type typ#=
      if typ#=STRING then get_string ss#= prints ss#, free

      // 数値型データの表示
      if typ#=NUMBER then get_number printr

      check_value
      if TokenType#=EOL then NULL, last_char#= gotocmd_print6
      if TokenType#<>DELIMIT then "Syntax Error", assertError
      TokenText$, last_char#=

      // セパレータが':'の場合
      if last_char#=':' goto cmd_print6

      // セパレータが','の場合
      if last_char#<>',' goto cmd_print5
        ',', putchar  // カンマを出力
        getToken
        goto cmd_print4

      // セパレータが';'の場合
cmd_print5:
      if last_char#<>';' then "Syntax Error", assertError
        getToken
        goto cmd_print4

cmd_print6:
    if last_char#<>';' then  nl
    DONE, end

// stopコマンド
cmd_stop:
  1, BreakFlg#=
  DONE, end

// contコマンド
cmd_cont:

// "cmd cont:", prints nl

  BreakProg#, BreakToken#, exec_basic2
  DONE, end

// runコマンド
cmd_run:

// "cmd run:", prints nl

  cmd_clear               // 変数をクリア
  file_close_all           // ファイルを全て閉じる
  ForStack#,      ForStackP#=      // FOR-NEXT用スタックをクリア
  GosubStack#, GosubStackP#=  // GOSUB-RETURN用スタックをクリア
  TopProg#, CurrentProg#=
  if CurrentProg#=NULL then TERMINATE, end
  CurrentProg#, ->Program.text# TokenP#=
  getToken
  DONE, end

// 代入文
cmd_let:
 long vtyp#,lvar#

// "cmd let:", prints nl

  if TokenType#<>VARIABLE then DONE, end
  
//   "var name=", prints TokenText, prints nl
  
    TokenText, 0, get_variable_value lvar#= pop vtyp#=
    "=", checkToken
    eval_expression
    value_type tt#=

//   "variable type=", prints vtyp#, printd nl
//   "value type=", prints tt#, printd nl

    if tt#<>vtyp# then "Type Mismatch", assertError
    if vtyp#=NUMBER then get_number (lvar)#=
    if vtyp#=STRING   then (lvar)#, free get_string (lvar)#=

// "cmd let end:", prints nl

    DONE, end

// saveコマンド
cmd_save:

// "cmd save:", prints  TokenText, prints nl

  char wfp$(FILE_SIZE)
  if TokenType#<>STRING then "Syntax Error", assertError
  TokenText, wfp, wopen tt#=
  if tt#=ERROR then "can not save", assertError
  TopProg#, pp#=
cmd_save1:
  if pp#=NULL goto cmd_save2
  pp#, ->Program.text# wfp, fprints wfp, fnl
  pp#, ->Program.next# pp#=
  goto cmd_save1
cmd_save2:
  wfp, wclose
  TERMINATE, end

// listコマンド
cmd_list:

// "cmd list:", prints nl

  long list_st#,list_ed#
  0, list_st#= 0x7fffffff, list_ed#=
  
  if TokenType#=NUMBER then get_number list_st#= getToken
  if TokenText$=',' then  getToken
  if TokenText$='-' then  getToken
  if TokenType#=NUMBER then get_number list_ed#= getToken
  TopProg#, pp#=
cmd_list1:
  if pp#=NULL goto cmd_list3
     pp#, ->Program.lineno# tt#=
     if tt#<list_st# goto cmd_list2
     if tt#>list_ed# goto cmd_list2
       tt#, printd " ", prints  pp#, ->Program.text# prints nl
cmd_list2:
     pp#, ->Program.next# pp#=
     goto cmd_list1
cmd_list3:
    TERMINATE, end


// loadコマンド
cmd_load:

// "cmd load:", prints nl

  if TokenType#<>STRING then "Syntax Error", assertError
  TokenText, 1, load_basic
  TERMINATE, end

// byeコマンド
cmd_quit:

// "cmd quit:", prints nl

  QUIT, end

// endコマンド
cmd_end:

// "cmd end:", prints nl

  TERMINATE, end

// newコマンド
cmd_new:

// "cmd new:", prints nl

  clear_program 
  cmd_clear
  TERMINATE, end

// clsコマンド
cmd_cls:

// "cmd cls:", prints nl

  cls
  getToken
  DONE, end

// editコマンド
cmd_edit:

// "cmd edit:", prints nl
 start_editor
 TERMINATE, end

// psetコマンド
cmd_pset:
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) xx#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) yy#=
  ")", checkToken
  if TokenText$<>',' goto cmd_pset1
  getToken
  clear_value
  eval_expression
  get_number (long) xcolor#=
cmd_pset1:
   xx#, yy#, xdraw_point
   xx#, draw_x1#=
   yy#, draw_y1#=
   DONE, end

// lineコマンド
cmd_line:
  long draw_x1#,draw_y1#,draw_x2#,draw_y2#

  // 開始座標を指定する場合
  if TokenText$<>'(' goto cmd_line1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
cmd_line1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto cmd_line2
    getToken
    clear_value
    eval_expression
    get_number (long) xcolor#=

cmd_line2:
  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xdraw_line
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// boxコマンド
cmd_box:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto cmd_box1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
cmd_box1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto cmd_box2
    getToken
    clear_value
    eval_expression
    get_number (long) xcolor#=

cmd_box2:
  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xdraw_rect
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// boxfコマンド
cmd_boxf:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto cmd_boxf1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
cmd_boxf1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto cmd_boxf2
    getToken
    clear_value
    eval_expression
    get_number (long) xcolor#=

cmd_boxf2:
  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xfill_rect
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// circleコマンド
cmd_circle:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto cmd_circle1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
cmd_circle1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto cmd_circle2
    getToken
    clear_value
    eval_expression
    get_number (long) xcolor#=

cmd_circle2:
  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xdraw_circle
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end



// circlefコマンド
cmd_circlef:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto cmd_circlef1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
cmd_circlef1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto cmd_circlef2
    getToken
    clear_value
    eval_expression
    get_number (long) xcolor#=

cmd_circlef2:
  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xfill_circle
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// imageコマンド
cmd_image:

  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x1#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y1#=
  ")", checkToken
  ",", checkToken
  clear_value
  eval_expression
  get_string ss#=
  ss#, sss, strcpy
  ss#, free
  sss, load_image tt#=
  if tt#<>NULL then draw_x1#, draw_y1#, tt#, xdraw_image
  DONE, end

// execコマンド
cmd_exec:

  clear_value
  eval_expression
  get_string ss#=
  ss#, sss, strcpy
  ss#, free
  sss, exec_command
  DONE, end

// locateコマンド
cmd_locate:
  clear_value
  eval_expression
  get_number (long) xx#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) yy#=
  xx#, yy#, locate
  DONE, end

// colorコマンド
cmd_color:
  clear_value
  eval_expression
  get_number (long) xcolor#=
  DONE, end

// make コマンド
cmd_make:

  0, LabelCount#=
 "bas_out.r", CompileFile, strcpy
  if TokenType#=STRING then TokenText, CompileFile, strcpy getToken
  1, IsPass1#=
  xxxopen
  
  "pass1:", prints nl
  
  pass1
  0, IsPass1#=
  
  "pass2:", prints nl
  
  pass2
  " end", xxxprints xxxnl
  clear_variable
  xxxclose
  TERMINATE, end

// elseコマンド
cmd_else:
  "else without if", assertError
  DONE, end

// thenコマンド
cmd_then:
  "then without if", assertError
  DONE, end

// outコマンド
cmd_out:
  clear_value
  eval_expression
  get_number (long) xx#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) yy#=
  xx#, yy#, io_write32
  DONE, end

io_write32:
/ rax=rdi/
/ rdx=rsi/
/ out (dx),eax/
  end

// len関数
func_len:

// "func len:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_string ss#= strlen (double) put_number
  ss#, free
  0, end

// val関数
func_val:

// "func val:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_string ss#= xval put_number
  ss#, free
  0, end

// str$関数
func_strs:

// "func strs:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number xstr put_string
  0, end

// left$関数
func_lefts:

// "func lefts:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ",", checkToken
  eval_expression
  ")", checkToken
  get_number (long) kk#=
  get_string ss0#= strlen ll#=
  0, ii#=
func_lefts1:
  if ii#>=kk# goto func_lefts2
  if ii#>=ll#   goto func_lefts2
  (ss0)$(ii#), sss$(ii#)=
  ii#++
  goto func_lefts1
func_lefts2:
  NULL, sss$(ii#)=
  sss, put_string
  ss0#, free
  0, end


// mid$関数
func_mids:
  long ss0#
  
// "func mids:", prints nl 

  getToken
  "(", checkToken
  eval_expression
  ",", checkToken
  eval_expression
  if TokenText$=','   then  getToken eval_expression gotofunc_midsx
  MAX_STR_LENGTH, (double) put_number
func_midsx:
  ")", checkToken
  get_number (long) jj#=
  get_number (long) 1, - ii#=
  get_string ss0#= strlen ll#=
  jj#, ii#, + jj#=
  0, kk#=
  
// "string=", prints ss0#, prints nl  
  
func_mids1:
  if ii#>=jj# goto func_mids2
  if ii#>=ll# goto func_mids2
  (ss0)$(ii#), sss$(kk#)=
  ii#++
  kk#++
  goto   func_mids1
func_mids2:
  NULL, sss$(kk#)=
  sss, put_string
  ss0#, free
  0, end

// asc関数
func_asc:

// "func asc:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_string ss#=
  (ss)$, (double) put_number
  ss#, free
  0, end

// right$関数/
func_rights:

// "func rights:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ",", checkToken
  eval_expression
  ")", checkToken
  get_number (long) ii#=
 get_string ss0#= strlen ll#=
  ll#, ii#, - ii#=
  if ii#<0 then 0, ii#=
  0, kk#=
func_rights1:
  if ii#>=ll# goto func_rights2
  (ss0)$(ii#), sss$(kk#)=
  ii#++
  kk#++
  goto func_rights1
func_rights2:
  NULL, sss$(kk#)=
  sss, put_string
  ss0#, free
  0, end

// chr$関数
func_chrs:
 char ccc$(2)

// "func chrs:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number (long) ccc$(0)=
  NULL, ccc$(1)=
  ccc, put_string
  0, end

// abs関数
func_abs:
 long vabs#
 
// "func abs:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number vabs#=
  
//  "in=", prints vabs#, printr nl
  
  if vabs#.<^0.0 then  ^0.0, vabs#, .- vabs#=
  
//  "out=", prints vabs#, printr nl
  
  vabs#, put_number

// "func abs end:", prints nl

  0, end

// input$関数
func_inputs:

// "func inputs:", prints nl 

  // コンパイル中ならば終了する
  if IsPass1#=1 goto func_inputs4

  getToken
  "(", checkToken
  eval_expression

  // ファイルから指定文字数入力
  if TokenText$<>',' goto func_inputs1
    getToken
    if TokenText$='#' then getToken
    eval_expression
    ")", checkToken
    get_number (long) kk#=
    if kk#<0 then "Out of range", assertError
    if kk#>=MAX_FILES then "Out of range", assertError
    kk#, FILE_SIZE, * Xfp, + fp_adr#=
    if (fp_adr)#(FILE_FP/8)=NULL then "File is not open", assertError
    get_number (long) nn#=
    nn#, sss, fp_adr#, _read tt#=
    if tt#=0 then EOF_STRING, put_string 0, end
    NULL, sss$(tt#)=
    sss, put_string
    0, end

  // コンソールから指定文字数入力
  func_inputs1:
    ")", checkToken
    get_number (long) nn#=
    0, ii#=
    func_inputs2:
      if ii#>=nn# goto func_inputs3
      getch sss$(ii#)= tt#=
      if tt#>=' ' then ii#++
      goto func_inputs2
    func_inputs3:
    NULL, sss$(ii#)=
    sss, put_string
    0, end

  // コンパイル中による終了処理
  func_inputs4:
    getToken
    "(", checkToken
    eval_expression
    get_number
    if TokenText$<>',' goto func_inputs5
    getToken
    if TokenText$='#' then getToken
    eval_expression
    get_number
  func_inputs5:
    ")", checkToken
    EOF_STRING, put_string
    0, end

// point関数
func_point:

  getToken
  "(", checkToken
  eval_expression
  ",", checkToken
  eval_expression
  ")", checkToken
  get_number (long) yy#=
  get_number (long) xx#=
  xx#, yy#, xget_point  tt#=
  tt#, (double) put_number
  DONE, end

// inkey＄関数
func_inkeys:

// "func inkey:", prints nl

  char inkey_str$(8)
  getToken
  getch inkey_str$=
  NULL, inkey_str+1$=
  inkey_str, put_string
  0, end


// int関数
func_int:

// "func int:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number (_long) (double)  put_number
  0, end

// sqr関数
func_sqr:

// "func sqr:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number sqrt  put_number

// "func sqr end:", prints nl

  0, end

// sin関数
func_sin:

// "func sin:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_sin  put_number

// "func sin end:", prints nl

  0, end

// cos関数
func_cos:

// "func cos:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_cos  put_number

// "func cos end:", prints nl

  0, end

// tan関数
func_tan:

// "func tan:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_tan  put_number

// "func tan end:", prints nl

  0, end

// atn関数
func_atn:

// "func atn:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_arctan  put_number

// "func atn end:", prints nl

  0, end

// exp関数
func_exp:

// "func exp:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_exp  put_number

// "func exp end:", prints nl

  0, end

// log関数
func_log:

// "func log:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_log  put_number

// "func log end:", prints nl

  0, end

// instr関数
func_instr:
  long ss1#

// "func instr:", prints nl 

  getToken
  "(", checkToken
  eval_expression
  ",", checkToken
  eval_expression
  if TokenText$=','   then  getToken eval_expression gotofunc_instr1
  ^1.0, put_number
func_instr1:
  ")", checkToken
  get_number (long) xx#= xx#--
  get_string ss1#=
  get_string ss0#= strlen ll#=
  if xx#<0      then ^0.0, put_number gotofunc_instr2
  if xx#>=ll# then ^0.0, put_number gotofunc_instr2
  ss0#, xx#, + ss1#, strstr xx#=
  if xx#=NULL then ^0.0, put_number gotofunc_instr2
  xx#, ss0#, - 1, + (double) put_number
func_instr2:
  ss0#, free
  ss1#, free
  0, end

// rnd関数
func_rnd:

// "func rnd:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number math_random  put_number

// "func rnd end:", prints nl

  0, end

// time$関数
func_times:

// "func times:", prints nl

  getToken
  "00:00:00", put_string
  0, end


// date$関数
func_dates:

// "func dates:", prints nl

  getToken
  "00/00/00", put_string
  0, end


// sgn関数
func_sgn:
 long vsgn0#,vsgn#
 
// "func sgn:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number vsgn0#=
  
//  "in=", prints vsgn0#, printr nl

  ^0.0, vsgn#=
  if vsgn0#.<^0.0 then  ~1.0, vsgn#=
  if vsgn0#.>^0.0 then  ^1.0, vsgn#=
  
//  "out=", prints vsgn#, printr nl
  
  vsgn#, put_number

// "func sgn end:", prints nl

  0, end

// hex$関数
func_hexs:

// "func hexs:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number (long) hex put_string
  0, end

// bin$関数
func_bins:

// "func bins:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number (long) bin put_string
  0, end

// oct$関数
func_octs:

// "func octs:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number (long) oct put_string
  0, end

// inp関数
func_inp:
 long vinp#
 
// "func inp:", prints nl

  getToken
  "(", checkToken
  eval_expression
  ")", checkToken
  get_number vinp#=
  
//  "in=", prints vinp#, printr nl
  
  vinp#, io_read32 vinp#=
  
//  "out=", prints vinp#, printr nl
  
  vinp#, put_number

// "func inp end:", prints nl

  0, end

io_read32:
/ rdx=rdi/
/ in eax,(dx)/
/ ext eax/
/ rdi=rax/
  end

// =  の確認
eval_eq:

//  "eval eq:", prints nl

  get_number tt#=
  if tt#.=^0.0 then ^1.0, put_number 0, end
  ^0.0, put_number 0, end

// <> の確認
eval_neq:

//  "eval neq:", prints nl

  get_number tt#=
  if tt#.<>^0.0 then ^1.0, put_number 0, end
  ^0.0, put_number 0, end

// <  の確認
eval_lt:

// "eval lt:", prints nl

  get_number tt#=
  if tt#.<^0.0 then ^1.0, put_number 0, end
  ^0.0, put_number 0, end

// <= の確認
eval_le:

//  "eval le:", prints nl

  get_number tt#=
  if tt#.<=^0.0 then ^1.0, put_number 0, end
  ^0.0, put_number 0, end

// >  の確認
eval_gt:

//  "eval gt:", prints nl

  get_number tt#=
  if tt#.>^0.0 then ^1.0, put_number 0, end
  ^0.0, put_number 0, end

.// >= の確認
eval_ge:

//  "eval ge:", prints nl

  get_number tt#=
  if tt#.>=0 then ^1.0, put_number 0, end
  ^0.0, put_number 0, end

// 比較演算
eval_cmp:

//  "eval cmp:", prints nl


  // 文字列の場合
  value_type tt#=
  if  tt#<>STRING goto eval_cmp1
    get_string s1#=
    get_string s2#=
    s1#, s2#, strcmp put_number
    s1#, free
    s2#, free
    0, end

  // 数値の場合
  eval_cmp1:
    get_number d1#=
    get_number d2#=
    d2#, d1#, .- put_number
    0, end

// 論理式 AND演算
eval_and:

//  "eval and:", prints nl

  get_number (long) ss#=
  get_number (long) tt#=
  tt#, ss#, and (double)
  put_number
  0, end

// 論理式 OR 演算
eval_or:

//  "eval or:", prints nl

  get_number (long) ss#=
  get_number (long) tt#=
  tt#, ss#, or (double)
  put_number
  0, end

// べき乗演算
eval_power:

//  "eval power:", prints nl

  get_number ss#=
  get_number tt#=
  tt#, ss#, math_power
  put_number
  0, end

// 除算の余り
eval_mod:

//  "eval mod:", prints nl

  get_number (long) ss#=
  get_number (long) tt#=
  if ss#=0 then "division by zero", assertError
  tt#, ss#, mod (double)
  put_number
  0, end

// 除算演算
eval_div:

//  "eval div:", prints nl

  get_number ss#=
  get_number tt#=
  if ss#=0 then "division by zero", assertError
  tt#, ss#, ./
  put_number
  0, end

// 乗算演算
eval_mul:

//  "eval mul:", prints nl

  get_number ss#=
  get_number tt#=
  tt#, ss#, .*
  put_number
  0, end


// 減算演算
eval_sub:

// "eval sub:", prints nl

  get_number ss#=
  get_number tt#=
  tt#, ss#, .-
  put_number
  0, end



// 加算演算
eval_add:

// "eval add:", prints nl

  get_number ss#=
  get_number tt#=
  tt#, ss#, .+
  put_number
  0, end


// 文字列連結演算
eval_concat:

//  "eval concat:", prints nl

   MAX_STR_LENGTH*2+1, malloc s0#=
  get_string s2#=
  s2#, sss, strcpy
  s2#, free             // ここでs2をコピーして開放しておかないと、次の行でエラーが起きたときに開放されないことになる
  get_string s1#=  // ここでtype-mismatchエラーが起きる可能性がある
  s1#, s0#, strcpy
  s1#, free
  sss, s0#, strcat
  s0#, strlen tt#=
  if tt#>MAX_STR_LENGTH then s0#, free "string is too long", assertError
  s0#, put_string
  0, end

// 原子の処理
eval_atom:
  long sign#,typ#,val#
  0, sign#=

// "eval atom:", prints nl
// "text=", prints TokenText, prints nl

  // 原子の前に＋がついている場合
  if TokenText$='+' then getToken  1, sign#=

  // 原子の前に-がついている場合
  if TokenText$='-' then getToken  -1, sign#=

  // (式)は原子である
  if TokenText$<>'('  goto eval_atom2
    getToken
    sign#, PUSH
    eval_expression
    POP sign#=
    ")", checkToken
    value_type tt#=
    if tt#<>STRING goto eval_atom1
    if sign#<>0 then "Type Mismatch", assertError
    
//    "eval atom(string permanent) end:", prints nl
    
    0, end
    eval_atom1:
    if sign#=-1 then  get_number tt#= ^0.0, tt#, .- put_number
    
//    "eval atom(numeric permanent) end:", prints nl
    
    0, end

  // 数値は原子である
  eval_atom2:
  if TokenType#<>NUMBER goto eval_atom3
    TokenValue#, put_number
    getToken
    if sign#=-1 then  get_number tt#= ^0.0, tt#, .- put_number
    
//    "eval atom(number) end:", prints nl
    
    0, end

  // 文字列は原子である
  eval_atom3:
  if TokenType#<>STRING goto eval_atom4
    TokenText, put_string
    getToken
    if sign#<>0 then "Type Mismatch", assertError
    
//    "eval atom(string) end:", prints nl
    
    0, end

  // 関数は原子である
  eval_atom4:
  if TokenType#<>FUNCTION goto eval_atom5
    sign#, PUSH
    TokenCode#, _Function.SIZE, * Function, + ->@_Function.func
    POP sign#=
    value_type tt#=
    if tt#<>STRING goto eval_atom4_1
    if sign#<>0 then "Type Mismatch", assertError
    
//    "eval atom(string function) end:", prints nl
    
    0, end
    eval_atom4_1:
    if sign#=-1 then  get_number tt#= ^0.0, tt#, .- put_number
    
//    "eval atom(numeric function) end:", prints nl
    
    0, end

  // 変数は原子である
  eval_atom5:
  if TokenType#<>VARIABLE goto eval_atom6

//    "variable:", prints nl
  
    sign#, PUSH
    TokenText, 1, get_variable_value val#= pop typ#=
    POP sign#=

    // 文字列型変数
    if typ#<>STRING goto eval_atom5_1
    (val)#, put_string
    if sign#<>0 then "Type Mismatch",  assertError
    
//    "eval atom(string variable) end:", prints nl
    
    0, end
    
    // 数値型変数
    eval_atom5_1:
    (val)#, put_number
    if sign#=-1 then  get_number tt#= ^0.0, tt#, .- put_number
    
//    "eval atom(numeric variable) end:", prints nl
    
    0, end

  // その他の場合(エラー)
  eval_atom6:

      "Illegal Expression", assertError
    
//    "eval atom(other) end:", prints nl
    
    0, end

// 因子の処理
eval_factor:

// "eval factor:", prints nl

  // 原子を解析
  eval_atom

  // べき乗算は数値型にのみ適用される
  value_type tt#=
  if tt#<>NUMBER then  0, end

eval_factor1:

      // 因子は原子^原子
      if TokenText$='^' then getToken eval_atom eval_power gotoeval_factor1
// "eval factor end:", prints nl
      0, end



// 項の処理
eval_term:

// "eval term:", prints nl

  // 因子を解析
  eval_factor

  // 乗除算は数値型にのみ適用される
  value_type tt#=
  if tt#<>NUMBER  then  0, end

eval_term1:

      // 項は因子*因子
      if TokenText$='*' then getToken eval_factor eval_mul gotoeval_term1

      // 項は因子/因子
      if TokenText$='/' then getToken eval_factor eval_div gotoeval_term1

      // 項は因子 mod 因子
      TokenText, "mod", strcmp tt#=
      if tt#=0 then getToken eval_factor eval_mod gotoeval_term1

// "eval term end:", prints nl
      0, end

// 算術式の処理
eval_aexpression:

// "eval aexpression:", prints nl

  // 項を解析
  eval_term
  value_type tt#=
  if tt#<>STRING goto eval_aexpression2

  // 文字列型の場合
  eval_aexpression1:

      // 式は項+項
      if TokenText$='+' then getToken eval_term eval_concat gotoeval_aexpression1

// "eval aexpression end(string):", prints nl
      0, end

  // 数値型の場合
  eval_aexpression2:
  
// "eval aexpression2:", prints nl
//  "TokenText=", prints TokenText, prints nl 
  
      // 式は項+項
      if TokenText$='+' then getToken eval_term eval_add gotoeval_aexpression2

      // 式は項-項
      if TokenText$='-' then getToken eval_term eval_sub gotoeval_aexpression2

// "eval aexpression end(number):", prints nl
      0, end

// 関係式の処理
eval_relation:

//  "eval relation:", prints nl

  // 式を解析
  eval_aexpression
  
eval_relation1:

    // 論理因子は 式>=式
    TokenText, ">=", strcmp tt#=
    if tt#<>0 goto eval_relation2
      getToken
      eval_aexpression
      eval_cmp
      eval_ge
      goto eval_relation1

    // 論理因子は 式>式
eval_relation2:
    TokenText, ">", strcmp tt#=
    if tt#<>0 goto eval_relation3
      getToken
      eval_aexpression
      eval_cmp
      eval_gt
      goto eval_relation1

    // 論理因子は 式<=式
eval_relation3:
    TokenText, "<=", strcmp tt#=
    if tt#<>0 goto eval_relation4
      getToken
      eval_aexpression
      eval_cmp
      eval_le
      goto eval_relation1

    // 論理因子は 式<式
eval_relation4:
    TokenText, "<", strcmp tt#=
    if tt#<>0 goto eval_relation5
      getToken
      eval_aexpression
      eval_cmp
      eval_lt
      goto eval_relation1

    // 論理因子は 式<>式
eval_relation5:
    TokenText, "<>", strcmp tt#=
    if tt#<>0 goto eval_relation6
      getToken
      eval_aexpression
      eval_cmp
      eval_neq
      goto eval_relation1

    // 論理因子は 式=式
eval_relation6:
    TokenText, "=", strcmp tt#=
    if tt#<>0 goto eval_relation7
      getToken
      eval_aexpression
      eval_cmp
      eval_eq
      goto eval_relation1

    // 上記以外ならば終了
eval_relation7:
//  "eval relation end:", prints nl
    0, end



// 論理項の処理
eval_lterm:

// "eval lterm:", prints nl

  // 論理因子を解析
  eval_relation
eval_lterm1:

  // and以外ならば終了
  TokenText, "and", strcmp tt#=
  if tt#<>0 then  0, end

  // 論理項は論理因子AND論理因子AND_1855474646.
  getToken
  eval_relation
  eval_and
  goto eval_lterm1

// 式の処理
eval_expression:
  long s0#,s1#,s2#,d1#,d2#
  char sss$(MAX_STR_LENGTH+1)

// "eval expression:", prints nl

  // 論理項を解析
  eval_lterm
eval_expression1:

  // OR以外ならば終了
  TokenText, "or", strcmp tt#=
  if tt#<>0 then  0, end 

  // 論理式は論理項OR論理項OR_1855474646.
  getToken
  eval_lterm
  eval_or
  goto eval_expression1


// 文字列をスタックから取りこむ
get_string:
  value_type tt#=
  
//  "get string:", prints nl
  
  if tt#<>STRING then "Type Mismatch", assertError
  CalcStackP#, Value.SIZE, - CalcStackP#=
  CalcStackP#, ->Value.data#  tt#=
  
  
//  "get string:", prints tt#, prints nl
  
  
  tt#, end

// 数値をスタックから取りこむ
get_number:
  long vgetn#
  value_type vgetn#=
  
//  "get number:", prints nl
  
  if vgetn#<>NUMBER then "Type Mismatch", assertError
  CalcStackP#, Value.SIZE, - CalcStackP#=
  CalcStackP#, ->Value.data# vgetn#=
  
//  "value=", prints vgetn#, printr nl
  
  vgetn#, end

// 文字列をスタックに置く
put_string:
  str#= strlen 1, + malloc ss#=
  
//  "put string:", prints str#, prints nl
  
  str#, ss#, strcpy
  STRING, CalcStackP#, ->Value.type#=
  ss#, CalcStackP#, ->Value.data#=
  CalcStackP#, Value.SIZE, + CalcStackP#=
  end
 

// 数値をスタックに置く
put_number:
  long num#
  num#=
  
//  "put number:", prints num#, printr nl 
  
  NUMBER, CalcStackP#, ->Value.type#=
  num#, CalcStackP#, ->Value.data#=
  CalcStackP#, Value.SIZE, + CalcStackP#=
 end
 

// 現在の計算スタックの値の型を返す、スタックに値が入っていない場合は0を返す
value_type:
  long valx#
 
  if CalcStackP#=CalcStack# then 0, end
  CalcStackP#, Value.SIZE, - valx#=
  valx#, ->Value.type# end

// 現在の計算スタックをチェックして整合がとれていなかったらエラーを発生させる
check_value:
  if CalcStackP#<>CalcStack# then "Illegal expression", assertError
  end

// 計算用スタックを初期化する
clear_value:


// "clear value:", prints nl

  // 計算スタックに入っている値を全て取り出す
  if CalcStackP#<=CalcStack# goto clear_value1
  CalcStackP#, Value.SIZE, - CalcStackP#=
  CalcStackP#, ->Value.type# tt#=
  if tt#=STRING then CalcStackP#, ->Value.data# free
  goto clear_value
clear_value1:
  CalcStack#, CalcStackP#=
  end

// 変数の値を格納してあるアドレスを得る
get_variable_value:
  long vii#,force_error#,xvname#,index#,dims#,xdim#,xvar#,xtype#
  force_error#= pop xvname#=
  
//  "get variable value:", prints nl
//  "var name=", prints xvname#, prints nl
  
  xvname#, force_error#, _variable xvar#=
  xvname#, var_type xtype#=

  // 単純変数の場合
  xvar#, ->Variable.dimension# dims#=
//  if dims#=0 then "get variable value end:", prints nl
  if dims#=0 then  getToken var#, ->Variable.value# ->Value.data xtype#, swap end

  // 配列変数の場合
  getToken
  "(", checkToken

  xvar#,   PUSH
  xtype#, PUSH
  dims#,   PUSH
  eval_expression
  POP dims#=
  POP xtype#=
  POP xvar#=

  get_number (long) index#=
  xvar#, ->Variable.dim xdim#=
  if index#<0 then "array range is over", assertError
  if index#>(xdim)#(0) then  "array range is over", assertError
  1, vii#=
get_variable_value1:
  if vii#>=dims# goto get_variable_value2
  ",",  checkToken

  index#, PUSH
  xdim#,  PUSH
  vii#,      PUSH
  xvar#,   PUSH
  xtype#, PUSH
  dims#,   PUSH
  eval_expression
  POP dims#=
  POP xtype#=
  POP xvar#=
  POP vii#=
  POP xdim#=
  POP index#=

  get_number (long) xx#=
  if xx#<0 then "array range is over", assertError
  if xx#>(xdim)#(vii#) then "array range is over", assertError
  index#, (xdim)#(vii#), * xx#, + index#=
  vii#++
  goto get_variable_value1
get_variable_value2:
  ")",  checkToken
  index#, 8, * index#=

//  "get variable value end:", prints nl

  xvar#, ->Variable.value# ->Value.data#  index#, + xtype#, swap end

// 変数名から変数記憶用メモリへのポインタを得る
get_variable:
  var_name#=

// "get variable:", prints nl
// "var name=", prints var_name#, prints nl

  // 変数を探す
  TopVar#, var#=
get_variable1:
  if var#=NULL goto get_variable2
  var#, ->Variable.name# var_name#, strcmp tt#=
  if tt#=0 then  var#, end
  var#, ->Variable.next# var#=
  goto get_variable1

  // 変数が存在しないときはNULLを返す
get_variable2:

// "variable=null", prints nl

  NULL, end

// 変数名から変数を得る
// 変数が存在しないときはエラーを出すように指定されている場合は
// エラーを出して、そうでない場合は新しく変数を作る
_variable:
  long var_name#
  force_error#= pop var_name#= get_variable var#=

// "_variable:", prints nl

  if var#<>NULL then var#, end
  if force_error#<>0 then "variable not found", assertError

  // 変数が見つからなかったら、新しく確保した変数記憶メモリへのポインタを返す 
  
//  "new variable:", prints nl
//  "var name=", prints var_name#, prints nl
  
  
  Variable.SIZE, malloc var#=
  var_name#, strlen 1, + malloc var#, ->Variable.name#=
  var_name#, var#, ->Variable.name# strcpy
  Value.SIZE, malloc var#, ->Variable.value#=
  0, var#, ->Variable.dimension#=

  // 文字列変数の場合は空の文字列で初期化、数値変数の場合は0で初期化する
  var_name#, var_type tt#=
  if tt#<>STRING goto _variable1
  
//  "type string:", prints nl
  
    STRING, var#, ->Variable.value# ->Value.type#=
    ALIGNMENT, malloc tt#= var#, ->Variable.value# ->Value.data#=
    "", tt#, strcpy
     goto _variable2

  // 数値の場合
_variable1:
  
//  "type number:", prints nl
  
   NUMBER, var#, ->Variable.value# ->Value.type#=
   0, var#, ->Variable.value# ->Value.data#=

  // 変数リストに登録する
_variable2:

//  "register variable list:", prints nl

  if TopVar#=NULL then  var#, TopVar#=
  if EndVar#<>NULL then  var#, EndVar#, ->Variable.next#=
  var#, EndVar#=
  NULL, var#, ->Variable.next#=
  var#, end

// 変数名から変数の型を得る
var_type:
  var_name#=  strlen 1, - tt#=
  if (var_name)$(tt#)='$' then STRING, end
  NUMBER, end

// 変数の全クリア
clear_variable:
  TopVar#, var#=

//  "claer variable:", prints nl

clear_variable1:
  if var#=NULL goto clear_variable5
  
    // 配列変数の場合
    var#, ->Variable.dimension# tt#=
    if tt#=0 goto clear_variable3

      // 文字列型配列の場合は各要素に格納されている文字列も消去する必要がある
      var#, ->Variable.name# tt#=
      if  tt#<>STRING goto clear_variable2
        var#, ->Variable.value# ->Value.data# str#=
        var#, ->Variable.dimension# 1, - nn#=
        1, mm#=
        var#, ->Variable.dim pp#=
        for ii#=0 to nn#
          mm#, (pp)#, * mm#=
          pp#, 8, + pp#=
        next ii#
        mm#--
        for ii#=1 to mm#
          (str)#(ii#), free
        next ii#

      // 配列を消去する
      clear_variable2:
      var#, ->Variable.value# ->Value.data# free
      goto clear_variable4

    // 単純変数の場合
    clear_variable3:

      // 文字列変数の場合は格納されている文字列も消去する必要がある
      var#, ->Variable.name# tt#=
      if  tt#=STRING then var#, ->Variable.value# ->Value.data# free

    // 変数を消去する
    clear_variable4:
    var#, vv#=
    var#, ->Variable.next# var#=
    vv#, ->Variable.name# free
    vv#, ->Variable.value# free
    vv#, free
    goto clear_variable1

  clear_variable5:
  NULL, TopVar#= EndVar#=
  end

//  スクリーンエディタ

  const LINES 24
  const COLS  64

  long   xbuf#,li#,li0#,el#
  long   etext#,etext0#,tail#,copy_p#
  long   temp1#,temp2#,temp3#,temp4#
  long   t1#,t2#,t3#,t4#,y0#
  long   xxtext#,xxli#
  long   xk#,k2#
  char   eflg$
  char   efp$(FILE_SIZE),efname$(16),sxbuf$(256)
  short disp_xbuf%(2048)

start_editor:
  cls
  "notitle.txt", efname, strcpy
  1,   li#= li0#= el#=
  100000, malloc xbuf#=
  xbuf#, etext#= tail#= copy_p#=
  0,   xx#= yy#= y0#= (xbuf)$=

  receive_prog

// コマンド（１文字）入力
get_command:
  display
   0, eflg$=
   1, ll#=

// コマンドタイプ０：数字（パラメータ）
get_command0:
   xk#, k2#=
   inkey xk#=
   if xk#=0     goto get_command0
   if xk#=k2# goto get_command0

   if xk+2$<'0' goto get_command1
   if xk+2$>'9' goto get_command1
   if eflg$=0 then 0, ll#=
   ll#, 10, * xk+2$, + '0', - ll#=
   1,  eflg$=
   goto get_command0

// コマンドタイプ１：テキストが空の時は無効
get_command1:
   if tail#=xbuf# goto get_command2
   if xk+2$='s'    then etext#, copy_p#= 
   if xk$=2      then xjump_foward  // 下矢印キー
   if xk+2$='j'     then xjump            
   if xk+2$='.'     then xjump_end
   if xk$=1      then xjump_reverse  // 上矢印キー
   if xk+2$='d'    then delete_line 
   if xk+2$='c'    then copy
   if xk+2$='m'   then modefy
   if xk+2$=';'     then etext#, xxtext#= li#, xxli#= serch
   if xk+2$=':'     then etext#, xxtext#= li#, xxli#= serch_next
   if xk+2$='w'    then write_file

// コマンドタイプ２：常に有効
get_command2:
   if xk+2$='i'    then li#, xxli#= insert
   if xk+2$='a'   then li#, xxli#= 1, ll#= jump_foward nl insert
   if xk+2$='r'   then nl erase_line  read_file
   if xk+2$='q'   goto quit
   if xk+2$='?'   then help
   goto get_command

// 指定行にジャンプ
xjump:
  jump
  li#, li0#=
  etext#, etext0#=
  end

// 後方にジャンプ
xjump_foward:
  jump_foward
  li#, li0#, - LINES-1, - xx#=
  if xx#>0 then xx#, ll#= jump0_foward
  end

// 前方にジャンプ
xjump_reverse:
  jump_reverse
  if li#<li0# then li#, li0#= etext#, etext0#=
  end

// 最終行にジャンプ
xjump_end:
 el#, li#=  li0#=
 tail#, etext#= etext0#=
 LINES/2, ll#= jump0_reverse
 end

// 指定行削除
delete_line:
  if ll#=0 then end
  etext#, temp1#= temp2#=
  li#,   temp3#=
  jump_foward
  if copy_p#<temp1# goto loop5
  if copy_p#<etext#  then xbuf#, copy_p#= gotoloop5
  copy_p#, etext#, - temp1#, + copy_p#=
  loop5:
    if etext#>=tail# goto exit5
    (etext)$, (temp1)$=
    temp1#++
    etext#++
    goto loop5
  exit5:
  0,      (temp1)$=
  temp1#, tail#=
  temp3#, li#, - el#, + el#=
  temp3#, li#=
  temp2#, etext#=
  end

// 指定行コピー
copy:
  etext#, temp1#=
  ll#,    temp2#=
  li#,   temp3#=
  loop6:
  if temp2#<=0      goto exit6
  if temp1#>=tail#  goto exit6
    copy_p#, sxbuf,  strcpy
    copy_p#, etext#= 1, ll#= jump_foward etext#, copy_p#=
    temp1#,  etext#= insert1 etext#, temp1#=
    temp2#--
    goto loop6
  exit6:
  temp3#, li#=
  end

// 現在の行を修正
modefy:
  0, LINES-1, locate erase_line 
  "STRING1? ", prints sxbuf, inputs
  etext#, sxbuf, strstr  temp1#=
  if temp1#=NULL then 0, LINES-1, locate erase_line "STRING NOT FOUND", prints getchar end
  sxbuf, strlen temp1#, + temp2#=
  etext#, temp3#=
  sxbuf,  temp4#=
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
  1, ll#= delete_line insert1
  1, ll#= gotojump_reverse

// 文字列のサーチ
serch:
  0, LINES-1, locate erase_line 
  "STRING? ", prints sxbuf, inputs
serch1:
  etext#, sxbuf, strstr temp1#=
  if temp1#<>NULL then   li#, li0#=  etext#, etext0#= end

// 続けて文字列サーチ
serch_next:
  1, ll#= jump_foward
  if etext#<tail# goto serch1
  xxtext#, etext#=
  xxli#, li#=
  end

// ファイルに出力
write_file:
  0, LINES-1, locate erase_line 
  "FILE NAME? ", prints sxbuf, inputs
  if sxbuf$<>0 then sxbuf, efname, strcpy
  etext#, temp1#=
  li#,   temp2#=
  efname, efp, wopen t1#=
  if t1#=ERROR then "can not open ", prints efname, prints getchar end
  xbuf#, etext#=
  1,  li#=
  loop8:
    if etext#>=tail# goto exit8
    etext#, efp, fprints efp, fnl
    1, ll#= jump_foward
    goto loop8
  exit8:
  temp1#, etext#=
  temp2#, li#=
  efp, wclose
  end

// ファイルから入力
read_file:
  0, LINES-1, locate erase_line 
  "FILE NAME? ", prints sxbuf, inputs
read_file1:
  if sxbuf$<>0 then sxbuf, efname, strcpy
  efname, efp, ropen t1#=
  if t1#=ERROR goto read_error
  xbuf#, etext#=
  1,   li#=
  loop9:
    etext#, efp, finputs temp1#=
    if temp1#=EOF goto exit9
    if (etext)$=0 then " ", etext#, strcpy
    etext#, strlen etext#, + 1, + etext#=
    li#++
    goto loop9
  exit9:
  efp, rclose
  0, (etext)$=
  li#,   el#=
  etext#, tail#=
  xbuf#, etext#= etext0#=
  1, li#= li0#=
  end

// 読み込みエラー
read_error:
  0, LINES-1, locate erase_line
  "can not open ", prints efname, prints getchar
   end


// テキスト挿入
insert:
  erase_line
  "> ", prints sxbuf, inputs
  sxbuf, ".", strcmp temp1#=
  if sxbuf$=NULL then " ", sxbuf, strcpy
  if temp1#=0 then xxli#, ll#= xjump end
  insert1
  goto insert

// １行挿入
insert1:
  li#++
  el#++
  sxbuf, strlen 1, + t1#=
  etext#, t2#=  + etext#=
  t1#, tail#, t3#=  + tail#= t4#=
  if copy_p#>=t2# then copy_p#, t1#, + copy_p#=
  loop10:
    (t3)$, (t4)$=
    t3#--
    t4#--
  if t3#>=t2# goto loop10
  sxbuf, t2#, strcpy
  end

// 終わり
quit:
  send_prog
  xbuf#, free
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
   etext0#, tx0#=
   disp_xbuf, ds#=
   1, ii#=
   1, jj#=
display1:
   if  tx0#>=tail# goto display4
   if (tx0)$=NULL then tx0#++ gotodisplay2
   (tx0)$, (ds)%=
   tx0#++
   ds#, 2, + ds#=
   jj#++
   if jj#<=COLS goto display1
   goto display3
display2:
   ' ', (ds)%=
   ds#, 2, + ds#=
   jj#++
   if jj#<=COLS goto display2
display3:
   CR, (ds)%=
   ds#, 2, + ds#=
   LF, (ds)%=
   ds#, 2, + ds#=
   1, jj#=
   ii#++
   if ii#<=LINES goto display1
   goto set_locate

display4:
   '~', (ds)%=
   ds#, 2, + ds#=
   jj#++
display5:
   ' ', (ds)%=
   ds#, 2, + ds#=
   jj#++
   if jj#<=COLS goto display5
display6:
   CR, (ds)%=
   ds#, 2, + ds#=
   LF, (ds)%=
   ds#, 2, + ds#=
   1, jj#=
   ii#++
   if ii#<=LINES goto display4

set_locate:
   0, cursor
   NULL, (ds)%=
   0, 0, locate
   disp_xbuf, wputs
   0, LINES, locate erase_line li#, printd
   li#, li0#, - kk#=
   0, kk#, locate
   1, cursor
  end

// 指定行にジャンプ
jump_foward:
   li#, ll#, + ll#=
   goto jump_foward1

// 後ろにジャンプ
jump:
  xbuf#, etext#=
  1, li#=
  jump_foward1:
    if li#>=ll# then end
    jump_foward2:
      if etext#>=tail# then el#, li#= tail#, etext#= end
      etext#++
    if (etext)$<>NULL goto jump_foward2
    etext#++
    li#++
  goto jump_foward1

// 前にジャンプ
jump_reverse:
  li#,   ll#, - ll#=
  jump_reverse1:
    if li#<=ll# then end
    etext#--
    jump_reverse2:
      if etext#<=xbuf# then 1, li#= xbuf#, etext#= end
      etext#--
    if (etext)$<>NULL goto jump_reverse2
    etext#++
    li#--
  goto jump_reverse1

// 後ろにジャンプ
jump0_foward:
  li0#, ll#, + ll#=
  goto jump01

// 指定行にジャンプ
jump0:
  xbuf#, etext0#=
  1,   li0#=
  jump01:
    if  li0#>=ll# then end
    jump02:
      if etext0#>=tail# then end
      etext0#++
    if (etext0)$<>NULL   goto jump02
    etext0#++
    li0#++
  goto jump01

// 前にジャンプ
jump0_reverse:
  li0#,   ll#, - ll#=
  jump0_reverse1:
    if li0#<=ll# then end
    etext0#--
    jump0_reverse2:
      if etext0#<=xbuf# then 1, li#= xbuf#, etext#= end
      etext0#--
    if (etext0)$<>NULL goto jump0_reverse2
    etext0#++
    li0#--
  goto jump0_reverse1

// 一行画面消去
erase_line:
  13, putch
  for nn#=1 to COLS
    ' ', putch
  next nn#
  13, putch
  end

// プログラムを受け取る
receive_prog:
  TopProg#, pp#=
  xbuf#, etext#=
  1,   li#=
receive_prog1:
  if pp#=NULL goto receive_prog2
  pp#, ->Program.text# etext#, strcpy
  if (etext)$=0 then  " ", etext#, strcpy
  etext#, strlen etext#, + 1, + etext#=
  li#++
  pp#, ->Program.next# pp#=
  goto receive_prog1
receive_prog2:
  NULL, (etext)$=
  li#,   el#=
  etext#, tail#=
  xbuf#, etext#= etext0#=
  1, li#= li0#=
  end

// プログラムを送る
send_prog:
  etext#, temp1#=
  li#,   temp2#=
  xbuf#, etext#=
  1,  li#=
  cmd_new
send_prog1:
    if etext#>=tail# goto send_prog2
    etext#, append_line
    1, ll#= jump_foward
    goto send_prog1
send_prog2:
  temp1#, etext#=
  temp2#, li#=
  end

// コンパイル用変数
  long IsPass1#
  long LabelCount#
  char CompileFile$(512)
  char xxxfp$(FILE_SIZE)
  long xxxstatus#
// コンパイル用入出力関数

// ファイルを開く
xxxopen:
  0, xxxstatus#=
  CompileFile, xxxfp, wopen tt#=
  if tt#=ERROR then ERROR, xxxstatus#= "can not compile",  assertError
  end

// ファイルを閉じる
xxxclose:
  if xxxstatus#=ERROR then end
  xxxfp, wclose
  ERROR, xxxstatus#=
  end

// 1文字出力
xxxputchar:
  long xxxtt#
  xxxtt#=
  if xxxstatus#=ERROR then "can not compile", assertError
  xxxtt#, xxxfp, putc
//  xxxtt#, putchar
  end

// 文字列を出力
xxxprints:
  long xxxuu#
  xxxuu#=
  if xxxstatus#=ERROR then "can not compile", assertError
  xxxuu#, xxxfp, fprints
//  xxxuu#, prints
  end

// 改行コードを出力
xxxnl:

//  13, xxxputchar
  10, xxxputchar
  end

// 整数を出力
xxxprintd:
  dec xxxprints
  end

// 実数を出力
xxxprintr:
  xstr xxxprints
  end

// トークンを切り出してバッファに格納する
pass1_getToken:

// "pass1_getToken:", prints TokenP#, prints nl

  NULL, TokenText$=
  0, ii#=

  // 空白や制御文字をスキップする
pass1_getToken1:
   if (TokenP)$>' ' goto pass1_getToken2
     if (TokenP)$=NULL then EOL, TokenType#= end
     TokenP#++
     goto pass1_getToken1

  // "'"が現れたときは行の終わり
pass1_getToken2:
  if (TokenP)$=A_QUOT then EOL, TokenType#= end

  // 先頭が"であれば次の"までは文字列
  if (TokenP)$<>DBL_QUOT goto pass1_getToken4
    STRING, TokenType#=
    TokenP#++
pass1_getToken3:
   if (TokenP)$=NULL then "SyntaxError", assertError
   if (TokenP)$<>DBL_QUOT then (TokenP)$, TokenText$(ii#)= TokenP#++ ii#++ gotopass1_getToken3
   TokenP#++
    NULL, TokenText$(ii#)=
//    "string:", prints nl 
    end

  // 先頭がアルファベット
pass1_getToken4:
  (TokenP)$, is_symbol_char0 tt#=
  if tt#=0 goto pass1_getToken10
  
//  "symbol char:", prints nl
  
pass1_getToken5:
  (TokenP)$, is_symbol_char tt#=
  if tt#=1 then  (TokenP)$, TokenText$(ii#)= TokenP#++ ii#++ gotopass1_getToken5
  NULL, TokenText$(ii#)=

//  "TokenText=", prints TokenText, prints nl

    // "else"キーワードが出てきたら行の終わりと判断する
pass1_getToken6:
    TokenText, "else", strcmp tt#=
    if tt#=0 then EOL, TokenType#= end

    // Basicのコマンドの場合
    pass1_Command, pp#= 0, ii#=
pass1_getToken7:
    pp#, ->_Command.keyword# qq#=
    if qq#=NULL goto  pass1_getToken8
    TokenText, qq#, strcmp tt#=
    if tt#=0 then  COMMAND, TokenType#= ii#, TokenCode#= end
    pp#, _Command.SIZE, + pp#=
    ii#++
    goto pass1_getToken7

    // 関数の場合
pass1_getToken8:
    Function, pp#= 0, ii#=
pass1_getToken8x:
    pp#, ->_Function.keyword# qq#=
    if qq#=NULL goto  pass1_getToken9
    TokenText, qq#, strcmp tt#=
    if tt#=0 then  FUNCTION, TokenType#= ii#, TokenCode#= end
    pp#, _Function.SIZE, + pp#=
    ii#++
    goto pass1_getToken8x

    // コマンドでも関数でもないときは変数とみなす
pass1_getToken9:
  
//  "variable:", prints nl
  
    VARIABLE, TokenType#= end

  // 先頭がラベルの先頭文字であれば英数字と'_'が続いているところはラベル
pass1_getToken10:
  if (TokenP)$<>LABEL_HEADER goto pass1_getToken20
    LABEL, TokenType#=
    TokenP#++
    0, TokenCode#=
pass1_getToken11:
    (TokenP)$, is_symbol_char tt#=
    if tt#=1 then (TokenP)$, TokenText$(ii#)= TokenCode#, + TokenCode#= TokenP#++ ii#++ gotopass1_getToken11
    NULL, TokenText$(ii#)=
  
//  "label:", prints nl
//  "TokenText=", prints TokenText, prints nl

  
    end

// 先頭が'&' , '.' あるいは'0'~'9'で始まっている場合が数値
pass1_getToken20:
  (TokenP)$, cc#=
  if cc#='&' goto pass1_getToken21
  if cc#='.'   goto pass1_getToken21
  if cc#<'0'  goto pass1_getToken30
  if cc#>'9'  goto pass1_getToken30

pass1_getToken21:
      NUMBER, TokenType#=
      TokenP#, xval TokenValue#= pop tt#=
      if TokenValue#=NaN then "Bad Number Format", assertError
      0, ii#=
pass1_getToken22:
      (TokenP)$, TokenText$(ii#)=
      TokenP#++
      ii#++
      if TokenP#<tt# goto pass1_getToken22
      NULL, TokenText$(ii#)=
      end

// 上記以外は区切り文字
pass1_getToken30:
    DELIMIT, TokenType#=
    cc#, TokenText$(ii#)=
    ii#++
    TokenP#++
    (TokenP)$, bb#=
    
    if cc#<>'=' goto pass1_getToken31
    if bb#='<' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass1_getToken33 
    if bb#='>' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass1_getToken33 

pass1_getToken31:
    if cc#<>'<' goto pass1_getToken32
    if bb#='=' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass1_getToken33 
    if bb#='>' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass1_getToken33 

pass1_getToken32:
    if cc#<>'>' goto pass1_getToken33
    if bb#='=' then bb#, TokenText$(ii#)= ii#++ TokenP#++

pass1_getToken33:
    NULL, TokenText$(ii#)=
  
//  "delimitter:", prints nl
//  "TokenText=", prints TokenText, prints nl

 end

// トークンが正しければ次のトークンを読み込み
// トークンが間違っていたらエラーを発生させる
pass1_checkToken:
  token#=
  
//  "pass1 check token:", prints nl
  
  TokenText, token#, strcmp tt#=
  if tt#<>0 then "Syntax Error", assertError
  pass1_getToken
  end

// BASICのプログラムをコンパイルする(pass1)
pass1:
 long pass1_code#

//  "pass1:", prints nl

  0, status#=
  TopProg#, CurrentProg#=
  if CurrentProg#=NULL then end
  clear_value
  CurrentProg#, ->Program.text# TokenP#= 
  pass1_getToken // 最初のトークン切り出し

  // ループ
  pass1_1:

  char xxxdmy$(512)

//  TokenText, prints " > ", prints xxxdmy, inputs


    // トークンがCOMMANDなら次のトークンをとりだしてDISPATCH
    if TokenType#<>COMMAND goto pass1_3

//  "pass1 command:", prints nl

pass1_2:
     TokenCode#, _Command.SIZE, * pass1_code#=
      pass1_getToken
      pass1_Command, pass1_code#, + ->@_Command.func status#=
      if status#<>DONE then "irreagal command", assertError  
      goto pass1_1

// トークンが変数なら代入
pass1_3:
    if TokenType#=VARIABLE then pass1_cmd_let gotopass1_1


// トークンがEOLなら次の行へ
    if TokenType#<>EOL goto pass1_4

//  "pass1 eol:", prints nl

      // 次の行に移る
      CurrentProg#, ->Program.next# CurrentProg#=

      // 最終行(中身無し)に到達するとコードを出力
      if CurrentProg#=NULL goto pass1_6

      // テキストポインタを設定
      CurrentProg#, ->Program.text# TokenP#=
      pass1_getToken
      goto pass1_1

// マルチステートメントの処理
pass1_4:
    if TokenType#<>DELIMIT goto pass1_5

//  "pass1 delimit:", prints nl

      if TokenText$=':' then getToken gotopass1_1
      "Syntax Error", assertError

// ラベルの場合は無視(1つの行に2個以上ラベルがある場合は、最初のラベル以外は無視されるので注意)
pass1_5:
    if TokenType#=LABEL then getToken gotopass1_1

    // 上記以外の場合は文法エラー  

  "pass1 other:", prints nl

    "Syntax Error", assertError
    end

// コードを出力する
pass1_6:

//  "pass1 put code  > ", prints xxxdmy, inputs

// 変数
pass1_8:
        xxxnl "// Variables", xxxprints xxxnl
        
        
//  "pass1 put code next > ", prints xxxdmy, inputs
        
        
        TopVar#, var#=
pass1_9:
        if var#=NULL goto pass1_17
          var#, ->Variable.name# vname, strcpy
          var#, ->Variable.value# ->Value.type# vtype#=

          // 文字列型
          if vtype#<>STRING goto pass1_12

// "dimension=", prints var#, ->Variable.dimension# printd nl

            vname, strlen tt#= tt#-- '_', vname$(tt#)=
            var#, ->Variable.dimension# nn#=
            if nn#<=0 goto pass1_11

// 文字列配列
pass1_10:
            nn#--
            var#, ->Variable.dim dx#= 
            512, kk#=
            for ii#=0 to nn#
              (dx)#(ii#), 1, + kk#, * kk#=
            next ii#
            " char ", xxxprints
            vname, xxxprints
            "$(", xxxprints
            kk#, xxxprintd
            ")", xxxprints
            xxxnl
            goto pass1_16

// 文字列変数
pass1_11:
            " char ", xxxprints
            vname, xxxprints
            "$(512)", xxxprints
            xxxnl
            goto pass1_16


// 数値型
pass1_12:
          if vtype#<>NUMBER goto pass1_15
            var#, ->Variable.dimension# nn#=
            if nn#<=0 goto pass1_14

// 数値配列
pass1_13:
            nn#--
            var#, ->Variable.dim dx#= 
            1, kk#=
            for ii#=0 to nn#
              (dx)#(ii#), 1, + kk#, * kk#=
            next ii#
            " long ", xxxprints
            vname, xxxprints
            "#(", xxxprints
            kk#, xxxprintd
            ")", xxxprints
            xxxnl
            goto pass1_16

// 数値変数
pass1_14:
            " long ", xxxprints
            vname, xxxprints
            "#", xxxprints
            xxxnl
            goto pass1_16

// カウンタ変数
pass1_15:
          if vtype#<>COUNT goto pass1_16
            " count ", xxxprints
            vname, xxxprints
            "#", xxxprints
            xxxnl
            goto pass1_16

// 次の変数に移る
pass1_16:
            var#, ->Variable.next# var#=
            goto pass1_9

// 終了処理
pass1_17:
        clear_value
        NULL, BreakProg#= CurrentProg#=
        TERMINATE, end

// waitコマンド
pass1_cmd_wait:

// "pass1 cmd wait:", prints nl

  clear_value
  eval_expression
  get_number
  DONE, end

// clearコマンド
pass1_cmd_clear:

// "pass1 cmd clear:", prints nl

  DONE, end

// closeコマンド
pass1_cmd_close:

// "pass1_cmd close:", prints nl

  if TokenText$<>'#' goto pass1_cmd_close1
    pass1_getToken
    pass1_getToken

pass1_cmd_close1:
    DONE, end

// openコマンド
pass1_cmd_open:

// "pass1 cmd open:", prints nl

  clear_value
  eval_expression
  "for", checkToken
  0, io_flg#=
  TokenText, "input",   strcmp ss#=
  TokenText, "output", strcmp tt#=
  ss#, tt#, * ss#=
  if ss#<>0 then "Syntax Error", assertError
  if tt#=0 then 1, io_flg#= 
  pass1_getToken
  "as", pass1_checkToken
  "#",  pass1_checkToken
  if TokenType#<>NUMBER then "Syntax Error", assertError
  TokenValue#, (long) nn#=
  
//  "file no=", prints nn#, printd nl
  
  if nn#<0 then "Out of Range", assertError
  if nn#>=MAX_FILES then "Out of Range", assertError
  pass1_getToken
  DONE, end

// dimコマンド
pass1_cmd_dim:

// "pass1 cmd dim:", prints nl

    if TokenType#<>VARIABLE then "Syntax Error", assertError
    TokenText, vname, strcpy

//   "dim var=", prints vname, prints nl

    vname, var_type vtype#= 
    getToken
    "(", checkToken
    0, dx#=
    pass1_cmd_dim1:
      clear_value
      eval_expression
      if dx#>=MAX_DIMENSION then  "dimension size over", assertError
      get_number (long) tt#=
      if tt#<=0 then "Out of Range", assertError
      tt#, dim#(dx#)= dx#++
      if TokenText$=')' goto pass1_cmd_dim2
      ",", checkToken
      goto pass1_cmd_dim1

pass1_cmd_dim2:
    vname, 0, _variable var#=
    dx#, var#, ->Variable.dimension#=
    dx#--
    1, nn#=
    var#, ->Variable.dim pp#=
    for ii#=0 to dx#
    dim#(ii#), (pp)#(ii#)= 1, + nn#, * nn#=
    next ii#

    // 文字列型配列を初期化
    if vtype#<>STRING goto pass1_cmd_dim3
      nn#, 8, * malloc pp#=
      var#, ->Variable.value# ->Value.data#=
      nn#--
      for ii#=0 to nn#
        ALIGNMENT, malloc (pp)#(ii#)=
        "", (pp)#(ii#), strcpy
      next ii#
      goto pass1_cmd_dim4

    // 数値型配列を初期化
pass1_cmd_dim3:
      nn#, 8, * malloc pp#=
      var#, ->Variable.value# ->Value.data#=
      nn#--
      for ii#=0 to nn#
         0, (pp)#(ii#)=
      next ii#
     
pass1_cmd_dim4:
    getToken
    if TokenText$<>','  goto pass1_cmd_dim5
    getToken
    goto pass1_cmd_dim

pass1_cmd_dim5:
  getToken
  DONE, end

// ifコマンド
pass1_cmd_if:

// "pass1 cmd if:", prints nl

  // 論理式が真ならば"thenをチェックしてその次から始める"
  eval_expression
    "then", pass1_checkToken
    if TokenType#=LABEL then pass1_getToken
    DONE, end


// returnコマンド
pass1_cmd_return:

// "pass1 cmd return:", prints nl

//  if GosubStackP#<GosubStack# then "return without gosub", assertError
//  GosubStackP#, _GosubStack.SIZE, - GosubStackP#=
//  GosubStackP#, ->_GosubStack.token_p# TokenP#=
//  GosubStackP#, ->_GosubStack.program# CurrentProg#=
//  getToken
  DONE, end

// gosubコマンド
pass1_cmd_gosub:
  
//  "pass1 cmd gosub:", prints nl

  if TokenType#<>LABEL then "Syntax Error", assertError
  pass1_getToken

  DONE, end

// nextコマンド
pass1_cmd_next:

// "cmd next:", prints nl

//  long for_var#
//  if ForStackP#<=ForStack# then  "next without for", assertError
//  ForStackP#, _ForStack.SIZE, - ForStackP#=

  // nextの後に変数名がある場合
  if TokenType#<>VARIABLE goto pass1_cmd_next1
//    TokenText, get_variable ->Variable.value# ->Value.data ForStackP#, ->_ForStack.var#  - tt#=
//    if tt#<>0 then "next without for", assertError
    pass1_getToken

  // STEP値をループ変数へ加える
pass1_cmd_next1:
//  ForStackP#, ->_ForStack.var# for_var#=
//  ForStackP#, ->_ForStack.step# (for_var)#, .+ (for_var)#=

  // 終了条件を満たさなければループエントリーに戻る
//  (for_var)#, ForStackP#, ->_ForStack.limit# .- ForStackP#, ->_ForStack.step# .*  tt#=
//  if tt#.>^0.0 goto pass1_cmd_next2
//    ForStackP#, ->_ForStack.token_p# TokenP#=
//    ForStackP#, ->_ForStack.program# CurrentProg#= 
//    ForStackP#, _ForStack.SIZE, + ForStackP#=
//    getToken
//pass1_cmd_next2:
    DONE, end    

// forコマンド
pass1_cmd_for:

// "cmd for:", prints nl

//  ForStack#, STACK_SIZE, + tt#=
//  if ForStackP#>=tt# then "stack over flow (for-next)", assertError
  if TokenType#<>VARIABLE  then "Syntax Error", assertError

  // ループ変数を確保
  TokenText, 0, _variable for_var#= 

  COUNT, for_var#, ->Variable.value# ->Value.type#=

  // ループ変数に初期値代入
  pass1_cmd_let

  "to", checkToken

  // ループ変数上限を得る
  clear_value
  eval_expression
  get_number

  // STEP値がある場合
  TokenText, "step", strcmp tt#=
  if tt#<>0 goto pass1_cmd_for1
    getToken
    clear_value
    eval_expression
    get_number
    goto pass1_cmd_for2 

  // STEP値が省略された場合
pass1_cmd_for1:
//  ^1.0,  ForStackP#, ->_ForStack.step#=

  // 現在の実行位置をスタックへ保存
pass1_cmd_for2:
//  CurrentProg#, ForStackP#, ->_ForStack.program#=
//  TokenP#, ForStackP#, ->_ForStack.token_p#=
//  ForStackP#,  _ForStack.SIZE, + ForStackP#=
  DONE, end

// gotoコマンド
pass1_cmd_goto:

// "pass1 cmd goto:", prints nl

  if TokenType#<>LABEL then "Syntax Error", assertError
  pass1_getToken

  DONE, end

// inputコマンド
pass1_cmd_input:

  // ファイルから入力
  if TokenText$<>'#' goto pass1_cmd_input3
    getToken
    TokenValue#, (long) nn#=
    if nn#<0 then   "Out of range(input)", assertError
    if nn#>=MAX_FILES then  "Out of range(input)", assertError
//    nn#, FILE_SIZE, * Xfp, + fp_adr#=
//    if (fp_adr)#(FILE_FP/8)=NULL  then "File is not oen", assertError
    getToken

      // 変数の場合は入力する
pass1_cmd_input1:
      if TokenType#<>VARIABLE goto pass1_cmd_input2
      TokenText, 0, get_variable_value input_var#= pop vtype#=

         "0", sss, strcpy

//       sss, fp_adr#, finputs tt#=
//       if tt#=EOF then EOF, sss+0$= NULL, sss+1$=
       sss, strlen 1, + tt#=
       
//  "input#: char=", prints sss$, printd nl
       
       if vtype#=STRING   then tt#, malloc (input_var)#= sss, swap strcpy
       if vtype#=NUMBER then sss, xval (input_var)#=
       goto pass1_cmd_input1

      // セパレータ ',' or ';'
pass1_cmd_input2:
      if TokenType#<>DELIMIT then DONE, end
      if TokenText$=',' then getToken gotopass1_cmd_input1
      if TokenText$=';' then getToken gotopass1_cmd_input1
      DONE, end

  // コンソールから入力
pass1_cmd_input3:
    1, is_question#=

pass1_cmd_input4:

      // 文字列のときはプロンプト文字列を表示する
      if TokenType#=STRING then TokenText, prints getToken gotopass1_cmd_input4

      // 変数の場合は入力する
      if TokenType#<>VARIABLE goto pass1_cmd_input5
      TokenText, 0, get_variable_value input_var#= pop vtype#=

         "0", sss, strcpy 13, tt#=

//      if is_question#=1 then "? ", prints
//      sss, inputs tt#=

      if tt#=3 then 1, BreakFlg#= // CTRL+Cで中断
      sss, strlen 1, + tt#=
      if vtype#=STRING   then tt#, malloc (input_var)#= sss, swap strcpy
      if vtype#=NUMBER then sss, xval (input_var)#=
      1, is_question#=
      goto pass1_cmd_input4

      // セパレータ ',' or ';'
pass1_cmd_input5:
      if TokenType#<>DELIMIT then DONE, end
      if TokenText$=',' then 1, is_question#= getToken gotopass1_cmd_input4
      if TokenText$=';' then 0, is_question#= getToken gotopass1_cmd_input4
      DONE, end

// stopコマンド
pass1_cmd_stop:
  1, BreakFlg#=
  DONE, end

// contコマンド
pass1_cmd_cont:

// "pass1 cmd cont:", prints nl

  "illegal command", assertError

  TERMINATE, end

// runコマンド
pass1_cmd_run:

// "pass1 cmd run:", prints nl

  "illegal command", assertError

  TERMINATE, end

// 代入文
pass1_cmd_let:

// "pass1 cmd let:", prints nl

  if TokenType#<>VARIABLE then DONE, end
  
//   "var name=", prints TokenText, prints nl
  
    TokenText, 0, get_variable_value lvar#= pop vtyp#=
    "=", checkToken
    eval_expression
    value_type tt#=

//   "variable type=", prints vtyp#, printd nl
//   "value type=", prints tt#, printd nl

    if tt#<>vtyp# then "Type Mismatch", assertError
    if vtyp#=NUMBER then get_number (lvar)#=
    if vtyp#=STRING   then (lvar)#, free get_string (lvar)#=

// "cmd let end:", prints nl

    DONE, end

// saveコマンド
pass1_cmd_save:

// "pass1 cmd save:", prints  TokenText, prints nl

  "illegal command", assertError

  TERMINATE, end

// listコマンド
pass1_cmd_list:

// "pass1 cmd list:", prints nl

  "illegal command", assertError

    TERMINATE, end

// loadコマンド
pass1_cmd_load:

// "pass1 cmd load:", prints nl

 "illegal command", assertError

  TERMINATE, end

// byeコマンド
pass1_cmd_quit:

// "pass1 cmd quit:", prints nl

  "illegal command", assertError

  QUIT, end

// endコマンド
pass1_cmd_end:

// "pass1 cmd end:", prints nl

  DONE, end

// newコマンド
pass1_cmd_new:

// "pass1_cmd new:", prints nl

 "illegal commmand", assertError

//  clear_program 
//  cmd_clear
  TERMINATE, end

// clsコマンド
pass1_cmd_cls:

// "pass1 cmd cls:", prints nl

//  cls
  getToken
  DONE, end

// editコマンド
pass1_cmd_edit:

// "pass1 cmd edit:", prints nl
// start_editor
  "illegal command", assertError
 TERMINATE, end

// psetコマンド
pass1_cmd_pset:

// "pass1 cmd pset", prints nl

  "(", checkToken
  clear_value
  eval_expression
  get_number (long) xx#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) yy#=
  ")", checkToken
  if TokenText$<>',' goto pass1_cmd_pset1
  getToken
  clear_value
  eval_expression 
pass1_cmd_pset1:
//   xx#, yy#, xdraw_point
   xx#, draw_x1#=
   yy#, draw_y1#=
   DONE, end

// lineコマンド
pass1_cmd_line:

// "pass1 cmd line:", prints nl

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass1_cmd_line1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
pass1_cmd_line1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto pass1_cmd_line2
    getToken
    clear_value
    eval_expression
pass1_cmd_line2:
//  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xdraw_line
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// boxコマンド
pass1_cmd_box:

// "pass1 cmd box", prints nl

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass1_cmd_box1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
pass1_cmd_box1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto pass1_cmd_box2
    getToken
    clear_value
    eval_expression
pass1_cmd_box2:
//  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xdraw_rect
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// boxfコマンド
pass1_cmd_boxf:

// "pass1 cmd boxf:", prints nl

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass1_cmd_boxf1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
pass1_cmd_boxf1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto pass1_cmd_boxf2
    getToken
    clear_value
    eval_expression
pass1_cmd_boxf2:
//  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xfill_rect
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// circleコマンド
pass1_cmd_circle:

// "pass1 cmd circle:", prints nl

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass1_cmd_circle1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
pass1_cmd_circle1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto pass1_cmd_circle2
    getToken
    clear_value
    eval_expression
pass1_cmd_circle2:
//  draw_x1#, draw_y1#, draw_x2#, draw_y2#, xdraw_circle
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// circlefコマンド
pass1_cmd_circlef:

// "pass1 cmd circlef", prints nl

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass1_cmd_circlef1
    getToken
    clear_value
    eval_expression
    get_number (long) draw_x1#=
    ",", checkToken
    clear_value
    eval_expression
    get_number (long) draw_y1#=
    ")", checkToken

  // 開始座標を指定しないときはここから始める
pass1_cmd_circlef1:
  "-", checkToken
  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x2#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y2#=
  ")", checkToken
  if TokenText$<>',' goto pass1_cmd_circlef2
    getToken
    clear_value
    eval_expression
pass1_cmd_circlef2:
//  draw_x1#, draw_y1#, draw_x2#, draw_y2#, fill_circle
  draw_x2#, draw_x1#=
  draw_y2#, draw_y1#=
  DONE, end

// imageコマンド
pass1_cmd_image:

// "pass1 cmd image", prints nl

  "(", checkToken
  clear_value
  eval_expression
  get_number (long) draw_x1#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) draw_y1#=
  ")", checkToken
  ",", checkToken
  clear_value
  eval_expression
  get_string ss#=
  ss#, sss, strcpy
  ss#, free
//  sss, load_image tt#=
//  if tt#<>NULL then draw_x1#, draw_y1#, tt#, xdraw_image
  DONE, end

// execコマンド
pass1_cmd_exec:

// "pass1 cmd exec:", prints nl

  clear_value
  eval_expression
  get_string ss#=
//  ss#, sss, strcpy
  ss#, free
//  sss, exec_command
  DONE, end

// locateコマンド
pass1_cmd_locate:

// "pass1 cmd locate:", prints nl

  clear_value
  eval_expression
  get_number (long) xx#=
  ",", checkToken
  clear_value
  eval_expression
  get_number (long) yy#=
//  xx#, yy#, locate
  DONE, end

// colorコマンド
pass1_cmd_color:

// "pass1 cmd color", prints nl

  clear_value
  eval_expression
  get_number (long) tt#=
//  tt#, xcolor#=
  DONE, end

// pass1コマンド
pass1_Command:
  data "run",pass1_cmd_run
  data "if",pass1_cmd_if
  data "for",pass1_cmd_for
  data "next",pass1_cmd_next
  data "goto",pass1_cmd_goto
  data "gosub",pass1_cmd_gosub
  data "return",pass1_cmd_return
  data "print",pass1_cmd_print
  data "input",pass1_cmd_input
  data "clear",pass1_cmd_clear
  data "pset",pass1_cmd_pset
  data "cls",pass1_cmd_cls
  data "line",pass1_cmd_line
  data "locate",pass1_cmd_locate
  data "dim",pass1_cmd_dim
  data "open",pass1_cmd_open
  data "close",pass1_cmd_close
  data "box",pass1_cmd_box
  data "boxf",pass1_cmd_boxf
  data "circle",pass1_cmd_circle
  data "circlef",pass1_cmd_circlef
//  data "start",pass1_cmd_start
  data "exec",pass1_cmd_exec
  data "wait",pass1_cmd_wait
  data "image",pass1_cmd_image
  data "save",pass1_cmd_save
  data "edit",pass1_cmd_edit
  data "load",pass1_cmd_load
  data "new",pass1_cmd_new
//  data "let",pass1_cmd_let
  data "end",pass1_cmd_end
  data "list",pass1_cmd_list
  data "run",pass1_cmd_run
  data "bye",pass1_cmd_quit
  data "stop",pass1_cmd_stop
  data "cont",pass1_cmd_cont
  data "color",pass1_cmd_color
//  data "make",pass1_cmd_make
  data "else",pass1_cmd_else
  data NULL,NULL

// printコマンド
pass1_cmd_print:
  NULL, last_char#=

// "pass1 cmd print:", prints nl

  // print#文
  if TokenText$<>'#' goto pass1_cmd_print4

// "pass1 print#:", prints nl

    getToken
    if TokenType#<>NUMBER then "Syntax Error",  assertError
    TokenValue#, (long) nn#=
    if nn#<0 then "Out of range(print)", assertError
    if  nn#>=MAX_FILES then "Out of range(print)", assertError
//    nn#, FILE_SIZE, * Xfp, + fp_adr#=
//    if (fp_adr)#(FILE_FP/8)=NULL then  "File is not open", assertError
    
    getToken
    if TokenType#=DELIMIT then if TokenText$=':' goto pass1_cmd_print4
    if TokenType#=EOL goto pass1_cmd_print4
    ",", checkToken
pass1_cmd_print1:
    if TokenType#=EOL then NULL, last_char#= gotopass1_cmd_print3
    if TokenType#=DELIMIT then if TokenText$=':' goto pass1_cmd_print3

      // データの表示
      clear_value
      eval_expression

      // 文字列型データの表示
      value_type typ#=
      if typ#=STRING then get_string free

      // 数値型データの表示
      if typ#=NUMBER then get_number

      check_value
      if TokenType#=EOL then NULL, last_char#= gotopass1_cmd_print3
      if TokenType#<>DELIMIT then "Syntax Error", assertError
      TokenText$, last_char#=

      // セパレータが':'の場合
      if last_char#=':' goto pass1_cmd_print3

      // セパレータが','の場合
      if last_char#<>',' goto pass1_cmd_print2
//        ',', fp_adr#, putc  // カンマを出力
        getToken
        goto pass1_cmd_print1

      // セパレータが';'の場合
pass1_cmd_print2:
      if last_char#<>';' then "Syntax Error", assertError
        getToken
        goto pass1_cmd_print1

pass1_cmd_print3:
//    if last_char#<>';' then  fp_adr#, fnl
    DONE, end

  // print文
pass1_cmd_print4:

// "pass1 print:", prints nl

    if TokenType#=EOL then NULL, last_char#= gotopass1_cmd_print6
    if TokenType#=DELIMIT then if TokenText$=':' goto pass1_cmd_print6

//  "TokenText=", prints TokenText, prints nl

      // データの表示
      clear_value
      eval_expression

      // 文字列型データの表示
      value_type typ#=
      if typ#=STRING then get_string free

      // 数値型データの表示
      if typ#=NUMBER then get_number

      check_value
//   "check value passed > ", prints xxxdmy, inputs
 
      if TokenType#=EOL then NULL, last_char#= gotopass1_cmd_print6
      if TokenType#<>DELIMIT then "Syntax Error", assertError
      TokenText$, last_char#=

      // セパレータが':'の場合
      if last_char#=':' goto pass1_cmd_print6

      // セパレータが','の場合
      if last_char#<>',' goto pass1_cmd_print5
//        ',', putchar  // カンマを出力
        getToken
        goto pass1_cmd_print4

      // セパレータが';'の場合
pass1_cmd_print5:
      if last_char#<>';' then "Syntax Error", assertError
        getToken
        goto pass1_cmd_print4

pass1_cmd_print6:
//    if last_char#<>';' then  nl

//   "pass1_print end > ", prints xxxdmy, inputs

    DONE, end

// elseコマンド
pass1_cmd_else:
//  "else widthout if", assertError
  DONE, end

// thenコマンド
pass1_cmd_then:
//  "then without if", assertError
  DONE, end

// BASICのプログラムをコンパイルする(pass2)
pass2:
 long pass2_code#

//  "pass2:", prints nl

  xxxnl
  "//  Basic main program", xxxprints xxxnl
  "BasicMain:", xxxprints xxxnl
  " clear_value", xxxprints xxxnl

  0, LabelCount#=
  0, status#=
  TopProg#, CurrentProg#=
  if CurrentProg#=NULL then end
  clear_value
  CurrentProg#, ->Program.text# TokenP#= 
  pass2_getToken // 最初のトークン切り出し


  // ループ
  pass2_1:

//  "pass2:  ", prints TokenText, prints 
//  " > ", prints xxxdmy, inputs

    // トークンがCOMMANDなら次のトークンをとりだしてDISPATCH
    if TokenType#<>COMMAND goto pass2_3

//  "pass2 command:", prints nl

pass2_2:

//  "pass2_2:  ", prints nl
   
     TokenCode#, _Command.SIZE, * pass2_code#=
      pass2_getToken
      pass2_Command, pass2_code#, + ->@_Command.func status#=

//      "status=", prints status#, printd nl

      // 最終行(中身無し)に到達すると終了
      if CurrentProg#=NULL goto pass2_7

      if status#<>DONE then "Illegal command", assertError  
      goto pass2_1

// トークンが変数なら代入
pass2_3:

//  "pass2_3:  ", prints nl
   
    if TokenType#=VARIABLE then pass2_cmd_let gotopass2_1


// トークンがEOLなら次の行へ
    if TokenType#<>EOL goto pass2_4

//  "pass2 eol:", prints nl

      // 次の行に移る
      CurrentProg#, ->Program.next# CurrentProg#=

      // 最終行(中身無し)に到達すると終了
      if CurrentProg#=NULL goto pass2_7

      // テキストポインタを設定
      CurrentProg#, ->Program.text# TokenP#=
      pass2_getToken
      goto pass2_1

// マルチステートメントの処理
pass2_4:

//  "pass2_4:  ", prints nl
   
    if TokenType#<>DELIMIT goto pass2_5

//  "pass2 delimit:", prints nl

      if TokenText$=':' then pass2_getToken gotopass2_1
      "Syntax Error", assertError

// ラベルの場合は無視(1つの行に2個以上ラベルがある場合は、最初のラベル以外は無視されるので注意)
pass2_5:

//  "pass2_5:  ", prints nl
   
    if TokenType#<>LABEL goto pass2_6
    " ", xxxprints TokenText, xxxprints ":", xxxprints xxxnl
    pass2_getToken
    goto pass2_1

// 上記以外の場合は文法エラー  
pass2_6:

//  "pass2_6:  ", prints nl
   

//  "pass2 other:", prints nl

    "Syntax Error", assertError
    end

// 終了処理
pass2_7:

//  "pass2_7:  ", prints nl
   
        clear_value
        NULL, BreakProg#= CurrentProg#=
        TERMINATE, end

// トークンが正しければ次のトークンを読み込み
// トークンが間違っていたらエラーを発生させる
pass2_checkToken:
  token#=
  
//  "pass2_check token:", prints nl
  
  TokenText, token#, strcmp tt#=
  if tt#<>0 then "Syntax Error", assertError
  pass2_getToken
  end

// トークンを切り出してバッファに格納する
pass2_getToken:

// "pass2_getToken:", prints TokenP#, prints nl

  NULL, TokenText$=
  0, ii#=

  // 空白や制御文字をスキップする
pass2_getToken1:
   if (TokenP)$>' ' goto pass2_getToken2
     if (TokenP)$=NULL then EOL, TokenType#= end
     TokenP#++
     goto pass2_getToken1

  // "'"が現れたときは行の終わり
pass2_getToken2:
  if (TokenP)$=A_QUOT then EOL, TokenType#= end

  // 先頭が"であれば次の"までは文字列
  if (TokenP)$<>DBL_QUOT goto pass2_getToken4
    STRING, TokenType#=
    TokenP#++
pass2_getToken3:
   if (TokenP)$=NULL then "SyntaxError", assertError
   if (TokenP)$<>DBL_QUOT then (TokenP)$, TokenText$(ii#)= TokenP#++ ii#++ gotopass2_getToken3
   TokenP#++
    NULL, TokenText$(ii#)=
//    "string:", prints nl 
    end

  // 先頭がアルファベット
pass2_getToken4:
  (TokenP)$, is_symbol_char0 tt#=
  if tt#=0 goto pass2_getToken10
  
//  "symbol char:", prints nl
  
pass2_getToken5:
  (TokenP)$, is_symbol_char tt#=
  if tt#=1 then  (TokenP)$, TokenText$(ii#)= TokenP#++ ii#++ gotopass2_getToken5
  NULL, TokenText$(ii#)=

//  "TokenText=", prints TokenText, prints nl

    // "else"キーワードが出てきたら行の終わりと判断する
pass2_getToken6:
    TokenText, "else", strcmp tt#=
    if tt#=0 then EOL, TokenType#= end

    // Basicのコマンドの場合
    pass2_Command, pp#= 0, ii#=
pass2_getToken7:
    pp#, ->_Command.keyword# qq#=
    if qq#=NULL goto  pass2_getToken8
    TokenText, qq#, strcmp tt#=
    if tt#=0 then  COMMAND, TokenType#= ii#, TokenCode#= end
    pp#, _Command.SIZE, + pp#=
    ii#++
    goto pass2_getToken7

    // 関数の場合
pass2_getToken8:
    pass2_Function, pp#= 0, ii#=
pass2_getToken8x:
    pp#, ->_Function.keyword# qq#=
    if qq#=NULL goto  pass2_getToken9
    TokenText, qq#, strcmp tt#=
    if tt#=0 then  FUNCTION, TokenType#= ii#, TokenCode#= end
    pp#, _Function.SIZE, + pp#=
    ii#++
    goto pass2_getToken8x

    // コマンドでも関数でもないときは変数とみなす
pass2_getToken9:
  
//  "variable:", prints nl
  
    VARIABLE, TokenType#= end

  // 先頭がラベルの先頭文字であれば英数字と'_'が続いているところはラベル
pass2_getToken10:
  if (TokenP)$<>LABEL_HEADER goto pass2_getToken20
    LABEL, TokenType#=
    TokenP#++
    0, TokenCode#=
pass2_getToken11:
    (TokenP)$, is_symbol_char tt#=
    if tt#=1 then (TokenP)$, TokenText$(ii#)= TokenCode#, + TokenCode#= TokenP#++ ii#++ gotopass2_getToken11
    NULL, TokenText$(ii#)=
  
//  "label:", prints nl
//  "TokenText=", prints TokenText, prints nl

  
    end

// 先頭が'&' , '.' あるいは'0'~'9'で始まっている場合が数値
pass2_getToken20:
  (TokenP)$, cc#=
  if cc#='&' goto pass2_getToken21
  if cc#='.'   goto pass2_getToken21
  if cc#<'0'  goto pass2_getToken30
  if cc#>'9'  goto pass2_getToken30

pass2_getToken21:
      NUMBER, TokenType#=
      TokenP#, xval TokenValue#= pop tt#=
      if TokenValue#=NaN then "Bad Number Format", assertError
      0, ii#=
pass2_getToken22:
      (TokenP)$, TokenText$(ii#)=
      TokenP#++
      ii#++
      if TokenP#<tt# goto pass2_getToken22
      NULL, TokenText$(ii#)=
      end

// 上記以外は区切り文字
pass2_getToken30:
    DELIMIT, TokenType#=
    cc#, TokenText$(ii#)=
    ii#++
    TokenP#++
    (TokenP)$, bb#=
    
    if cc#<>'=' goto pass2_getToken31
    if bb#='<' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass2_getToken33 
    if bb#='>' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass2_getToken33 

pass2_getToken31:
    if cc#<>'<' goto pass2_getToken32
    if bb#='=' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass2_getToken33 
    if bb#='>' then bb#, TokenText$(ii#)= ii#++ TokenP#++ gotopass2_getToken33 

pass2_getToken32:
    if cc#<>'>' goto pass2_getToken33
    if bb#='=' then bb#, TokenText$(ii#)= ii#++ TokenP#++

pass2_getToken33:
    NULL, TokenText$(ii#)=
  
//  "delimitter:", prints nl
//  "TokenText=", prints TokenText, prints nl

 end

// 変数の値をスタックに置く
pass2_put_variable_value:
  long xvar_name#
   xvname#=  strlen 1, + malloc xvar_name#=
   xvname#, xvar_name#, strcpy

  xvar_name#,  1, _variable xvar#=
  xvar_name#,  var_type xtype#=

// 単純変数の場合
  xvar#, ->Variable.dimension# dims#=
  if dims#<>0 goto pass2_put_variable_value2
  pass2_getToken

// 文字列変数の場合
    if xtype#<>STRING goto pass2_put_variable_value1
    xvar_name#, strlen 1, - tt#=  '_', (xvar_name)$(tt#)=
    " ", xxxprints xvar_name#, xxxprints ", put_string", xxxprints xxxnl
    xvar_name#, free
    end

// 数値型変数の場合
pass2_put_variable_value1:
    " ", xxxprints xvar_name#, xxxprints "#, put_number", xxxprints xxxnl
    xvar_name#, free
    end

// 配列変数の場合
pass2_put_variable_value2:
  pass2_getToken
  "(", pass2_checkToken

  xvar_name#, PUSH
  xvar#,   PUSH
  xtype#, PUSH
  dims#,   PUSH
  pass2_eval_expression
  POP dims#=
  POP xtype#=
  POP xvar#=
  POP xvar_name#=

   " get_number (long) __index#=", xxxprints xxxnl

  xvar#, ->Variable.dim xdim#=
  1, vii#=
pass2_put_variable_value3:
  if vii#>=dims# goto pass2_put_variable_value4
  ",",  pass2_checkToken

  xvar_name#, PUSH
  xdim#,  PUSH
  vii#,      PUSH
  xvar#,   PUSH
  xtype#, PUSH
  dims#,   PUSH
  pass2_eval_expression
  POP dims#=
  POP xtype#=
  POP xvar#=
  POP vii#=
  POP xdim#=
  POP xvar_name#=

    " __index#, ", xxxprints (xdim)#(vii#), xxxprintd ", * __index#=", xxxprints xxxnl
    " get_number (long) __index#, + __index#=", xxxprints xxxnl

  vii#++
  goto pass2_put_variable_value3
  
pass2_put_variable_value4:
  ")",  pass2_checkToken

// 文字列変数の場合
    if xtype#<>STRING goto pass2_put_variable_value5
    xvar_name#, strlen 1, - tt#=  '_', (xvar_name)$(tt#)=

    " __index#, 512, * ", xxxprints xvar_name#, xxxprints ", + put_string", xxxprints xxxnl

    xvar_name#, free
    end

// 数値型変数の場合
pass2_put_variable_value5:

    " ", xxxprints xvar_name#, xxxprints "#(__index#), put_number", xxxprints xxxnl

    xvar_name#, free
    end

// 変数の値を格納してあるアドレスをスタックに置く
pass2_put_variable_address:
   xvname#=  strlen 1, + malloc xvar_name#=
   xvname#, xvar_name#, strcpy

  xvar_name#,  1, _variable xvar#=
  xvar_name#,  var_type xtype#=

// 単純変数の場合
  xvar#, ->Variable.dimension# dims#=
  if dims#<>0 goto pass2_put_variable_address2
  pass2_getToken

// 文字列変数の場合
    if xtype#<>STRING goto pass2_put_variable_address1
    xvar_name#, strlen 1, - tt#=  '_', (xvar_name)$(tt#)=
    " ", xxxprints xvar_name#, xxxprints ", put_number", xxxprints xxxnl
    xvar_name#, free
    end

// 数値型変数の場合
pass2_put_variable_address1:
    " ", xxxprints xvar_name#, xxxprints ", put_number", xxxprints xxxnl
    xvar_name#, free
    end

// 配列変数の場合
pass2_put_variable_address2:
  pass2_getToken
  "(", pass2_checkToken

  xvar_name#, PUSH
  xvar#,   PUSH
  xtype#, PUSH
  dims#,   PUSH
  pass2_eval_expression
  POP dims#=
  POP xtype#=
  POP xvar#=
  POP xvar_name#=

   " get_number (long) __index#=", xxxprints xxxnl

  xvar#, ->Variable.dim xdim#=
  1, vii#=
pass2_put_variable_address3:
  if vii#>=dims# goto pass2_put_variable_address4
  ",",  pass2_checkToken

  xvar_name#, PUSH
  xdim#,  PUSH
  vii#,      PUSH
  xvar#,   PUSH
  xtype#, PUSH
  dims#,   PUSH
  pass2_eval_expression
  POP dims#=
  POP xtype#=
  POP xvar#=
  POP vii#=
  POP xdim#=
  POP xvar_name#=

    " __index#, ", xxxprints (xdim)#(vii#), xxxprintd ", * __index#=", xxxprints xxxnl
    " get_number (long) __index#, + __index#=", xxxprints xxxnl

  vii#++
  goto pass2_put_variable_address3
  
pass2_put_variable_address4:
  ")",  pass2_checkToken

// 文字列変数の場合
    if xtype#<>STRING goto pass2_put_variable_address5
    xvar_name#, strlen 1, - tt#=  '_', (xvar_name)$(tt#)=

    " __index#, 512, * ", xxxprints xvar_name#, xxxprints ", + put_number", xxxprints xxxnl

    xvar_name#, free
    end

// 数値型変数の場合
pass2_put_variable_address5:

    " __index#, 8, * ",     xxxprints xvar_name#, xxxprints ", + put_number", xxxprints xxxnl

    xvar_name#, free
    end

// waitコマンド
pass2_cmd_wait:

// "pass2 cmd wait:", prints nl

  " clear_value", xxxprints xxxnl

  pass2_eval_expression

  " get_number (long) wait", xxxprints xxxnl

  DONE, end

// clearコマンド
pass2_cmd_clear:

// "cmd clear:", prints nl

  "Illegal command", assertError

  DONE, end

// closeコマンド
pass2_cmd_close:

// "pass2 cmd close:", prints nl

  if TokenText$<>'#' goto pass2_file_close_all
    pass2_getToken
    TokenValue#, (long) nnx#=
    if nnx#<0 then "Out of Range", assertError
    if nnx#>MAX_FILES then "Out of Range", assertError

  " if Xfd#(", xxxprints nnx#, xxxprintd ")<>ERROR then Xfd#(", xxxprints
  nnx#, xxxprintd "), wclose", xxxprints xxxnl
  " ERROR, Xfd#(", xxxprints nnx#, xxxprintd ")=", xxxprints xxxnl

    pass2_getToken
    DONE, end

pass2_file_close_all:

  " for __tmp1#=0 to 15", xxxprints xxxnl
  " if Xfd#(__tmp1#)<>ERROR then Xfd#(__tmp1#), wclose", xxxprints xxxnl
  " ERROR, Xfd#(__tmp1#)=", xxxprints xxxnl
  " next __tmp1#", xxxprints xxxnl

    DONE, end

// openコマンド
pass2_cmd_open:

// "pass2 cmd open:", prints nl

  " clear_value", xxxprints xxxnl

  pass2_eval_expression

  " get_string __tmp1#=", xxxprints xxxnl
  " __tmp1#, __sbuf, strcpy", xxxprints xxxnl
  " __tmp1#, free", xxxprints xxxnl

  "for", checkToken
  0, io_flg#=
  TokenText, "input",   strcmp ss#=
  TokenText, "output", strcmp tt#=
  ss#, tt#, * ss#=
  if ss#<>0 then "Syntax Error", assertError
  if tt#=0 then 1, io_flg#= 
  pass2_getToken
  "as", pass2_checkToken
  "#",  pass2_checkToken
  if TokenType#<>NUMBER then "Syntax Error", assertError
  TokenValue#, (long) nnx#=
  if nnx#<0 then "Out of Range", assertError
  if nnx#>=MAX_FILES then "Out of Range", assertError
  pass2_getToken

  " if Xfd#(", xxxprints nnx#, xxxprintd ")<>ERROR then ", xxxprints
  DBL_QUOT, xxxputchar "File is already open", xxxprints DBL_QUOT, xxxputchar
  ", prints nl break", xxxprints xxxnl
  " NULL, Xfd#(", xxxprints nnx#, xxxprintd ")=", xxxprints xxxnl

// 書きこみモード
  if io_flg#=0 goto pass2_cmd_open1

  " __sbuf, Xfd#(", xxxprints nnx#, xxxprintd "), wopen __tmp1#=", xxxprints xxxnl
  " if __tmp1#=ERROR then ", xxxprints
  DBL_QUOT, xxxputchar "File can not open(write)", xxxprints DBL_QUOT, xxxputchar
  ", prints nl ERROR, Xfd#(", xxxprints nnx#, xxxprintd ")= break", xxxprints xxxnl

  DONE, end

// 読み込みモード
pass2_cmd_open1:

  " __sbuf, Xfd#(", xxxprints nnx#, xxxprintd "), ropen __tmp1#=", xxxprints xxxnl
  " if __tmp1#=ERROR then ", xxxprints
  DBL_QUOT, xxxputchar "File can not open(read)", xxxprints DBL_QUOT, xxxputchar
  ", prints nl ERROR, Xfd#(", xxxprints nnx#, xxxprintd ")= break", xxxprints xxxnl

  DONE, end

// dimコマンド
pass2_cmd_dim:

// "pass2 cmd dim:", prints nl
  
pass2_cmd_dim1:
    if TokenType#=EOL goto pass2_cmd_dim2
    if TokenType#=DELIMIT then if TokenText$=':' goto pass2_cmd_dim2
    pass2_getToken
    goto pass2_cmd_dim1
pass2_cmd_dim2:
  DONE, end

// ifコマンド
pass2_cmd_if:
  long lbl_count#
  long state0#

// "pass2 cmd if:", prints nl

  LabelCount#, lbl_count#= LabelCount#++
  DONE, state0#=

  // 論理式が真ならば"then"をチェックしてその次から始める
  clear_value
  pass2_eval_expression

// "pass2 eval expression end:", prints nl

  " get_number __tmp1#=", xxxprints xxxnl

  "then", pass2_checkToken

  // if ~ then ラベル    
  if TokenType#<>LABEL  goto pass2_cmd_if1


// "pass2 cmd if goto :", prints nl

  " if __tmp1#.<>^0.0 goto ", xxxprints TokenText, xxxprints xxxnl

  pass2_getToken
  TokenText, "else", strcmp tt#=
  if tt#=0  goto if_else
  goto  if_end

// if ~ then 実行文
pass2_cmd_if1:

  " if __tmp1#.=^0.0 goto __else", xxxprints lbl_count#, xxxprintd xxxnl


 // トークンがCOMMANDなら次のトークンをとりだしてDISPATCH
pass2_cmd_if2:

// "pass2 cmd if2: tokentext=", prints TokenText, prints 
// " tokentype=", prints TokenType#, printd nl

  if TokenType#<>COMMAND goto pass2_cmd_if3

  TokenCode#, _Command.SIZE, * pass2_code#=
  pass2_getToken
  lbl_count#, PUSH
  pass2_Command, pass2_code#, + ->@_Command.func state0#=
  POP lbl_count#=
  if state0#<>DONE  goto if_end
  goto pass2_cmd_if2 

// トークンが変数なら代入
pass2_cmd_if3:

// "pass2 cmd if3:", prints nl

  if TokenType#=VARIABLE then  pass2_cmd_let gotopass2_cmd_if2


// トークンがEOL
  if TokenType#<>EOL goto pass2_cmd_if4


// "pass2 cmd if then eol:", prints nl

  " goto __endif", xxxprints lbl_count#, xxxprintd xxxnl
  "__else", xxxprints lbl_count#, xxxprintd ":", xxxprints xxxnl

  TokenText, "else", strcmp tt#=
  if tt#=0 goto if_else

   // 次の行に移る

// "pass2 cmd if next line:", prints nl

   CurrentProg#, ->Program.next# CurrentProg#=

   // 最終行(中身無し)に到達すると終了
   if CurrentProg#=NULL then TERMINATE, state0#= gotoif_end

   // テキストポインタを設定
   CurrentProg#, ->Program.text# TokenP#=
   pass2_getToken
   goto if_end

// マルチステートメントの処理 
pass2_cmd_if4:

// "pass2 cmd if4:", prints nl

  if TokenType#<>DELIMIT goto pass2_cmd_if5

// "pass2 cmd if then delimit:", prints nl

  if TokenText$=':'  then pass2_getToken gotopass2_cmd_if2
  "Syntax Error", assertError

// ラベルの場合は無視(1つの行に2個以上ラベルがある場合は、最初のラベル以外は無視されるので注意)
pass2_cmd_if5:

// "pass2 cmd if5:", prints nl

  if TokenType#<>LABEL goto pass2_cmd_if6

// "pass2 cmd if then label:", prints nl

  pass2_getToken
  goto pass2_cmd_if2

// 上に当てはまらないならエラー  
pass2_cmd_if6:
  "Syntax Error", assertError
  goto pass2_cmd_if2


// else 以降の処理
if_else:


// "pass2 cmd if else :", prints nl

  pass2_getToken
  if TokenType#<>LABEL  goto pass2_cmd_if7

// "pass2 cmd if else label:", prints nl

  " goto ", xxxprints TokenText, xxxprints xxxnl

   // 次の行に移る
   CurrentProg#, ->Program.next# CurrentProg#=

   // 最終行(中身無し)に到達すると終了
   if CurrentProg#=NULL then TERMINATE, state0#= gotoif_end

   // テキストポインタを設定
   CurrentProg#, ->Program.text# TokenP#=
   pass2_getToken
   goto if_end

//xxprintf("enter loop\n");

 // トークンがCOMMANDなら次のトークンをとりだしてDISPATCH
pass2_cmd_if7:

// "pass2 cmd if7:", prints nl

  if TokenType#<>COMMAND goto pass2_cmd_if8

// "pass2 cmd if else command:", prints nl

  TokenCode#, _Command.SIZE, * pass2_code#=
  pass2_getToken
  lbl_count#, PUSH

//  "cmd in", prints nl
  
  pass2_Command, pass2_code#, + ->@_Command.func state0#=

//  "cmd out", prints nl

  POP lbl_count#=
  if state0#<>DONE  goto if_end
  goto pass2_cmd_if7 

// トークンが変数なら代入
pass2_cmd_if8:

// "pass2 cmd if8:", prints nl

  if TokenType#=VARIABLE then  pass2_cmd_let gotopass2_cmd_if7


// トークンがEOL
  if TokenType#<>EOL goto pass2_cmd_if9


// "pass2 cmd if else eol:", prints nl

   // 次の行に移る

// "pass2 cmd if else next line:", prints nl

   CurrentProg#, ->Program.next# CurrentProg#=

   // 最終行(中身無し)に到達すると終了
   if CurrentProg#=NULL then TERMINATE, state0#= gotoif_end

   // テキストポインタを設定
   CurrentProg#, ->Program.text# TokenP#=
   pass2_getToken
   goto if_end

// マルチステートメントの処理 
pass2_cmd_if9:

// "pass2 cmd if9:", prints nl

  if TokenType#<>DELIMIT goto pass2_cmd_if10

 "pass2 cmd if else delimit:", prints nl

  if TokenText$<>':'  then "Syntax Error", assertError
  pass2_getToken
  goto pass2_cmd_if7
 
// ラベルの場合は無視(1つの行に2個以上ラベルがある場合は、最初のラベル以外は無視されるので注意)
pass2_cmd_if10:

// "pass2 cmd if10:", prints nl

  if TokenType#<>LABEL goto pass2_cmd_if11

// "pass2 cmd if else label:", prints nl

  pass2_getToken
  goto pass2_cmd_if7

// 上に当てはまらないならエラー  
pass2_cmd_if11:
  "Syntax Error", assertError

// 終了処理
if_end:


// "pass2 cmd if end:", prints nl

  "__endif", xxxprints lbl_count#, xxxprintd ":", xxxprints xxxnl

  state0#, end

// returnコマンド
pass2_cmd_return:

// "pass2 cmd return:", prints nl

    " end", xxxprints xxxnl

  DONE, end

// gosubコマンド
pass2_cmd_gosub:
  
//  "pass2 cmd gosub:", prints nl
  
  " ", xxxprints TokenText, xxxprints xxxnl

  pass2_getToken
  DONE, end

// nextコマンド
pass2_cmd_next:

// "pass2 cmd next:", prints nl

  if TokenType#<>VARIABLE then "next without variable", assertError
  TokenText, vname, strcpy
  pass2_getToken

  " ", xxxprints vname, xxxprints      "#, ", xxxprints 
  " ", xxxprints vname, xxxprints      "+16#, ", xxxprints 
  " .+ ", xxxprints  
  " ", xxxprints vname, xxxprints      "#= ", xxxprints xxxnl 
  " ", xxxprints vname, xxxprints      "#, ", xxxprints 
  " ", xxxprints vname, xxxprints  "+8#, ", xxxprints
  " .- ", xxxprints  
  " ", xxxprints vname, xxxprints "+16#, ", xxxprints 
  " .* ", xxxprints  " __tmp1#=", xxxprints xxxnl
  " if __tmp1#.<=^0.0 then ", xxxprints vname, xxxprints "+24#, jmp@", xxxprints xxxnl

  DONE, end    

// forコマンド
pass2_cmd_for:
   char vname0$(512)

// "pass2 cmd for:", prints nl

  TokenText, vname0, strcpy
  pass2_cmd_let

  "to", pass2_checkToken

  " clear_value", xxxprints xxxnl

  pass2_eval_expression

  " get_number __tmp1#=", xxxprints xxxnl

  // STEP値があるなら代入
  TokenText, "step", strcmp tt#=
  if tt#<>0 then " ^1.0, __tmp2#=", xxxprints xxxnl gotopass2_cmd_for1
  pass2_getToken

  " clear_value", xxxprints xxxnl

  pass2_eval_expression

  " get_number __tmp2#=", xxxprints xxxnl

pass2_cmd_for1:

  " __tmp1#, ", xxxprints vname0, xxxprints "+8#=",   xxxprints xxxnl
  " __tmp2#, ", xxxprints vname0, xxxprints "+16#=", xxxprints xxxnl
  " 11(rip), ",    xxxprints vname0, xxxprints "+24#=", xxxprints xxxnl

  DONE, end

// gotoコマンド
pass2_cmd_goto:

// "pass2 cmd goto:", prints nl

  if TokenType#<>LABEL then "Syntax Error", assertError

  " goto ", xxxprints TokenText, xxxprints xxxnl 

  pass2_getToken
  DONE, end

// inputコマンド
pass2_cmd_input:

  // ファイルから入力
  if TokenText$<>'#' goto pass2_cmd_input3
    pass2_getToken
    TokenValue#, (long) nnx#=
    if nnx#<0 then   "Out of Range(input)", assertError
    if nnx#>=MAX_FILES then  "Out of Range(input)", assertError

    
    " if Xfd#(", xxxprints nnx#, xxxprintd ")=ERROR then ", xxxprints
    DBL_QUOT, xxxputchar "File is not open", xxxprints DBL_QUOT, xxxputchar 
    ", prints nl", xxxprints xxxnl

  
    pass2_getToken

      // 変数の場合は入力する
pass2_cmd_input1:
      if TokenType#<>VARIABLE goto pass2_cmd_input2

        TokenText, var_type vtype#=
        TokenText, pass2_put_variable_address
        
        " __sbuf, Xfd#(", xxxprints nnx#, xxxprintd "), finputs", xxxprints xxxnl

        // 文字列変数の場合
        if vtype#=STRING  then "  __sbuf, get_number strcpy", xxxprints xxxnl

        // 数値変数の場合
        if vtype#=NUMBER  then "  get_number __tmp1#= __sbuf, xval (__tmp1)#=", xxxprints xxxnl

       goto pass2_cmd_input1

      // セパレータ ',' or ';'
pass2_cmd_input2:
      if TokenType#<>DELIMIT then DONE, end
      if TokenText$=',' then pass2_getToken gotopass2_cmd_input1
      if TokenText$=';' then pass2_getToken gotopass2_cmd_input1
      DONE, end

  // コンソールから入力
pass2_cmd_input3:
    1, is_question#=

pass2_cmd_input4:

      // 文字列のときはプロンプト文字列を表示する
      if TokenType#<>STRING goto pass2_cmd_input4_1

        " ", xxxprints DBL_QUOT, xxxputchar TokenText, xxxprints DBL_QUOT, xxxputchar
        ", prints", xxxprints xxxnl

        pass2_getToken
        goto pass2_cmd_input4
  

pass2_cmd_input4_1:

      // 変数の場合は入力する
      if TokenType#<>VARIABLE goto pass2_cmd_input5

        TokenText, var_type vtype#=
        TokenText, pass2_put_variable_address

        if is_question#<>1 goto pass2_cmd_input4_2
 
        " ", xxxprints DBL_QUOT, xxxputchar "? ", xxxprints DBL_QUOT, xxxputchar
        ", prints", xxxprints xxxnl

pass2_cmd_input4_2:

       " __sbuf, inputs", xxxprints xxxnl

        // 文字列変数の場合
        if vtype#=STRING  then  " __sbuf, get_number strcpy", xxxprints xxxnl

        // 数値変数の場合
        if vtype#=NUMBER then " get_number __tmp1#= __sbuf, xval (__tmp1)#=", xxxprints xxxnl

        1, is_question#=

        goto pass2_cmd_input4

      // セパレータ ',' or ';'
pass2_cmd_input5:
      if TokenType#<>DELIMIT goto pass2_cmd_input6
      if TokenText$=',' then 1, is_question#= pass2_getToken gotopass2_cmd_input4
      if TokenText$=';' then 0, is_question#= pass2_getToken gotopass2_cmd_input4

pass2_cmd_input6:

//  "pass2 cmd input end", prints nl

      DONE, end

// printコマンド
pass2_cmd_print:
 long nnx#
  NULL, last_char#=

// "pass2 cmd print:", prints nl

  // print#文
  if TokenText$<>'#' goto pass2_cmd_print4

// "print#:", prints nl

    pass2_getToken
    if TokenType#<>NUMBER then "Syntax Error",  assertError
    TokenValue#, (long) nnx#=
    if nnx#<0 then "Out of Range(print)", assertError
    if  nnx#>=MAX_FILES then "Out of range(print)", assertError


    " if Xfd#(", xxxprints nnx#, xxxprintd ")=ERROR then ", xxxprints
    DBL_QUOT, xxxputchar "file not open", xxxprints DBL_QUOT, xxxputchar
    ", prints nl", xxxprints xxxnl

    
    pass2_getToken
    if TokenType#=DELIMIT then if TokenText$=':' goto pass2_cmd_print4
    if TokenType#=EOL goto pass2_cmd_print4
    ",", pass2_checkToken

pass2_cmd_print1:
    if TokenType#=EOL then NULL, last_char#= gotopass2_cmd_print3
    if TokenType#=DELIMIT then if TokenText$=':' goto pass2_cmd_print3

      // データの表示

      " clear_value", xxxprints xxxnl

      pass2_eval_expression

      " value_type __tmp1#=", xxxprints xxxnl
      " if __tmp1#=STRING then get_string __tmp1#= Xfd#(", xxxprints
      nnx#, xxxprintd "), fprints __tmp1#, free goto__lbl", xxxprints
      LabelCount#, xxxprintd xxxnl
      " get_number Xfd#(", xxxprints nnx#, xxxprintd "), fprintr", xxxprints xxxnl
      "__lbl", xxxprints LabelCount#, xxxprintd ":", xxxprints xxxnl
      LabelCount#++

      if TokenType#=EOL then NULL, last_char#= gotopass2_cmd_print3
      if TokenType#<>DELIMIT then "Syntax Error", assertError
      TokenText$, last_char#=

      // セパレータが':'の場合
      if last_char#=':' goto pass2_cmd_print3

      // セパレータが','の場合
      if last_char#<>',' goto pass2_cmd_print2

        DBL_QUOT, xxxputchar ",", xxxprints DBL_QUOT, xxxputchar
         ", Xfd#(", xxxprints nnx#, xxxprintd "), fprints", xxxprints xxxnl

        pass2_getToken
        goto pass2_cmd_print1

      // セパレータが';'の場合
pass2_cmd_print2:
      if last_char#<>';' then "Syntax Error", assertError
        pass2_getToken
        goto pass2_cmd_print1

pass2_cmd_print3:

    if last_char#<>';' then  " Xfd#(", xxxprints nnx#, xxxprintd "), fnl", xxxprints xxxnl

    DONE, end

  // print文
pass2_cmd_print4:


//  "pass2 cmd print4:", prints nl

    if TokenType#=EOL then NULL, last_char#= gotopass2_cmd_print6
    if TokenType#=DELIMIT then if TokenText$=':' goto pass2_cmd_print6

      // データの表示

      " clear_value", xxxprints xxxnl

      pass2_eval_expression

      // 文字列型データの表示

//  "output source", prints nl

      " value_type __tmp1#=", xxxprints xxxnl
      " if __tmp1#=STRING then get_string __tmp1#= prints __tmp1#, free goto__lbl", xxxprints
      LabelCount#, xxxprintd xxxnl
      " get_number printr", xxxprints xxxnl
      "__lbl", xxxprints LabelCount#, xxxprintd ":", xxxprints xxxnl
      LabelCount#++

//  "output source end", prints nl

      if TokenType#=EOL then NULL, last_char#= gotopass2_cmd_print6
      if TokenType#<>DELIMIT then "Syntax Error", assertError
      TokenText$, last_char#=

      // セパレータが':'の場合
      if last_char#=':' goto pass2_cmd_print6

      // セパレータが','の場合
      if last_char#<>',' goto pass2_cmd_print5
        DBL_QUOT, xxxputchar ",", xxxprints DBL_QUOT, xxxputchar ", prints" xxxprints
        xxxnl
        pass2_getToken
        goto pass2_cmd_print4

      // セパレータが';'の場合
pass2_cmd_print5:

//  "pass2 cmd print5:", prints nl

      if last_char#<>';' then "Syntax Error", assertError
        pass2_getToken
        goto pass2_cmd_print4

pass2_cmd_print6:

//  "pass2 cmd print6:", prints nl

    if last_char#<>';' then  " nl", xxxprints xxxnl

//  "print end:", prints nl

    DONE, end

// stopコマンド
pass2_cmd_stop:

  "Illegal command", assertError

  DONE, end

// contコマンド
pass2_cmd_cont:

// "cmd cont:", prints nl

  "Illegal command", assertError

  DONE, end

// runコマンド
pass2_cmd_run:

// "pass2 cmd run:", prints nl

  "Illegal command", assertError

  DONE, end

// 代入文
pass2_cmd_let:
 
// "pass2 cmd let:", prints nl

  if TokenType#<>VARIABLE then DONE, end
  
    TokenText, var_type vtype#=
    TokenText, pass2_put_variable_address
    "=", pass2_checkToken
    pass2_eval_expression

    if vtype#<>STRING goto pass2_cmd_let1

    " get_string __tmp1#= get_number __tmp2#=", xxxprints xxxnl 
    " __tmp1#, __tmp2#,  strcpy", xxxprints xxxnl 
    " __tmp1#, free", xxxprints xxxnl 
    " clear_value", xxxprints xxxnl 

    DONE, end

pass2_cmd_let1:
    
    " get_number __tmp1#= get_number __tmp2#=", xxxprints xxxnl 
    " __tmp1#, (__tmp2)#=", xxxprints xxxnl 
    " clear_value", xxxprints xxxnl 

    DONE, end

// saveコマンド
pass2_cmd_save:

// "cmd save:", prints  TokenText, prints nl

  "Illegal command", assertError

  TERMINATE, end

// listコマンド
pass2_cmd_list:

// "cmd list:", prints nl

  "Illegal command", assertError

    TERMINATE, end

// loadコマンド
pass2_cmd_load:

// "cmd load:", prints nl

  "Illegal command", assertError

  TERMINATE, end

// byeコマンド
pass2_cmd_quit:

// "cmd quit:", prints nl

  "Illegal command", assertError

  QUIT, end

// endコマンド
pass2_cmd_end:

// "pass2 cmd end:", prints nl

    " end", xxxprints xxxnl

  DONE, end

// newコマンド
pass2_cmd_new:
  "Illegal command", assertError
  TERMINATE, end

// clsコマンド
pass2_cmd_cls:

// "pass2  cmd cls:", prints nl

  " cls", xxxprints xxxnl

  pass2_getToken
  DONE, end

// editコマンド
pass2_cmd_edit:

// "cmd edit:", prints nl

  "Illegal command", assertError

 TERMINATE, end

// psetコマンド
pass2_cmd_pset:
  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __xx#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __yy#=", xxxprints xxxnl
  ")", pass2_checkToken
  if TokenText$<>',' goto pass2_cmd_pset1
  pass2_getToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) xcolor#=", xxxprints xxxnl
pass2_cmd_pset1:
   " __xx#, __yy#, xdraw_point", xxxprints xxxnl
   " __xx#, __draw_x1#=", xxxprints xxxnl
   " __yy#, __draw_y1#=", xxxprints xxxnl
   DONE, end

// lineコマンド
pass2_cmd_line:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass2_cmd_line1
    pass2_getToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_x1#=", xxxprints xxxnl
    ",", pass2_checkToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_y1#=", xxxprints xxxnl
    ")", pass2_checkToken

  // 開始座標を指定しないときはここから始める
pass2_cmd_line1:
  "-", pass2_checkToken
  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_x2#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_y2#=", xxxprints xxxnl
  ")", pass2_checkToken
  if TokenText$<>',' goto pass2_cmd_line2
    pass2_getToken
    " clear_value", xxxprints xxxnl
   pass2_eval_expression
   " get_number (long) xcolor#=", xxxprints xxxnl

pass2_cmd_line2:
  " __draw_x1#, __draw_y1#, __draw_x2#, __draw_y2#, xdraw_line", xxxprints xxxnl
  " __draw_x2#, __draw_x1#=", xxxprints xxxnl
  " __draw_y2#, __draw_y1#=", xxxprints xxxnl
  DONE, end

// boxコマンド
pass2_cmd_box:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass2_cmd_box1
    pass2_getToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_x1#=", xxxprints xxxnl
    ",", pass2_checkToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_y1#=", xxxprints xxxnl
    ")", pass2_checkToken

  // 開始座標を指定しないときはここから始める
pass2_cmd_box1:
  "-", pass2_checkToken
  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_x2#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_y2#=", xxxprints xxxnl
  ")", pass2_checkToken
  if TokenText$<>',' goto pass2_cmd_box2
    pass2_getToken
    " clear_value", xxxprints xxxnl
   pass2_eval_expression
   " get_number (long) xcolor#=", xxxprints xxxnl

pass2_cmd_box2:
  " __draw_x1#, __draw_y1#, __draw_x2#, __draw_y2#, xdraw_rect", xxxprints xxxnl
  " __draw_x2#, __draw_x1#=", xxxprints xxxnl
  " __draw_y2#, __draw_y1#=", xxxprints xxxnl
  DONE, end

// boxfコマンド
pass2_cmd_boxf:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass2_cmd_boxf1
    pass2_getToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_x1#=", xxxprints xxxnl
    ",", pass2_checkToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_y1#=", xxxprints xxxnl
    ")", pass2_checkToken

  // 開始座標を指定しないときはここから始める
pass2_cmd_boxf1:
  "-", pass2_checkToken
  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_x2#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_y2#=", xxxprints xxxnl
  ")", pass2_checkToken
  if TokenText$<>',' goto pass2_cmd_boxf2
    pass2_getToken
    " clear_value", xxxprints xxxnl
   pass2_eval_expression
   " get_number (long) xcolor#=", xxxprints xxxnl

pass2_cmd_boxf2:
  " __draw_x1#, __draw_y1#, __draw_x2#, __draw_y2#, xfill_rect", xxxprints xxxnl
  " __draw_x2#, __draw_x1#=", xxxprints xxxnl
  " __draw_y2#, __draw_y1#=", xxxprints xxxnl
  DONE, end

// circleコマンド
pass2_cmd_circle:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass2_cmd_circle1
    pass2_getToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_x1#=", xxxprints xxxnl
    ",", pass2_checkToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_y1#=", xxxprints xxxnl
    ")", pass2_checkToken

  // 開始座標を指定しないときはここから始める
pass2_cmd_circle1:
  "-", pass2_checkToken
  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_x2#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_y2#=", xxxprints xxxnl
  ")", pass2_checkToken
  if TokenText$<>',' goto pass2_cmd_circle2
    pass2_getToken
    " clear_value", xxxprints xxxnl
   pass2_eval_expression
   " get_number (long) xcolor#=", xxxprints xxxnl

pass2_cmd_circle2:
  " __draw_x1#, __draw_y1#, __draw_x2#, __draw_y2#, xdraw_circle", xxxprints xxxnl
  " __draw_x2#, __draw_x1#=", xxxprints xxxnl
  " __draw_y2#, __draw_y1#=", xxxprints xxxnl
  DONE, end

// circlefコマンド
pass2_cmd_circlef:

  // 開始座標を指定する場合
  if TokenText$<>'(' goto pass2_cmd_circlef1
    pass2_getToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_x1#=", xxxprints xxxnl
    ",", pass2_checkToken
    " clear_value", xxxprints xxxnl
    pass2_eval_expression
    " get_number (long) __draw_y1#=", xxxprints xxxnl
    ")", pass2_checkToken

  // 開始座標を指定しないときはここから始める
pass2_cmd_circlef1:
  "-", pass2_checkToken
  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_x2#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_y2#=", xxxprints xxxnl
  ")", pass2_checkToken
  if TokenText$<>',' goto pass2_cmd_circlef2
    pass2_getToken
    " clear_value", xxxprints xxxnl
   pass2_eval_expression
   " get_number (long) xcolor#=", xxxprints xxxnl

pass2_cmd_circlef2:
  " __draw_x1#, __draw_y1#, __draw_x2#, __draw_y2#, xfill_circle", xxxprints xxxnl
  " __draw_x2#, __draw_x1#=", xxxprints xxxnl
  " __draw_y2#, __draw_y1#=", xxxprints xxxnl
  DONE, end

// imageコマンド
pass2_cmd_image:

  "(", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_x1#=", xxxprints xxxnl
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_number (long) __draw_y1#=", xxxprints xxxnl
  ")", pass2_checkToken
  ",", pass2_checkToken
  " clear_value", xxxprints xxxnl
  pass2_eval_expression
  " get_string __tmp1#=", xxxprints xxxnl
  " _tmp1#, __sbuf, strcpy", xxxprints xxxnl
  " __tmp1#, free", xxxprints xxxnl
  " __sbuf, load_image __tmp1#=", xxxprints xxxnl
  " if __tmp1#<>NULL then  __draw_x1#, __draw_y1#, __tmp1#, xdraw_image", xxxprints xxxnl
  DONE, end

// execコマンド
pass2_cmd_exec:

  " clear_value", xxxprints xxxnl
  pass2_eval_expression

  " get_string __tmp1#=", xxxprints xxxnl
  " __tmp1#, __sbuf, strcpy", xxxprints xxxnl
  " __tmp1#, free", xxxprints xxxnl
  " __sbuf, exec_command", xxxprints xxxnl

  DONE, end

// locateコマンド
pass2_cmd_locate:

  " clear_value", xxxprints xxxnl

  pass2_eval_expression

  " get_number (long) __tmp1#=", xxxprints xxxnl

  ",", pass2_checkToken

  " clear_value", xxxprints xxxnl

  pass2_eval_expression

  " get_number (long) __tmp2#=", xxxprints xxxnl
  " __tmp1#, __tmp2#, locate", xxxprints xxxnl

  DONE, end

// colorコマンド
pass2_cmd_color:
  clear_value
   pass2_eval_expression
   " get_number (long) xcolor#=", xxxprints xxxnl
  DONE, end

// pass2コマンド
pass2_Command:
  data "run",pass2_cmd_run
  data "if",pass2_cmd_if
  data "for",pass2_cmd_for
  data "next",pass2_cmd_next
  data "goto",pass2_cmd_goto
  data "gosub",pass2_cmd_gosub
  data "return",pass2_cmd_return
  data "print",pass2_cmd_print
  data "input",pass2_cmd_input
  data "clear",pass2_cmd_clear
  data "pset",pass2_cmd_pset
  data "cls",pass2_cmd_cls
  data "line",pass2_cmd_line
  data "locate",pass2_cmd_locate
  data "dim",pass2_cmd_dim
  data "open",pass2_cmd_open
  data "close",pass2_cmd_close
  data "box",pass2_cmd_box
  data "boxf",pass2_cmd_boxf
  data "circle",pass2_cmd_circle
  data "circlef",pass2_cmd_circlef
//  data "start",pass2_cmd_start
  data "exec",pass2_cmd_exec
  data "wait",pass2_cmd_wait
  data "image",pass2_cmd_image
  data "save",pass2_cmd_save
  data "edit",pass2_cmd_edit
  data "load",pass2_cmd_load
  data "new",pass2_cmd_new
//  data "let",pass2_cmd_let
  data "end",pass2_cmd_end
  data "list",pass2_cmd_list
  data "run",pass2_cmd_run
  data "bye",pass2_cmd_quit
  data "stop",pass2_cmd_stop
  data "cont",pass2_cmd_cont
  data "color",pass2_cmd_color
//  data "make",pass2_cmd_make
  data "then",pass2_cmd_then
  data "else",pass2_cmd_else
  data NULL,NULL

// elseコマンド
pass2_cmd_else:
  "else without if", assertError
  DONE, end

// thenコマンド
pass2_cmd_then:
  "then without if", assertError
  DONE, end

// len関数
pass2_func_len:

// "pass2 func len:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_string  strlen (double) put_number", xxxprints xxxnl

  0, end

// val関数
pass2_func_val:

// "pass2 func val:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_string __arg0#=", xxxprints xxxnl
    " bas_val put_number", xxxprints xxxnl

  0, end

// str$関数
pass2_func_strs:

// "pass2 func strs:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number xstr put_string", xxxprints xxxnl

  0, end

// left$関数
pass2_func_lefts:

// "pass2 func lefts:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ",", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number __arg1#=", xxxprints xxxnl
    " get_string __arg0#=", xxxprints xxxnl
    " bas_lefts put_string", xxxprints xxxnl

  0, end

// mid$関数
pass2_func_mids:
  
// "pass2 func mids:", prints nl 

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ",", pass2_checkToken
  pass2_eval_expression
  if TokenText$=','   then  pass2_getToken pass2_eval_expression gotopass2_func_midsx

    " ^511.0, put_number", xxxprints xxxnl

pass2_func_midsx:
  ")", pass2_checkToken

    " get_number __arg2#=", xxxprints xxxnl
    " get_number __arg1#=", xxxprints xxxnl
    " get_string __arg0#=", xxxprints xxxnl
    " bas_mids put_string", xxxprints xxxnl

  0, end

// asc関数
pass2_func_asc:

// "pass2 func asc:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken
 
    " get_string __arg0#=", xxxprints xxxnl
    " (__arg0)$, (double) put_number", xxxprints xxxnl
    " __arg0#, free", xxxprints xxxnl

 0, end

// right$関数/
pass2_func_rights:

// "pass2_func rights:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ",", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number __arg1#=", xxxprints xxxnl
    " get_string __arg0#=", xxxprints xxxnl
    " bas_rights put_string", xxxprints xxxnl

  0, end

// chr$関数
pass2_func_chrs:

// "pass2 func chrs:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number (long) __sbuf2$(0)=", xxxprints xxxnl
    " 0, __sbuf2$(1)=", xxxprints xxxnl
    " __sbuf2, put_string", xxxprints xxxnl

  0, end

// abs関数
pass2_func_abs:

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number __arg0#=", xxxprints xxxnl
    " bas_abs put_number",   xxxprints xxxnl

  0, end

// input$関数
pass2_func_inputs:

// "pass2 func inputs:", prints nl 

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression


  // ファイルから指定文字数入力
  if TokenText$<>',' goto pass2_func_inputs1
    pass2_getToken
    if TokenText$='#' then pass2_getToken
    pass2_eval_expression
    ")", pass2_checkToken

    " get_number __arg1#=", xxxprints xxxnl
    " get_number __arg0#=", xxxprints xxxnl
    " bas_finputs put_string", xxxprints xxxnl
    
    0, end

  // コンソールから指定文字数入力
  pass2_func_inputs1:
    ")", pass2_checkToken

    " get_number __arg0#=", xxxprints xxxnl
    " bas_inputs put_string",  xxxprints xxxnl

    0, end

// point関数
pass2_func_point:

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ",", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number __arg1#=", xxxprints xxxnl
    " get_number __arg0#=", xxxprints xxxnl
    " bas_point put_number", xxxprints xxxnl

  DONE, end

// inkey＄関数
pass2_func_inkeys:

// "pass2 func inkey:", prints nl

  pass2_getToken

  " bas_inkeys put_string", xxxprints xxxnl

  0, end

// int関数
pass2_func_int:

// "pass2 func int:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number (_long) (double)  put_number", xxxprints xxxnl

  0, end

// sqr関数
pass2_func_sqr:

// "pass2 func sqr:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number sqrt  put_number", xxxprints xxxnl

  0, end

// sin関数
pass2_func_sin:

// "pass2 func sin:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken
  
  " get_number math_sin  put_number", xxxprints xxxnl

  0, end

// cos関数
pass2_func_cos:

// "pass2 func cos:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number math_cos  put_number", xxxprints xxxnl

  0, end



// tan関数
pass2_func_tan:

// "pass2 func tan:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number math_tan  put_number", xxxprints xxxnl

  0, end

// atn関数
pass2_func_atn:

// "pass2 func atn:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number math_arctan  put_number", xxxprints xxxnl

  0, end

// exp関数
pass2_func_exp:

// "pass2 func exp:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number math_exp  put_number", xxxprints xxxnl

  0, end

// log関数
pass2_func_log:

// "pass2 func log:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

  " get_number math_log  put_number", xxxprints xxxnl

  0, end

// instr関数
pass2_func_instr:

// "pass2 func instr:", prints nl 

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ",", pass2_checkToken
  pass2_eval_expression
  if TokenText$=','   then  pass2_getToken pass2_eval_expression gotopass2_func_instr1

    " ^1.0, put_number", xxxprints xxxnl

pass2_func_instr1:
  ")", pass2_checkToken

    " get_number __arg2#=", xxxprints xxxnl
    " get_string __arg1#=", xxxprints xxxnl
    " get_string __arg0#=", xxxprints xxxnl
    " bas_instr put_number", xxxprints xxxnl

  0, end

// rnd関数
pass2_func_rnd:

// "pass2 func rnd:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken
  
  " get_number math_random  put_number", xxxprints xxxnl

  0, end



// time$関数
pass2_func_times:

// "pass2 func times:", prints nl

  pass2_getToken
  
  " bas_times put_string", xxxprints xxxnl

  0, end


// date$関数
pass2_func_dates:

// "pass2 func dates:", prints nl

  pass2_getToken

  " bas_dates put_string", xxxprints xxxnl

  0, end


// sgn関数
pass2_func_sgn:
 
// "pass2 func sgn:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number __arg0#=", xxxprints xxxnl
    " bas_sgn  put_number",  xxxprints xxxnl

 0, end
  

// pass2関数
pass2_Function:
 data "abs",pass2_func_abs
  data "int",pass2_func_int
  data "sgn",pass2_func_sgn
  data "sqr",pass2_func_sqr
  data "exp",pass2_func_exp
  data "log",pass2_func_log
  data "sin",pass2_func_sin
  data "cos",pass2_func_cos
  data "tan",pass2_func_tan
  data "atn",pass2_func_atn
  data "chr$",pass2_func_chrs
  data "asc",pass2_func_asc
  data "mid$",pass2_func_mids
  data "left$",pass2_func_lefts
  data "right$",pass2_func_rights
  data "input$",pass2_func_inputs
  data "inkey$",pass2_func_inkeys
//  data "eof",pass2_func_eof
  data "str$",pass2_func_strs
  data "hex$",pass2_func_hexs
  data "bin$",pass2_func_bins
  data "oct$",pass2_func_octs
  data "val",pass2_func_val
  data "len",pass2_func_len
  data "time$",pass2_func_times
  data "date$",pass2_func_dates
    data "instr",pass2_func_instr
  data "rnd",pass2_func_rnd
  data "point",pass2_func_point
//  data "netstat",pass2_func_netstat
  data NULL,NULL

// hex$関数
pass2_func_hexs:

// "pass2 func hexs:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number (long) hex put_string", xxxprints xxxnl

  0, end

// bin$関数
pass2_func_bins:

// "pass2 func bins:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number (long) bin put_string", xxxprints xxxnl

  0, end

// oct$関数
pass2_func_octs:

// "pass2 func octs:", prints nl

  pass2_getToken
  "(", pass2_checkToken
  pass2_eval_expression
  ")", pass2_checkToken

    " get_number (long) oct put_string", xxxprints xxxnl

  0, end

// =  の確認
pass2_eval_eq:

//  "pass2 eval eq:", prints nl

    "  get_number __tmp4#=", xxxprints xxxnl
    "  if __tmp4#.=^0.0 then ^1.0, put_number goto__eval_eq1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  ^0.0, put_number", xxxprints xxxnl
    "__eval_eq1_", xxxprints  LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

// <> の確認
pass2_eval_neq:

//  "pass2 eval neq:", prints nl

    "  get_number __tmp4#=", xxxprints xxxnl
    "  if __tmp4#.<>^0.0 then ^1.0, put_number goto__eval_eq1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  ^0.0, put_number", xxxprints xxxnl
    "__eval_eq1_", xxxprints  LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

// <  の確認
pass2_eval_lt:

// "pass2 eval lt:", prints nl

    "  get_number __tmp4#=", xxxprints xxxnl
    "  if __tmp4#.<^0.0 then ^1.0, put_number goto__eval_eq1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  ^0.0, put_number", xxxprints xxxnl
    "__eval_eq1_", xxxprints  LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

// <= の確認
pass2_eval_le:

//  "pass2 eval le:", prints nl

    "  get_number __tmp4#=", xxxprints xxxnl
    "  if __tmp4#.<=^0.0 then ^1.0, put_number goto__eval_eq1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  ^0.0, put_number", xxxprints xxxnl
    "__eval_eq1_", xxxprints  LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

// >  の確認
pass2_eval_gt:

//  "pass2 eval gt:", prints nl

    "  get_number __tmp4#=", xxxprints xxxnl
    "  if __tmp4#.>^0.0 then ^1.0, put_number goto__eval_eq1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  ^0.0, put_number", xxxprints xxxnl
    "__eval_eq1_", xxxprints  LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

.// >= の確認
pass2_eval_ge:

//  "pass2 eval ge:", prints nl

    "  get_number __tmp4#=", xxxprints xxxnl
    "  if __tmp4#.>=^0.0 then ^1.0, put_number goto__eval_eq1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  ^0.0, put_number", xxxprints xxxnl
    "__eval_eq1_", xxxprints  LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

// 比較演算
pass2_eval_cmp:

//  "pass2 eval cmp", prints nl

// 比較演算
    "  value_type __tmp4#=", xxxprints xxxnl
    "  if __tmp4#<>STRING goto __eval_cmp1_", xxxprints LabelCount#, xxxprintd xxxnl
    "  get_string __tmp5#=", xxxprints xxxnl
    "  get_string __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, strcmp put_number", xxxprints xxxnl
    "  __tmp4#, free", xxxprints xxxnl
    "  __tmp5#, free", xxxprints xxxnl
    "  goto __eval_cmp2_", xxxprints LabelCount#, xxxprintd xxxnl
    "__eval_cmp1_", xxxprints LabelCount#, xxxprintd ":", xxxprints xxxnl
    "  get_number __tmp5#=", xxxprints xxxnl
    "  get_number __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, .- put_number", xxxprints xxxnl
    "__eval_cmp2_", xxxprints LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++
  0, end

// 論理式 AND演算
pass2_eval_and:

// "pass2 eval and:", prints nl

    "  get_number (long) __tmp5#=", xxxprints xxxnl
    "  get_number (long) __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, and (double) put_number", xxxprints xxxnl

  0, end

// 論理式 OR 演算
pass2_eval_or:

// "pass2 eval or:", prints nl

    "  get_number (long) __tmp5#=", xxxprints xxxnl
    "  get_number (long) __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, or (double) put_number", xxxprints xxxnl

  0, end

// べき乗演算
pass2_eval_power:

// "pass2 eval power:", prints nl

    "  get_number __tmp5#=", xxxprints xxxnl
    "  get_number __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, math_power put_number", xxxprints xxxnl

  0, end

// 除算の余り
pass2_eval_mod:

// "pass2 eval mod:", prints nl

    "  get_number (long) __tmp5#=", xxxprints xxxnl
    "  get_number (long) __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, mod (double) put_number", xxxprints xxxnl

  0, end

// 除算演算
pass2_eval_div:

// "pass2 eval div:", prints nl

    "  get_number __tmp5#=", xxxprints xxxnl
    "  get_number __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, ./ put_number", xxxprints xxxnl

  0, end

// 乗算演算
pass2_eval_mul:

// "pass2 eval mul:", prints nl

    "  get_number __tmp5#=", xxxprints xxxnl
    "  get_number __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, .* put_number", xxxprints xxxnl

  0, end

// 減算演算
pass2_eval_sub:

// "pass2 eval add:", prints nl

    "  get_number __tmp5#=", xxxprints xxxnl
    "  get_number __tmp4#=", xxxprints xxxnl
    "  __tmp4#, __tmp5#, .- put_number", xxxprints xxxnl

  0, end

// 加算演算
pass2_eval_add:

// "pass2 eval add:", prints nl

    " value_type __tmp4#=", xxxprints xxxnl
    " if __tmp4#<>STRING goto __eval_add1_", xxxprints LabelCount#, xxxprintd xxxnl
    " get_string __tmp5#=", xxxprints xxxnl
    " get_string __tmp4#=", xxxprints xxxnl
    " __tmp4#, __sbuf2, strcpy", xxxprints xxxnl
    " __tmp5#, __sbuf2, strcat", xxxprints xxxnl
    " __tmp4#, free", xxxprints xxxnl
    " __tmp5#, free", xxxprints xxxnl
    " __sbuf2, put_string", xxxprints xxxnl
    " goto __eval_add2_", xxxprints LabelCount#, xxxprintd xxxnl
    "__eval_add1_", xxxprints LabelCount#, xxxprintd ":", xxxprints xxxnl
    " get_number __tmp5#=", xxxprints xxxnl
    " get_number __tmp4#=", xxxprints xxxnl
    " __tmp4#, __tmp5#, .+ put_number", xxxprints xxxnl
    "__eval_add2_", xxxprints LabelCount#, xxxprintd ":", xxxprints xxxnl

  LabelCount#++

  0, end

// 原子の処理
pass2_eval_atom:
  0, sign#=

// "pass2 eval atom:", prints nl

  // 原子の前に＋がついている場合
  if TokenText$='+' then pass2_getToken  1, sign#=

  // 原子の前に-がついている場合
  if TokenText$='-' then pass2_getToken  -1, sign#=

  // (式)は原子である
  if TokenText$<>'('  goto pass2_eval_atom2
    pass2_getToken
    sign#, PUSH
    pass2_eval_expression
    POP sign#=
    ")", pass2_checkToken

    // ※コンパイル時には型チェックが甘くなるので確認のため一度実行してからコンパイルすること
    if sign#=-1 then " get_number ^0.0, swap .- put_number", xxxprints xxxnl
    
//    "pass2 eval atom(expression) end:", prints nl
    
    0, end

  // 数値は原子である
  pass2_eval_atom2:
  
//  "pass2 eval atom2", prints nl
  
  if TokenType#<>NUMBER goto pass2_eval_atom3
    " 0x", xxxprints TokenValue#, hex xxxprints ", put_number", xxxprints xxxnl
    if sign#=-1 then " get_number ^0.0, swap .- put_number", xxxprints xxxnl
    pass2_getToken
    
//    "pass2 eval atom(number) end:", prints nl
    
    0, end

  // 文字列は原子である
  pass2_eval_atom3:
  
//  "pass2 eval atom3", prints nl
  
  if TokenType#<>STRING goto pass2_eval_atom4

//  "now put_string", prints nl

    " ", xxxprints  DBL_QUOT, xxxputchar TokenText, xxxprints DBL_QUOT, xxxputchar
    ", put_string", xxxprints xxxnl
    
    pass2_getToken
    
    if sign#<>0 then "Type Mismatch", assertError
    
//    "pass2 eval atom(string) end:", prints nl
    
    0, end

  // 関数は原子である
  pass2_eval_atom4:
  
//  "pass2 eval atom4", prints nl
  
  if TokenType#<>FUNCTION goto pass2_eval_atom5
    sign#, PUSH
    TokenCode#, _Function.SIZE, * pass2_Function, + ->@_Function.func
    POP sign#=

    // ※コンパイル時には型チェックが甘くなるので確認のため一度実行してからコンパイルすること
    if sign#=-1 then " get_number ^0.0, swap .- put_number", xxxprints xxxnl
    
//    "pass2 eval atom(function) end:", prints nl
    
    0, end

  // 変数は原子である
  pass2_eval_atom5:
  
//  "pass2 eval atom5", prints nl
  
  if TokenType#<>VARIABLE goto pass2_eval_atom6

//  "atom is variable", prints nl

    sign#, PUSH
    TokenText, pass2_put_variable_value
    POP sign#=

    // ※コンパイル時には型チェックが甘くなるので確認のため一度実行してからコンパイルすること
    if sign#=-1 then " get_number ^0.0, swap .- put_number", xxxprints xxxnl

//    "pass2 eval atom(variable) end:", prints nl
  
    0, end

  // その他の場合(エラー)
  pass2_eval_atom6:
    
//  "pass2 eval atom6", prints nl
  
    "Illegal Expression", assertError

//    "pass2 eval atom(other) end:", prints nl
    
    0, end

// 因子の処理
pass2_eval_factor:

// "pass2_eval factor:", prints nl

  // 原子を解析
  pass2_eval_atom

pass2_eval_factor1:

      // 因子は原子^原子
      if TokenText$='^' then pass2_getToken pass2_eval_atom pass2_eval_power gotopass2_eval_factor1

// "pass2 eval factor end:", prints nl

      0, end

// 項の処理
pass2_eval_term:

// "pass2 eval term:", prints nl

  // 因子を解析
  pass2_eval_factor

pass2_eval_term1:

//  "pass2_eval_term: TokenText=", prints TokenText, prints nl

      // 項は因子*因子
      if TokenText$='*' then pass2_getToken pass2_eval_factor pass2_eval_mul gotopass2_eval_term1

      // 項は因子/因子
      if TokenText$='/' then pass2_getToken pass2_eval_factor pass2_eval_div gotopass2_eval_term1

      // 項は因子 mod 因子
      TokenText, "mod", strcmp tt#=
      if tt#=0 then pass2_getToken pass2_eval_factor pass2_eval_mod gotopass2_eval_term1

// "pass2 eval term end:", prints nl

      0, end

// 算術式の処理
pass2_eval_aexpression:

// "pass2 eval aexpression:", prints nl

  // 項を解析
  pass2_eval_term
  
pass2_eval_aexpression1:

// "pass2 eval aexpression: TokenText=", prints TokenText, prints nl 
  
      // 式は項+項
      if TokenText$='+' then pass2_getToken pass2_eval_term pass2_eval_add gotopass2_eval_aexpression1

      // 式は項-項
      if TokenText$='-' then pass2_getToken pass2_eval_term pass2_eval_sub gotopass2_eval_aexpression1

// "pass2 eval aexpression end", prints nl

      0, end

// 関係式の処理
pass2_eval_relation:

//  "pass2 eval relation:", prints nl

  // 式を解析
  pass2_eval_aexpression
  
pass2_eval_relation1:

    // 論理因子は 式>=式
    TokenText, ">=", strcmp tt#=
    if tt#<>0 goto pass2_eval_relation2
      pass2_getToken
      pass2_eval_aexpression
      pass2_eval_cmp
      pass2_eval_ge
      goto pass2_eval_relation1

    // 論理因子は 式>式
pass2_eval_relation2:
    TokenText, ">", strcmp tt#=
    if tt#<>0 goto pass2_eval_relation3
      pass2_getToken
      pass2_eval_aexpression
      pass2_eval_cmp
      pass2_eval_gt
      goto pass2_eval_relation1

    // 論理因子は 式<=式
pass2_eval_relation3:
    TokenText, "<=", strcmp tt#=
    if tt#<>0 goto pass2_eval_relation4
      pass2_getToken
      pass2_eval_aexpression
      pass2_eval_cmp
      pass2_eval_le
      goto pass2_eval_relation1

    // 論理因子は 式<式
pass2_eval_relation4:
    TokenText, "<", strcmp tt#=
    if tt#<>0 goto pass2_eval_relation5
      pass2_getToken
      pass2_eval_aexpression
      pass2_eval_cmp
      pass2_eval_lt
      goto pass2_eval_relation1

    // 論理因子は 式<>式
pass2_eval_relation5:
    TokenText, "<>", strcmp tt#=
    if tt#<>0 goto pass2_eval_relation6
      pass2_getToken
      pass2_eval_aexpression
      pass2_eval_cmp
      pass2_eval_neq
      goto pass2_eval_relation1

    // 論理因子は 式=式
pass2_eval_relation6:
    TokenText, "=", strcmp tt#=
    if tt#<>0 goto pass2_eval_relation7
      pass2_getToken
      pass2_eval_aexpression
      pass2_eval_cmp
      pass2_eval_eq
      goto pass2_eval_relation1

    // 上記以外ならば終了
pass2_eval_relation7:

//  "pass2 eval relation end:", prints nl

    0, end

// 論理項の処理
pass2_eval_lterm:

// "pass2_eval lterm:", prints nl

  // 論理因子を解析
  pass2_eval_relation
pass2_eval_lterm1:

  // and以外ならば終了
  TokenText, "and", strcmp tt#=
  if tt#<>0 goto pass2_eval_lterm2

  // 論理項は論理因子AND論理因子AND_408742851.
  pass2_getToken
  pass2_eval_relation
  pass2_eval_and
  goto pass2_eval_lterm1

pass2_eval_lterm2:

// "pass2_eval lterm end:", prints nl

  0, end

// 式の処理
pass2_eval_expression:

// "pass2 eval expression:", prints nl

  // 論理項を解析
  pass2_eval_lterm
pass2_eval_expression1:

  // OR以外ならば終了
  TokenText, "or", strcmp tt#=
  if tt#<>0 goto pass2_eval_expression2 

  // 論理式は論理項OR論理項OR_408742851.
  pass2_getToken
  pass2_eval_lterm
  pass2_eval_or
  goto pass2_eval_expression1

pass2_eval_expression2:

//  "pass2 eval expression end:", prints nl

  0, end


_INIT_STATES:

 end
main:
  _INIT_STATES
  goto _PSTART
_PSTART:
 _272024265_in

 end
_272024265_in:
// BASICを起動する
start_basic:


  char text$(MAX_TEXT_LENGTH+1)
  long status#
  char prog$(Program.SIZE)
  __stack_p#, StackSave#=
  STACK_SIZE, malloc ForStack#=
  STACK_SIZE, malloc GosubStack#=
  NULL, prog, ->Program.prev#= prog, ->Program.next#=
  
  ERROR, xxxstatus#=
  0xffffff, xcolor#=
  
  0, prog, ->Program.lineno#=
  text, prog, ->Program.text#=
  1, RunFlg#=
  0, BreakProg#=

  // コマンドモード(パラメータ無しで起動した場合)
  argv#(1), fname#=
  if argc#>1 then if (fname)$<>NULL goto start_basic4
    cls
    "Oreore Basic ver 0.03", prints nl
    cmd_new
basic_entry:

      // 通常処理
        nl "READY", prints nl

        // コマンド入力ループ
start_basic1:

          // 計算スタック初期化
          clear_value

          // 1行入力
start_basic2:
          text, inputs tt#=
          if tt#<>13 then nl "? ", prints gotostart_basic2 
          if text$=NULL goto start_basic2

  0, BreakFlg#=


          // テキストだけのときはインタープリタに解析実行させる
              NULL, prog, ->Program.prev#=
              NULL, prog, ->Program.next#=
              -1, prog, ->Program.lineno#=
              -1, prog, ->Program.label#=
              text, prog, ->Program.text#=
              prog, exec_basic status#=
              if status#=QUIT goto start_basic3
              if status#<>TERMINATE then  "direct command only", assertError
              goto basic_entry

start_basic3:
        cmd_new
        "<<<BYE>>>", prints nl
        goto start_basic5

  // RUNモード(BASICファイル名をパラメータとして起動した場合)
start_basic4:
       cls
      fname#, 0, load_basic
      NULL, prog, ->Program.prev#=
      NULL, prog, ->Program.next#=
     -1, prog, ->Program.lineno#=
     -1, prog, ->Program.label#=
      "run", prog, ->Program.text#=
       prog, exec_basic
      cls
      cmd_new

// BASIC終了
start_basic5:
   ForStack#,     free
   GosubStack#, free
   end

 end
