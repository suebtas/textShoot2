//
//  PlayerNode.swift
//  textShoot2
//
//  Created by Suebtas on 3/24/2558 BE.
//  Copyright (c) 2558 ist. All rights reserved.
//

import UIKit
import SpriteKit
import Foundation

class PlayerNode: SKNode {
    override init() {
    super.init()
    name = "Player \(self)"
    initNodeGraph()
    }
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    }
    private func initNodeGraph() {
    let label = SKLabelNode(fontNamed: "Courier")
    label.fontColor = SKColor.darkGrayColor()
    label.fontSize = 40
    label.text = "v"
    label.zRotation = CGFloat(M_PI)
    label.name = "label"
    self.addChild(label)
    }
}
