
# oreore-OS
本プログラム群はUEFIで起動しX86-64アーキテクチャ上で動作するOSを形成します 

### 今回の変更点 (ver1.0)
・スタートボタンを追加しました
  
・OSの説明アプリケーションを追加しました
  
### 起動画面
  
![enter image description here](https://imgur.com/2npIPMK.jpg)
  

・操作法
  
デスクトップ画面やアイコンを右クリックすると
メニューが表示されてアイコンの作成や移動、削除、変更することができます。
  
  
アイコンメニュー画面
   ![enter image description here](https://imgur.com/IapmxCB.jpg)

  
  
アイコン作成・変更画面
  
![enter image description here](https://imgur.com/pQ9ToyB.jpg)  
    
    　　
・マウス操作
  操作はマウスで行えますがキーボードをマウスの代わりに使うことまできます。
  
  
insertキー・・・キーボード、マウスからの操作を切り替える
  
矢印キー・・・カーソルの移動
  
Deleteキー・・・カーソルの移動速度を切り替える
  
Endキー・・・左クリック
  
PgDnキー・・・右クリック
  
 Pauseキー・・・画面のイメージを画像ファイル"screenshot.img"に保存する
   
※画像ファイルは独自フォーマットなのでlinux等のOSで閲覧するときは画像ファイルを直下のbinフォルダにコピーしてから以下のコマンドをタイプして下さい。

$ java -jar paint_screenshot.jar
  

Ctrl+D・・・コマンドモードにする


コマンドモードになるとコンソール画面が表示されてコマンドを入力できるようになります。
  
また、コマンドモードからデスクトップ画面に戻るためにはstartxコマンドを入力して下さい。
  
  
## 1. アプリケーション
 ・エクスプローラ
 ・メモ帳
 ・電卓
 ・ペイント
 ・BASIC
 


  
  
### ・エクスプローラ
  
 ![enter image description here](https://imgur.com/YVEXNrf.jpg) 
    
  ファイルを左クリックするとファイルを開くことができます。
 右クリックするとメニューが表示されて、ファイルのコピー、編集、削除、プロパティ(名前)変更などができます。
     
 ![enter image description here](https://imgur.com/E4yr7lL.jpg)
   
    
### ・メモ帳
  
![enter image description here](https://imgur.com/iM8FQdy.jpg)  
   
 ### ・電卓    
  
![enter image description here](https://imgur.com/Hbw7zKI.jpg)  
  
 ###  ・ペイント    
  
![enter image description here](https://imgur.com/OY2ifJn.jpg)  
  
 ###  ・TELNETクライアント
       
 ![enter image description here](https://imgur.com/mVqVaOu.jpg) 
 今回のバージョンではネットワーク機能を追加しました。
 TELNETクライアントアプリケーションを使うとネットワークを介して他のパソコンに接続することができます。
   
   
 ###  ・BASIC
 ![enter image description here](https://imgur.com/wqStfS8.jpg)


![enter image description here](https://imgur.com/3IJi7Rt.jpg)


詳細は以下のリンクを参照してください    

https://github.com/kousoz80/Oreore-Basic
  
  


### コマンドモード表示画面
コマンドモードに切り替えるにはCTRL+Dを入力します。


![screen shot](https://imgur.com/h6ZTOEM.jpg)







![enter image description here](https://imgur.com/8y0rDwU.jpg)
    



![enter image description here](https://imgur.com/XWTbZ3G.jpg)
  
## 2. OSのコマンド

  ls         ・・・ファイルリストの表示

 ps         ・・・プロセスの表示
  
  cat      ・・・ファイルの内容を表示
  
   cp       ・・・ファイルのコピー
  
  mv     ・・・ファイルをコピーして元のファイルを消去
  
  rm      ・・・ファイルの消去

 cls      ・・・画面の消去
  
 shutdown      ・・・シャットダウン
  
 reboot      ・・・OSの再起動
  
 startx      ・・・ウィンドウマネージャを起動
  
 lsusb      ・・・USB機器の一覧を表示
  
 telnet      ・・・TELNETクライアント(qemuでは動作しません)
  
 mouse_test      ・・・マウスドライバのテスト(qemuでは動作しません)
  
 mplayer      ・・・音楽やビデオを再生する(qemuでは動作しません)
   
 エクスプローラを開いてファイルをクリックすれば自動的に起動して再生できます
  
### edit       ・・・エディタ

テキストファイルを編集します
  
![enter image description here](https://imgur.com/lrM0GpZ.jpg)
  
・コマンドライン

edit [ファイル名]

編集キー

r ・・・ファイルを読み込む、何も入力せずEnterを押せばコマンドラインで指定したファイルが読み込まれる。

w ・・・編集内容をファイルに書き込む、何も入力せずEnterを押せばコマンドラインで指定したファイルに書き込まれる。

下矢印キー・・・下に移動

上矢印キー・・・上に移動

i・・・現在の行の直前にテキストを挿入する

挿入時にはプロンプト">"が表示される。

"."を入力すると挿入モードが解除される

a・・・現在の行の直後にテキストを挿入する

d・・・現在の行を削除する

m・・・現在の行の文字列を置換する

s・・・現在の行をマークする

c・・・マークした行を現在の行の直前に挿入する
そのままでは1行しか挿入されないが、"10c"のように直前に数字を打てばその行数分挿入される。

q・・・エディタを終了する

  
  
### asm       ・・・アセンブラ

アセンブラのソースファイルから実行可能ファイルを作成します

・コマンドライン

asm  ソースファイル [実行ファイル]

例
asm asm.s hello.efi


詳細は以下を参照して下さい

https://github.com/kousoz80/asm_x64


### orc       ・・・コンパイラ

コンパイラのソースファイルからアセンブラのソースファイルを作成します。

・コマンドライン

orc  ヘッダファイル ソースファイル

例
orc stdio.rh hello.r

※作成されるアセンブラのソースファイル名は"asm.s"に固定されています。

詳細は以下を参照して下さい

https://github.com/kousoz80/oregengo_R

   

  
## 3. 実機で動作させるには

binディレクトリのファイルをUSBメモリにコピーしてパソコンに挿して起動してください。

  
  
## 4. 謝辞
ネットワークプログラミングについては坂井弘亮様のページが大変参考になりました。
  
http://kozos.jp/

また壁紙に使用した画像は　pixabay様に提供していただきました。
  
https://pixabay.com/ja/

また付属のサンプル動画はワーナーブラザーズ様に提供していただきました。
https://warnerbros.co.jp/characters/tomandjerry/

またOSの起動音はいまたく様に提供していただきました
https://dova-s.jp/bgm/play11840.html
  

この場を借りてお礼申し上げます


