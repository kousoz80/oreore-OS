
# oreore-OS
  
本プログラム群はUEFIで起動しX86-64アーキテクチャ上で動作するOSを形成します 

### 起動画面
![enter image description here](https://imgur.com/ZDg0Yyl.jpg)
  
・操作法
  
デスクトップ画面やアイコンを右クリックすると
メニューが表示されてアイコンの作成や移動、削除、変更することができます。


アイコンメニュー画面
![enter image description here](https://imgur.com/CzIMNNu.jpg)



　　　
　アイコン作成・変更画面　![enter image description here](https://imgur.com/v67k4WK.jpg)　
　　
・マウス操作
  操作はマウスで行えますがキーボードをマウスの代わりに使うことまできます。
  
  
insertキー・・・キーボード、マウスからの操作を切り替える
  
矢印キー・・・カーソルの移動
  
Deleteキー・・・カーソルの移動速度を切り替える
  
Enterキー・・・左クリック
  
SPACEキー・・・右クリック
  
 Pauseキー・・・画面のイメージを画像ファイル"screenshot.img"に保存する
   
※画像ファイルは独自フォーマットなのでlinux等のOSで閲覧するときは画像ファイルを直下のbinフォルダにコピーしてから以下のコマンドをタイプして下さい。

$ java -jar paint_screenshot.jar
  

Ctrl+D・・・コマンドモードにする


コマンドモードになると以前のコンソール画面が表示されてコマンドを入力できるようになります。
  
## 1. アプリケーション
 ・エクスプローラ
 ・メモ帳
 ・電卓
 ・ペイント
 ・BASIC
 


  
  
### ・エクスプローラ

![](https://imgur.com/pWnql0b.jpg)
    
  ファイルを左クリックするとファイルを開くことができます。
 右クリックするとメニューが表示されて、ファイルのコピー、編集、削除、プロパティ(名前)変更などができます。
   ![enter image description here](https://imgur.com/3UM6ODS.jpg)  
 
   
    
### ・メモ帳
![enter image description here](https://imgur.com/SHD4cdG.jpg)

 ### ・電卓    
  ![enter image description here](https://imgur.com/Djepx4s.jpg)


 ###  ・ペイント    
![enter image description here](https://imgur.com/WRgHAjA.jpg)

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

  
  
## 4. 今後の予定
  
1. ~~マルチタスク化~~(完了)
2. ~~ウィンドウマネージャの導入~~(完了)
3. デバイス(USB)ドライバの導入



## 5. 謝辞
壁紙に使用した画像は　ふり〜フォトフォト〈著作権フリー無料画像〉様に提供していただきました。
この場を借りてお礼申し上げます
https://free2photo2.blogspot.com/



