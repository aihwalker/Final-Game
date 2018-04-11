//
//  GameScene.swift
//  Final Game
//
//  Created by awalker on 4/10/18.
//  Copyright © 2018 awalker. All rights reserved.
//
// zimka test
import SpriteKit
import GameplayKit

class GameScene: SKScene {
   
    override func didMove(to view: SKView) {
    createBackground()
    }
    
    func createBackground(){
        let waves = SKTexture(imageNamed:"waves")
        for i in 0...1{
            let wavesBackground = SKSpriteNode(texture: waves)
            wavesBackground.zPosition = -1
            wavesBackground.position = CGPoint(x: 0, y: wavesBackground.size.height * CGFloat(i))
            addChild(wavesBackground)
            let moveDown = SKAction.moveBy(x: 0, y: -wavesBackground.size.height, duration: 07)
            let moveReset = SKAction.moveBy(x: 0, y: wavesBackground.size.height, duration: 0)
            let moveLoop = SKAction.sequence([moveDown, moveReset])
            let moveForever = SKAction.repeatForever(moveLoop)
            wavesBackground.run(moveForever)
}
}
}
