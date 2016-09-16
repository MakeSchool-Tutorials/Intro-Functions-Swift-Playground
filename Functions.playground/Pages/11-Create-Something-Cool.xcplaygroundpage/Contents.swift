/*:
 ![Make School Banner](./swift_banner.png)
 # Create something cool
 
 - experiment: Use everything you learned to draw something awesome! See below for a few more functions you can use to bring your art to life!
 
 ## Drop and lift the pen
 
 - callout(Drop the pen): `penDown()`
 
 
 - callout(Lift the pen): `penUp()`
 
 
 - note: The pen starts out down.
 
 ## Moving the pen
 
 - callout(Move by a number of steps): `move(steps: Int)`
 
 
 - callout(Move directly to coordinates): `moveTo(x: Int, y: Int)`
 
 
 - callout(Rotate heading by an angle): `rotate(degrees: Int)`
 
 ## Change the pen
 
 - callout(Set color of pen): `setColor(red: Double, green: Double, blue: Double)`
 
 
 - note: Each value should be between 0 and 1. eg. `setColor(red: 0.0, green: 0.0, blue: 0.0)` would change the pen to be black. `setColor(red: 1.0, green: 0.0, blue: 0.0)` would change the pen to be red.
 
 
 - callout(Set thickness of pen): `set(thickness: Double)`
 
 */
//: [Previous](@previous)
/*:
 
 - callout(Challenge): Draw something awesome in the space below!
 
 */



// Exploratory exercise but here is something cool and simple

func calculateRotationForPolygon(sides: Int) -> Double {
    return 360.0 / Double(sides)
}

func drawPolygon(numberOfSides: Int, sideLength: Int) {
    let rotation = calculateRotationForPolygon(sides: numberOfSides)
    for _ in 1...numberOfSides {
        move(steps: sideLength)
        rotate(degrees: rotation)
    }
}

func drawFlower(numberOfSides: Int, sideLength: Int) {
    var i = 0
    for _ in 1...numberOfSides {
        let greyScale = Double(i) / Double(numberOfSides)
        setColor(red: greyScale, green: greyScale, blue: greyScale)
        drawPolygon(numberOfSides: numberOfSides, sideLength: sideLength)
        rotate(degrees: calculateRotationForPolygon(sides: numberOfSides))
        i = i + 1
    }
}

drawFlower(numberOfSides: 5, sideLength: 40)



//#-hidden-code
Pen.delay = 0.1
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
