/*:
 ![Make School Banner](./swift_banner.png)
 # 関数にもっとデータを渡す

 ## もっと多くのパラメタ

 さてここまでで、パラメタのない関数か、１つだけパラメタのある関数を見てきましたね。２つのパラメタを持つ関数を定義して見ましょう！どんな書き方か想像できますか？

 ## ポリゴン関数を一般化する

 `numberOfSides: Int`と`sideLength: Int`をパラメタに持つ`drawPolygon`関数を作るには:

    func drawPolygon(numberOfSides: Int, sideLength: Int) {
        // "関数の中身"
    }

 - note: パラメタ同士はカンマで区切ります。このようにカンマで区切っていけば、いくらでもパラメタを追加することができますよ！

 ## 試してみよう！

 - callout(Challenge): 上のテンプレートを使って、`drawPolygon`関数を作りましょう。for ループを使うといいでしょう！

 */









/*:

 ## １つ以上のパラメタを持つ関数を呼び出す

 この関数を呼び出したい時は、どうしたらいいでしょうか？`drawPolygon(numberOfSides: 3, 100)` でしょうか？いや、これでは動きません！

 `drawPolygon(numberOfSides: 3, sideLength: 100)`.が正しい呼び出し方です。

 ### どういうこと？

 `drawPolygon(numberOfSides: 3, sideLength: 100)`は動くのに、`drawPolygon(numberOfSides: 3, 100)` はどうして動かないのでしょう。デフォルトでは、Swiftはそれぞれのパラメタに、パラメタラベルを必要とします。パラメタの名前を明言しなかったら、Swiftはパラメタの名前をラベルとして使いたいのだと推測してしまうのです。つまり、複数のパラメタを持つ関数の一般的フォーマットは下のようになります:

    functionName(parameterOneName: parameterOneValue, parameterTwoName: parameterTwoValue)

 - callout(Challenge): `drawPolygon` 下に呼び出して、動くか確かめて見ましょう！

 */





/*:

 ## パラメタラベル

 Swiftでは、全てのパラメタに対してパラメタラベルが必要です。ラベルは、関数の中で使うパラメタの名前です。もう少し詳しくいうと、下のように関数を定義するのは、

    func drawPolygon(numberOfSides: Int, sideLength: Int)

 この下の関数の定義の仕方の短縮系なのです。

    func drawPolygon(numberOfSides numberOfSides: Int, sideLength sideLength: Int)

 ## パラメタラベルをマスターする

 ### カスタムのパラメタラベルを明言する

 もし変えたければ、パラメタ名とパラメタラベルは別の名前にできます！下のようなフォーマットで書く必要があります:

    func drawPolygon(sides numberOfSides: Int, sideLength: Int)

 呼ぶ時は下のように呼び出します:

    drawPolygon(sides: 3, sideLength: 100)
 
 - callout(ヒント): 初めのパラメタだけではなくて、他のパラメタにも同じようにカスタムした名前をつけることができますよ！

 ### パラメタをパラメタラベルから取り除く
 
 もしくは、ラベルを使いたくない時は、下のフォーマットを使うこともできます:

    drawPolygon(numberOfSides: Int, _ sideLength: Int)

 上の関数は、下のように呼び出されます。

    drawPolygon(numberOfSides: 3, 100)
 
 - callout(ヒント): `_` は、ラベルが必要ないということを示す方法です。

 */
//: [Previous](@previous) | [Next](@next)

















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
