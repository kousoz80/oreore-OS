// ファイルをコピー後、元のファイルを消去する
main:
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
 infile,   rclose
 outfile, wclose
 argv#(1), delete
 end
