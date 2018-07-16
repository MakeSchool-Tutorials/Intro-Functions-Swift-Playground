/*:
 ![Make School Banner](./swift_banner.png)
 # コードを繰り返す

 ## ループの簡単な紹介

 何度かポリゴン関数を書き直しましたが、もしかしたらもっと一般的にポリゴンが描きたくなるかもしれません、紙とペンを使って、今使っているコードをどうしたら減らすことができるか考えてみましょう。

 今回は、`move`と`rotate`を１度ずつしか使わず、`drawTriangle`, `drawSquare`, `drawPentagon`, and `drawHexagon`を完成させる方法を考えてみましょう。

 次のように書くと...

    4 回繰り返しで
        10 進む

 全部で40単位分(一度に10単位ずつ)動くことになります。

 - callout(コードを設計する):これまで通り、紙に書き出した擬似コードを自分で読み返し、コードを「実行」してポリゴンを描いてみましょう。

 ## いい感じ？

 擬似コードをSwiftに変換しましょう。

    4 回繰り返しで
        10 進む

 Swiftでは、上の擬似コードは下のように書き換えられます

    for _ in 1...4 {
        move(10)
    }

 forループ構文は後で詳しく勉強しますが、今はこのように一般化できる、という事だけ知っておきましょう。

     for _ in 1...回数 {
         // 「forループの本体」
         // 指定した回数繰り返すコードがここに入る
     }

 関数の中身のように、forループの中身は中カッコで挟まれます。また、関数の中身と同じように、中カッコの中はインデントをします。

 ### やってみよう！

 - callout(チャレンジ):"forループ"の書き方が分かったところで(何行かのコードの繰り返し)、`drawTriangle`, `drawSquare`, `drawPentagon`,  `drawHexagon`の手法をそれぞれ修正してみましょう。修正後も大きさを調整できる関数であることを確かめましょう！


 */












/*:

  - callout(ヒント): 三角形を描く`drawTriangle`関数には上のforループ構文で`1...3`を使います。`drawSquare`関数は`1...4`を使います。

 */
//: [Previous](@previous) | [Next](@next)

















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
