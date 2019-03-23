//
//  Sign .swift
//  RPS
//
//  Created by Daniel Barcenas on 23/03/19.
//  Copyright © 2019 Erick Barcenas. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)


func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    
    if sign == 0{
        return .rock
    }else if sign == 1 {
        return .papper
    }else {
        return .scissors
    }
}

enum Sign {
    case rock, papper, scissors
    
    var emoji: String{
        
        switch self {
        case .rock :
            return "👊"
        case .papper :
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func takeTurn(_ opponet: Sign) -> GameState{
        switch self {
        case .rock:
            switch opponet {
                case .rock:
                    return GameState.draw
                case .papper:
                    return GameState.lose
            case .scissors:
                    return GameState.win
            }
        case .papper:
            switch opponet {
            case .rock:
                return GameState.win
            case .papper:
                return GameState.draw
            case .scissors:
                return GameState.lose
            }
            
        case .scissors:
            switch opponet {
            case .rock:
                return GameState.lose
            case .papper:
                return GameState.win
            case .scissors:
                return GameState.draw
            }
        }
    }
    
}
