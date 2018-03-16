/*:
 ![Make School Banner](./swift_banner.png)
 # 関数呼び出しの組み合わせ
 ## 90度で回転

 新しい関数`rotateNinety`を使ってみましょう。関数の呼び出しは必ずカッコを付けること。次のコードを入力し、画面ビジュアルの変化を見てみましょう。

    rotateNinety()

 */



/*:

 ## 何が起きましたか？

 三角形が半時計回り(左回りに)に90度回転したでしょうか？ `rotateNinety` 関数は`moveFifty`関数と呼び名が異なり、それぞれ違ったコードを実行します。

 - experiment: `moveFifty`関数の呼び出しと`rotateNinety`関数の呼び出しを組み合わせるとどうなるでしょう？
 */
/*:
 - important: 関数の呼び出しをそれぞれ異なる行に書き、くれぐれもカッコを忘れずに！

 */
//: [Previous](@previous) | [Next](@next)

















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
