// Kous-OS version 0.0.2
// "kolus-os.r" コマンド実行プログラム
// "compile"を実行するとコンパイルが始まります

 const PROG_HEADER_SIZE 1024
 const MAX_PROG_SIZE 80000
 const MAX_CHAR 1024
 const MAX_ARG 10

main:
  char fp$(FILE_SIZE)
  char fp1$(FILE_SIZE)
  char cmd_buf$(MAX_CHAR)
  long argc#
  long argv#(MAX_ARG) 
  long fname#,f#,s#,t#,u#
  char cc$

  cls
  "Kous-OS version 0.0.2", prints nl

  loop1:
    "$ ", prints cmd_buf, inputs 
    cmd_buf, "", strcmp f#=
    if f#=0 goto loop1
    split_arg
    argv#(0), u#=
    u#, "ls", strcmp f#=
    if f#=0 then ls gotoloop1
    u#, "cls", strcmp f#=
    if f#=0 then cls gotoloop1 
    u#, "cat", strcmp f#=
    if f#=0 then cat gotoloop1
    u#, "cat>", strcmp f#=
    if f#=0 then cat_input gotoloop1
    u#, "cp", strcmp f#=
    if f#=0 then cp gotoloop1
    u#, "rm", strcmp f#=
    if f#=0 then rm gotoloop1
    u#, "mv", strcmp f#=
    if f#=0 then cp rm gotoloop1
    u#, "exit", strcmp f#=
    if f#=0 then  "*** exit ***", prints nl end
    load_prog f#=
    if f#<>0 then "command not found", prints nl gotoloop1
    program
    goto loop1
  end


//  ディレクトリ表示
ls:
  char buf$(1024)

   buf, vol_read  t#=   // ディレクトリ情報を一つ分読み込む
    if t#=0 goto ls1
      0, buf+20$=
      buf+FILE_NAME, _nallow prints nl  // 名前の部分を表示する
    goto ls
  ls1:
  vol_close  // ディレクトリを閉じる
  vol_open  // ディレクトリを開く
  if t#<>0 then "ERROR!", prints nl end
  end


// ファイルを表示する
cat:
 long uu#

  if argc#<>2 then "bad argument.", prints nl end
  argv#(1), fp1, ropen  uu#=// ファイルを開く
  if uu#<>0 then "file not found", prints nl end
  cat1:
    fp1, getc uu#=
    if uu#=EOF goto cat2 // EOFなら終了
    if uu#=LF then CR, putchar  // LFを読み込んだときはCRも出力する
    uu#, putchar // 読み込んだ文字を表示
  goto cat1
  cat2:
  fp1, rclose  // ファイルを閉じる
  end


// ファイルに入力する
cat_input:
 long vv#
  if argc#<>2 then "bad argument.", prints nl end
  argv#(1), fp1, wopen  uu#=// ファイルを開く
  if uu#<>0 then "error.", prints nl end
  input1:
     getchar  vv#=
     if vv#=3 goto input2 // CTRL-Cなら終了 
     if vv#=4 goto input2 // CTRL-Dなら終了 
     if vv#=CR then LF, vv#=
     if vv#=LF then CR, putchar
     vv#, putchar
     vv#, fp1, putc
  goto input1
  input2:
  fp1, wclose  // ファイルを閉じる
  end


// ファイルをコピーする
cp:
 long ff#
 char  infile$(FILE_SIZE),outfile$(FILE_SIZE)

 if argc#<3 then "bad argument", prints nl end
 argv#(1), infile, ropen ff#=
 if ff#<>0 then "file not found", prints nl end
 argv#(2), outfile, wopen
cp1:
 infile, getc ff#=
 if ff#=EOF goto cp2
 ff#, outfile, putc
 goto cp1
cp2:
 infile,  rclose
 outfile, wclose
 end


// ファイルを消去する
rm:
  if argc#<2 then "bad argument.", prints nl end
  argv#(1), delete 
  end


// argcとargvを設定する
split_arg:
 count pp0#
  0,  argc#=   cmd_buf+MAX_CHAR-1$=
  if cmd_buf$=NULL then end
  SPACE, cc$=
  for pp0#=cmd_buf to cmd_buf+MAX_CHAR
    if cc$<>SPACE goto split_arg1
      if (pp0)$<>SPACE then pp0#, argv#(argc#)= argc#++
    split_arg1:
    if cc$=SPACE  then (pp0)$, cc$= gotosplit_arg2
      (pp0)$, cc$=
      if (pp0)$=SPACE  then NULL, (pp0)$=
    split_arg2:
  if (pp0)$(1)<>NULL then next pp0#
  end


// プログラムをロードする
load_prog:
  char prog_name$(MAX_CHAR)
  count qq# 
  long   pp#,rr#
  char prog_fp$(FILE_SIZE)
  if argc#=0 then -1, end
  argv#(0), prog_name, strcpy
  ".efi", prog_name, strcat
  prog_name, prog_fp, ropen pp#=
  if pp#<>0 then -1, end
  for qq#=1 to PROG_HEADER_SIZE
    prog_fp, getc pp#=
    if pp#=EOF then -1, end
  next qq#
  program, qq#=
  load_prog1:
    prog_fp, getc rr#=
    if rr#=EOF goto load_prog2
    rr#, (qq)$=
    qq#++
    goto load_prog1
  load_prog2:
  0, end


// プログラムエリア
 char program$(MAX_PROG_SIZE)
