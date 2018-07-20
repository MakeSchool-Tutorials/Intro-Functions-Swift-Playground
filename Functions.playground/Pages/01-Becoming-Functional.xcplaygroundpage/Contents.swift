/*:
 ![Make School Banner](./swift_banner.png)
 # 関数を学ぶ
 ## 関数のきほん

 変数の使い方がいたについてきたところで、今度は関数について学びます。関数はある程度まとまったコードのブロックのようなもので、繰り返し使いまわすことができます。このPlaygroundではお絵かきツールを使って勉強します。最初はシンプルな絵からはじめ、新しいことを覚えるにしたがって徐々に複雑になっていきます。

 ## 関数を呼び出してみよう！

 関数を呼び出せるようになるために、さっそく始めましょう。次のコードを入力し、画面ビジュアルの変化を見てください。

    moveFifty()

*/



/*:

 これから関数の呼び出しについて何が分かるでしょうか。

 ## 関数呼び出しの仕組み

 関数の呼び出しは、変数に似たものに後ろにカッコが付いています。次のような形をとります。

    functionName()

 この場合、`moveFifty`という関数を呼び出したことになる。画面ビジュアルではなにが起きましたか？三角形が50単位分動いて、後に線を残したのが見えましたか？

 関数は、変数と同様に呼び出す前にしっかりと定義しなければならない、ということを覚えておきましょう。 `moveFifty()`関数の定義は、別のファイルにあらかじめ用意しておきました。`moveFifty()`はどこでも使えますが、いきなり`moveThirty()`と書いても何もおきません。`moveThirty`はまだ定義されていないからです。関数の定義のしかたは後で学びますが、まずは呼び出すことに集中しましょう。

 - experiment: （実験）下のスペースで `moveFifty`関数を再び呼び出すとどうなるでしょうか？3回目はどうでしょう？
*/
/*:
 - important: （重要）関数の呼び出しは一つずつ異なる行にあることを確かめましょう。カッコも忘れずに！

 */





/*:

 ## 何が起きましたか?

 `moveFifty`関数を呼び出すたびに、その関数のコードが実行されます。ここでは3回連続で `moveFifty` 関数を呼び出したため、三角形は150単位分まっすぐ動き、後ろに線を残します。

*/
//: [Next](@next)

















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results

