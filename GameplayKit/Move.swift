//
//  Move.swift
//  GameplayKit
//
//  Created by Mac Bellingrath on 8/16/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import GameplayKit
import UIKit

class Move: NSObject, GKGameModelUpdate {
    var value: Int = 0
    var column: Int
    
    init(column: Int) {
        self.column = column
    }
}