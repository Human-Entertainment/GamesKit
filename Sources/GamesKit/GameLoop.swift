//
//  GameLoop.swift
//  
//
//  Created by Bastian Inuk Christensen on 01/11/2019.
//

import CSDL2

protocol GameLoop {
    var state: GameState { get set }
    
    func shutdown() -> Void
    
    func game() -> Void
    
    func pause() -> Void
}

extension GameLoop {
    
    /// Sets up the window and runs the game
    func run() -> Void {
        // TODO: Setup SDL
        
        while state != .down {
            switch state {
            case .running:
                game()
                break;
            case .paused:
                pause()
                break;
            default:
                break;
            }
        }
        
        shutdown()
    }
}

enum GameState {
    case down
    case running
    case paused
}
