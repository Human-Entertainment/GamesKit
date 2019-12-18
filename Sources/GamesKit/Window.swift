//
//  File.swift
//  
//
//  Created by Bastian Inuk Christensen on 02/11/2019.
//

import CSDL2

struct Window  {
    let title: String
    let x: Int32
    let y: Int32
    let width: Int32
    let height: Int32
    
    init(title: String, x: Int32?, y: Int32?, height: Int32, width : Int32) {
        self.title = title
        self.x = x ?? Int32(SDL_WINDOWPOS_CENTERED_MASK)
        self.y = y ?? Int32(SDL_WINDOWPOS_CENTERED_MASK)
        self.width = width
        self.height = height
        self.window = {
            return SDL_CreateWindow(title, self.x, self.y, width, height, SDL_WINDOW_FULLSCREEN.rawValue)
        }()
    }
    
    private var window: OpaquePointer?
}
