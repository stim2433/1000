//
//  Game.swift
//  whot
//
//  Created by stimLite on 04.08.2020.
//  Copyright © 2020 stimLite. All rights reserved.
//

import Foundation


class Game{
    
    static let game = Game()
    
    private init() {}
    
    var gameSesion: GameSession?
    
    
}



class GameSession {
    
    var didQuestion: Int = 0
    var willQuestion: Int = 0
    

}

