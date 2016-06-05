//: [Previous](@previous)
/*:
 
 # Create something cool
 
 - experiment: Use everything you learned to draw something awesome! See below for a few more functions you can use to bring your art to life!
 
 ## Drop and lift the pen
 
 - callout(Drop the pen): penDown()
 
 - callout(Lift the pen): penUp()
 
 - note: The pen starts out down
 
 ## Moving the pen
 
 - callout(Move by a number of steps): move(steps: Int)
 
 - callout(Move directly to coordinates): moveTo(x x: Int, y: Int)
 
 - note: This is called with labels for both parameters! eg. `moveTo(x: 10, y: 40)`
 
 - callout(Rotate heading by an angle): rotate(degrees: Int)
 
 ## Change the pen
 
 - callout(Set color of pen): setColor(red red: Double, green: Double, blue: Double)
 
 - note: This is called with labels for all 3 parameters! Each value should be between 0 and 1. eg. `setColor(red: 1.0, green: 1.0, blue: 1.0)` would change the pen to be white.
 
 - callout(Set thickness of pen): setThickness(thickness: Double)
 
 */























































































//: - callout(This is setup code to make the live visualization work!
Pen.delay = 2
import XCPlayground
import Foundation
let results = DrawingScene.setup()
XCPlaygroundPage.currentPage.liveView = results