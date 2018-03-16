/*:
 ![Make School Banner](./swift_banner.png)
 # かっこいい絵を描こう
 
 - これまでに習ったことを使って、何かかっこいい絵を書いてみましょう！他にも使えるツールを紹介します:
 
 ## ペンを置いたり離したりする
 
 - callout(ペンを置く): `penDown()`
 */

/*:
 - callout(ペンを離す): `penUp()`
 */

/*:
 - note: 初めはペンを置いた状態からスタートしています。
 
 ## ペンを動かす
 
 - callout(stepだけペンを動かす): `move(steps: Int)`
*/
 
/*:
 - callout(x, yへペンを動かす): `moveTo(x: Int, y: Int)`
 */

/*:
 - callout(回転させる): `rotate(degrees: Int)`
 
 ## ペンを変える
 
 - callout(ペンの色を変える): `setColor(red: Double, green: Double, blue: Double)`

 */

/*:
 - note: それぞれの値は0から1の間で設定します。`setColor(red: 0.0, green: 0.0, blue: 0.0)`は黒色に、 `setColor(red: 1.0, green: 0.0, blue: 0.0)`は赤色になります。
 */

/*:
 - callout(ペンの太さ): `set(thickness: Double)`
 
 */

//: [Previous](@previous)

/*:
 
 - callout(Challenge):ここにコードを書いていきましょう！

 
 */























































































//: This is setup code to make the live visualization work!
Pen.delay = 0.1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
