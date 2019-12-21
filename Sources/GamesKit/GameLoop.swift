//
//  GameLoop.swift
//  
//
//  Created by Bastian Inuk Christensen on 01/11/2019.
//

import CSDL2

/**
 For making games!
 */
public protocol GameLoop {
    var state: GameState { get set }
    
    var window: Window { get set }
    
    func shutdown() -> Void
    
    mutating func game() -> Void
    
    func pause() -> Void
}

extension GameLoop {
    
    /// Sets up the window and runs the game
    public mutating func run() -> Void {
        // TODO: Setup SDL
        let event = SDL_Event()
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
            
            switch event.type {
            case SDL_KEYDOWN.rawValue:
                if event.key.keysym.sym == SDL_Keycode(SDLK_q) {
                    state = .down
                }
            default:
                break;
            }
        }
        
        shutdown()
    }
}

public enum GameState {
    case down
    case running
    case paused
}
