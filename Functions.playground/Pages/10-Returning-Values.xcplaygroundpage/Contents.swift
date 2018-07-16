import Foundation
/*:
 ![Make School Banner](./swift_banner.png)
 # データを返す

 ## 戻り値

 最後にもう一つ、関数ができることがあります。データを返すことです！良いコードの条件は読みやすいことで、データを返す関数を使うと、綺麗に整理されたコードになります。

 どのように定義をすれば良いか見てみましょう。

 - note: 円の一周は360度か、2πラジアンです。半周は180度で、πラジアンです。四分の一の円は、90度でπ/2ラジアンです。
 */
/*:
 - note: `Double.pi` はSwiftが持つ定数で、Double型のπを表します。

 */

func radiansToDegrees(radians: Double) -> Double {
    return radians * 180 / Double.pi
}

let halfPiRadiansInDegrees = radiansToDegrees(radians: Double.pi / 2)
let piRadiansInDegrees = radiansToDegrees(radians: Double.pi)
let twoPiRadiansInDegrees = radiansToDegrees(radians: 2 * Double.pi)

/*:

 ## 戻り値を持つ関数を定義する

 戻り値を持つ関数の書き方:

    func functionName() -> ReturnType {
        // "function body"
        return valueToReturn
    }

 パラメタはいくつでも追加できますが、大事なポイントがあります。

 1. `-> ReturnType`: `ReturnType`には返したい値のデータ型を入力します。 (`Int`, `Double`, `String`, など)
 2. `return valueToReturn`: `return`は、Swiftにこの行で関数を終了して、`return` の後に書かれている値を返してね、と命令します。`valueToReturn`は`ReturnType`で定義したデータ型と同じでなくてはいけません。

 - 重要: この関数は何があっても`ReturnType`を返さなくてはいけません！

 ## 角度からラジアンへ

 戻り値を持つ関数を定義してみましょう！

 - callout(Challenge): 下に`degreesToRadians`を書いて、テストコードをアンコメントしましょう。 `Double`型の`degrees`をパラメタとして受け取り、`Double`を返します。
 */
/*:
 - note: 角度からラジアンへの変換の計算は、上に書いてある関数の計算を逆にして使えますね。`180`で割って、`Double.pi` (π)をかける

 */






//let halfPi = degreesToRadians(degrees: halfPiRadiansInDegrees)
//let pi = degreesToRadians(degrees: piRadiansInDegrees)
//let twoPi = degreesToRadians(degrees: twoPiRadiansInDegrees)

/*:

 - note: 1/2πはだいたい1.57、π はだいたい3.14, 2πは約6.28です。書いた関数がこの数字と合っているか確かめましょう。

 ## drawPolygonを書き直す

 - callout(Challenge): `calculateRotationForPolygon`関数を下に作ります。`Int`型の`sides`をパラメタとして受け取り、`Double`の値を返します。前に書いた `drawPolygon`関数をコピーしてきて使いましょう。

 */









//: - callout(Hint): `sides(辺の数)`は `Int` から `Double` へ _キャスト(変換)_  する必要があります。Swiftはデータ型にとても厳しいのです！`Double(sides)`と書くことで、_キャスト(変換)_ することができます。

//:
//: [Previous](@previous) | [Next](@next)

















































//: ### This is setup code to make the live visualization work!
Pen.delay = 1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
