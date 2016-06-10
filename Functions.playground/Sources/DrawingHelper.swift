import Foundation
import SpriteKit

let queue = dispatch_queue_create("Drawing", DISPATCH_QUEUE_SERIAL)

func delay() {
    if Pen.delay == 0.0 { return }
    let delay = UInt32(Pen.delay * Double(USEC_PER_SEC))
    usleep(delay)
}

public func penDown() {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.penDown()
    }
}

public func penUp() {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.penUp()
    }
}

public func moveFifty() {
    move(50)
}

public func move(steps: Int) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.move(steps)
    }
}

public func moveToX(x: Int, y: Int) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.moveTo(x: x, y: y)
    }
}

public func moveTo(x x: Double, y: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.moveTo(x: x, y: y)
    }
}

public func rotateNinety() {
    rotate(90)
}

public func rotate(degrees: Int) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.rotate(degrees)
    }
}

public func setColor(red red: Double, green: Double, blue: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.setColor(red: red, green: green, blue: blue)
    }
}

public func setColor(nsColor c: NSColor) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.setColor(nsColor: c)
    }
}

public func setThickness(thickness: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.setThickness(thickness)
    }
}
