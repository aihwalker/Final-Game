//
//  GameScene.swift
//  Final Game
//
//  Created by awalker on 4/10/18.
//  Copyright © 2018 awalker. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
   
    var jetSki = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
        createBackground()
        makeJetSki()
    
    }
    
    func createBackground(){
        let waves = SKTexture(imageNamed:"waves")
        for i in 0...1{
            let wavesBackground = SKSpriteNode(texture: waves)
            wavesBackground.zPosition = -1
            wavesBackground.position = CGPoint(x: 0, y: wavesBackground.size.height * CGFloat(i))
            addChild(wavesBackground)
            let moveDown = SKAction.moveBy(x: 0, y: -wavesBackground.size.height, duration: 10)
            let moveReset = SKAction.moveBy(x: 0, y: wavesBackground.size.height, duration: 0)
            let moveLoop = SKAction.sequence([moveDown, moveReset])
            let moveForever = SKAction.repeatForever(moveLoop)
            wavesBackground.run(moveForever)
}
    }
        
        func makeJetSki() {
            let jetSki = SKSpriteNode(imageNamed: "boat")
            jetSki.position = CGPoint(x: frame.midX, y: frame.midY - 200)
            jetSki.name = "jetSki"
            jetSki.xScale = 0.5
            jetSki.yScale = 0.5
            jetSki.physicsBody = SKPhysicsBody(rectangleOf: jetSki.size)
            jetSki.physicsBody?.isDynamic = false
            addChild(jetSki)
}
}

