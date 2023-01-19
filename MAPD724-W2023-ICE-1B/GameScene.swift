import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    
    var ocean1: Ocean?
    var ocean2: Ocean?
    
    override func sceneDidLoad()
    {
        //first ocean
        ocean1 = Ocean()
        ocean1?.Reset()
        addChild(ocean1!)
        //second ocean
        ocean2 = Ocean()
        ocean2?.position.y = -773
        addChild(ocean2!)
    }
    
    func touchDown(atPoint pos : CGPoint)
    {
       
    }
    
    func touchMoved(toPoint pos : CGPoint)
    {

    }
    
    func touchUp(atPoint pos : CGPoint)
    {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean1?.Update()
        ocean2?.Update()
    }
}
