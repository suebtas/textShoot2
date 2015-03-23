//
//  GameScene.swift
//  textShoot2
//
//  Created by Suebtas on 3/23/2558 BE.
//  Copyright (c) 2558 ist. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    private var levelNumber: UInt
    private var playerLives: Int
    private var finished = false
    private let playerNode: PlayerNode = PlayerNode()
    class func scene(size:CGSize, levelNumber:UInt) -> GameScene {
        return GameScene(size: size, levelNumber: levelNumber)
    }
    init(size:CGSize, levelNumber:UInt) {
        self.levelNumber = levelNumber
        self.playerLives = 5
        super.init(size: size)
        backgroundColor = SKColor.whiteColor()
        let lives = SKLabelNode(fontNamed: "Courier")
        lives.fontSize = 16
        lives.fontColor = SKColor.blackColor()
        lives.name = "LivesLabel"
        lives.text = "Lives: \(playerLives)"
        lives.verticalAlignmentMode = .Top
        lives.horizontalAlignmentMode = .Right
        lives.position = CGPointMake(frame.size.width,
        frame.size.height)
        addChild(lives)
        let level = SKLabelNode(fontNamed: "Courier")
        level.fontSize = 16
        level.fontColor = SKColor.blackColor()
        level.name = "LevelLabel"
        level.text = "Level \(levelNumber)"
        level.verticalAlignmentMode = .Top
        level.horizontalAlignmentMode = .Left
        level.position = CGPointMake(0, frame.height)
        addChild(level)
        
        playerNode.position = CGPointMake(CGRectGetMidX(frame),
        CGRectGetHeight(frame) * 0.1)
        addChild(playerNode)
    }
    override convenience init(size:CGSize) {
        self.init(size: size, levelNumber: 1)
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch: AnyObject in touches {
        let location = touch.locationInNode(self)
        } }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    required init?(coder aDecoder: NSCoder) {
        levelNumber = UInt(aDecoder.decodeIntegerForKey("level"))
        playerLives = aDecoder.decodeIntegerForKey("playerLives")
        super.init(coder: aDecoder)
    }
    override func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInteger(Int(levelNumber), forKey: "level")
        aCoder.encodeInteger(playerLives, forKey: "playerLives")
    }
}
