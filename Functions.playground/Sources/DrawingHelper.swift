import Foundation
import SpriteKit

let queue = DispatchQueue(label: "Drawing", attributes: [])
var firstCommand = true

public func delay() {
    if Pen.delay == 0.0 { return }
    let delay = UInt32(Pen.delay * Double(USEC_PER_SEC))
    usleep(delay)
}

public func delayStart() {
    if !firstCommand { return }
    queue.async { () -> Void in
        usleep(UInt32(2.0 * Double(USEC_PER_SEC)))
    }
    firstCommand = false
}

public func penDown() {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.penDown()
    }
}

public func penUp() {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.penUp()
    }
}

public func moveFifty() {
    move(50)
}

public func move(_ steps: Int) {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.move(steps)
    }
}

public func moveToX(_ x: Int, y: Int) {
    delayStart()
    queue.async { () -> Void in
        delay()
      Pen.sharedInstance.moveTo(x, y: y)
    }
}

public func moveTo(_ x: Double, y: Double) {
    delayStart()
    queue.async { () -> Void in
        delay()
      Pen.sharedInstance.moveTo(x, y: y)
    }
}

public func rotateNinety() {
  rotate(90)
}

public func rotate(_ degrees: Int) {
  rotate(Double(degrees))
}

public func rotate(_ degrees: Double) {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.rotate(degrees)
    }
}

public func setColor(_ red: Double, green: Double, blue: Double) {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.setColor(red, green: green, blue: blue)
    }
}

public func setColor(nsColor c: NSColor) {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.setColor(nsColor: c)
    }
}

public func setThickness(_ thickness: Double) {
    delayStart()
    queue.async { () -> Void in
        delay()
        Pen.sharedInstance.setThickness(thickness)
    }
}
