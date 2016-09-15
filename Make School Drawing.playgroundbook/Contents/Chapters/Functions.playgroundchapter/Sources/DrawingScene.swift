import SpriteKit
import Foundation
import CoreGraphics

open class DrawingScene: SKScene {
    
    open var pen: Pen!
    var background: SKSpriteNode!
    open var penSprite: SKSpriteNode!
    var lastShapeNode = 0
    
    override open func didMove(to view: SKView) {
        penSprite = childNode(withName: "pen") as! SKSpriteNode
        background = childNode(withName: "background") as! SKSpriteNode
        pen = Pen.sharedInstance
    }
    
    open override func update(_ currentTime: TimeInterval) {
        penSprite.position = pen.position
        penSprite.zRotation = pen.rotation
        
        if lastShapeNode < pen.shapeNodes.count || pen.processing {
            pen.newShapeNode()
            let image = UIImage(cgImage: background.texture!.cgImage())
            UIGraphicsBeginImageContext(image.size)
            image.draw(at: CGPoint.zero)
            
//            image.lockFocus()
//            NSGraphicsContext.current()?.shouldAntialias = true
            let context = UIGraphicsGetCurrentContext()!
            context.setShouldAntialias(true)
            
            //move and invert canvas by scaling
            context.translateBy(x: 0, y: image.size.height)
            context.scaleBy(x: 1, y: -1)
            
            for i in lastShapeNode..<(pen.shapeNodes.count-1) {
                let data = pen.shapeNodes[i]!
                if data.numberOfPoints > 0 {
                    let path = data.path
                    data.color.set()
                    path.stroke()
                }
                lastShapeNode += 1
                pen.shapeNodes[i] = nil
            }
//            image.unlockFocus()
            
            background.texture = SKTexture(image: UIGraphicsGetImageFromCurrentImageContext()!)
            UIGraphicsEndImageContext()
            
            if !pen.processing {
                pen.shapeNodes = [ShapeNodeData?]()
            }
        }
    }
    
    open class func setup() -> SKView {
        let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        let scene = DrawingScene(fileNamed: "DrawingScene")!
        scene.scaleMode = .aspectFill
        sceneView.presentScene(scene)
        return sceneView
    }
}
