// ファイルを表示する
main:
 long uu#
 char fp1$(FILE_SIZE)

  if argc#<>2 then "bad argument.", prints nl end
  argv#(1), fp1, ropen uu#=// ファイルを開く
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
