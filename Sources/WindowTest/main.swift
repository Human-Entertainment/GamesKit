//
//  File.swift
//  
//
//  Created by Bastian Inuk Christensen on 20/12/2019.
//

import GamesKit

struct Game: GameLoop {
    var state: GameState = .running
    
    var window: Window = Window.init(title: "", height: 400, width: 600, options: [.hidpi])

    func game() {
        return
    }
    
    func shutdown() {
        return
    }
}

var game = Game()

game.run()
