// Kous-OS version 0.0.1
// "cmd.r" コマンド実行プログラム
// "compile"を実行するとコンパイルが始まります

main:
  long cmd#,arg#,f#

  cls
  "Kous-OS version 0.0.1", prints nl
  loop1:
    "$ ", prints
    get_line 
    split_arg
    cmd#, "ls", strcmp f#=
    if f#=0 then ls
    cmd#, "cat", strcmp f#=
    if f#=0 then arg#, cat
    cmd#, "exit", strcmp f#=
    if f#<>0 goto loop1
    "*** exit ***", prints nl
  end


//  ディレクトリ表示
ls:
  long t#
  char buf$(1024)
  char fp$(FILE_SIZE)

  fp, dopen  t#= // ディレクトリを開く
  if t#<>0 then "ERROR!", prints nl end
  ls1:
   buf, dread  t#=   // ディレクトリ情報を一つ分読み込む
    if t#=0 goto ls2
      0, buf+20$=
      buf+FILE_NAME, _nallow prints nl  // 名前の部分を表示する
    goto ls1
  ls2:
  dclose  // ディレクトリを閉じる
  end


// ファイルを表示する
cat:
  char fp1$(FILE_SIZE)
  long fname#,u#

  fname#=
  if fname#=0 then "no argument!", prints nl end
  fname#, fp1, ropen  u#=// ファイルを開く
  if u#<>0 then "ERROR!", prints nl end
  cat1:
    fp1, getc u#=
    if u#=EOF goto cat2 // EOFなら終了
    if u#=10 then 13, putchar  // LFを読み込んだときはCRも出力する
    u#, putchar // 読み込んだ文字を表示
  goto cat1
  cat2:
  fp1, rclose  // ファイルを閉じる
  end


// １行入力
get_line:
  char linebuf$(1024)
  char cc$
  long st#
  
  linebuf, st#=
  get_line1:
    getchar cc$= putchar // １文字入力
    if cc$=13 then nl gotoget_line2  // Enterで入力終わり
    if cc$<32 then nl "? ", prints gotoget_line    // 他のコントロールキーでやり直し
    cc$, (st)$=
    st#++
    goto get_line1
  get_line2:
  0, (st)$=
  end


// コマンドと引数を分離する
split_arg:
  long p#

  linebuf, cmd#=
  0, arg#=

// コマンドの先頭を求める
split_arg1:
  if (cmd)$>32 then cmd#, p#= gotosplit_arg2
  cmd#++
  goto split_arg1

// コマンドの終端を求める
split_arg2:
  p#++
  if (p)$=0 then end
  if (p)$>32 goto  split_arg2
  0, (p)$=
  p#++

// 引数の先頭を求める
split_arg3:
  if (p)$=0 then end
  if (p)$<=32 then p#++ gotosplit_arg3
  p#, arg#=

// 引数の終端を求める
split_arg4:
  p#++
  if (p)$=0 then end
  if (p)$>32 goto  split_arg4
  0, (p)$=
  end
