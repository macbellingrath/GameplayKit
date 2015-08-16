//
//  Player.swift
//  GameplayKit
//
//  Created by Mac Bellingrath on 8/16/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit
import GameplayKit

class Player: NSObject, GKGameModelPlayer {
    var chip: ChipColor
    var color: UIColor
    var name: String
    var playerId: Int
    var opponent: Player {
        if chip == .Red {
            return Player.allPlayers[1]
        } else {
            return Player.allPlayers[0]
        }
    }
    
    static var allPlayers = [Player(chip: .Red), Player(chip: .Black)]
    
    init(chip: ChipColor) {
        self.chip = chip
        self.playerId = chip.rawValue
        
        if chip == .Red {
            color = .redColor()
            name = "Red"
        } else {
            color = .blackColor()
            name = "Black"
        }
        
        super.init()
    }


}
