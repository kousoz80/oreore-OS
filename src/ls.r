//  ディレクトリ表示
main:
  const FILE_NAME  0x50
  char buf$(1024)
  long t#,mode#

  argv#(1), "-wait", strcmp mode#=
   buf, vol_read  t#=   // ディレクトリ情報を一つ分読み込む
    if t#=0 goto exit1
      0, buf+20$=
      buf+FILE_NAME, _nallow prints nl  // 名前の部分を表示する
    goto main
  exit1:
  vol_close  // ディレクトリを閉じる
  vol_open  // ディレクトリを開く
  if mode#<>0 then end
  loop:
  inkey t#=
  if t#=0 goto loop
  end
