/*:
 ![Make School Banner](./swift_banner.png)
 # 関数にデータを入れ込む

 ## 関数を定義する

 これまでは、パラメタのある関数、ない関数を呼び出し、パラメタのない関数は定義の書き方も覚えました。

 パラメタのない関数を呼び出す：

    functionName()

 パラメタを1つもつ関数を呼び出す：

    functionName(parameterName: parameterValue)

 パラメタのない関数を定義する：

    func functionName() {
       // "function body"
       // function's code goes here
    }

 `func`のキーワードではじめ、関数の名前、カッコ、と入力し、関数のなかのコードは中カッコで挟みます。

 ## 関数の定義にパラメタを組み込む

 1つのパラメタをもつ関数の一般的な形：

     func functionName(parameterOneName: parameterOneType) {
         // "function body"
         // function's code goes here
         // value passed in becomes a constant with the name parameterOneName
     }

 これを先程書いた関数の定義と比べてみると、カッコの中にパラメタの名前とタイプが入力されているのが分かります。最初は同じキーワード`func`で書き出し、関数の名前、カッコ、中カッコと続きます。中カッコの中身はインデントすることを忘れずに！(Xcodeが自動的にインデントしない場合は、tabキーを押すだけで簡単にできます)
 
 前に勉強した変数の定義と同じように、パラメタの定義でもデータタイプを指定する必要があり、異なるデータタイプの関数を呼び出すことはできません。パラメタの名前もまた、変数の名前に似ています。分かりやすく、短い名前を心掛けましょう。他のプロクラマーが見ても、何の役割があるのか一目瞭然であるのが理想的です。

 ### データタイプの復習

 データタイプはプログラミングに使われている情報の種類を示します。変数や定数の定義、値の修正、関数にパラメタを入れ込む場合に重要となります。これまで3つのデータタイプを学びましたね。

  - `Int`: 整数、割り算で少数が出た場合は小数点以下が必ず切り捨てられます！
  - `Double`: 小数
  - `String`: 英数字やその他記号の文字列、たとえ数字だけの文字列であっても計算式は作れない。Stringはダブルクオーテーションで挟まれている (`"これはstring!"`)

 ## より多目的なdrawSquare

 - callout(チャレンジ):大きさを規定するパラメタを含む、新しい`drawSquare`関数を作りましょう。これでひとつの関数で色々な大きさの四角形を描くことができます！下のスペースに途中まで書いています。`drawSquare`は`sideLength`という `Int`のデータタイプ(整数)のパラメタです。関数の中身を書き込みましょう。

 `sideLength`は関数の中で定数となります。定数や変数は他の関数を呼び出す時にパラメタの役割をします。`drawSquare(sideLength: 150)`という関数を呼び出して新しい手法を試してみましょう。

 - 重要：定義を書いた後にはdrawSquare関数を呼び出すことを忘れずに！前のページで練習した通り、パラメタを含む形で呼び出す必要があります。


 */

func drawSquare(sideLength: Int) {

}

/*:

 ## すべてうまくいきましたか？

 - callout(チャレンジ): 大きさを調整できる`drawSquare`のコードがうまく実行できたら、`drawTriangle`, `drawPentagon`, `drawHexagon`も同じように変更してみましょう。

 */












//: [Previous](@previous) | [Next](@next)


















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
