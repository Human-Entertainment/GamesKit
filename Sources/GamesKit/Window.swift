//
//  File.swift
//  
//
//  Created by Bastian Inuk Christensen on 02/11/2019.
//

import CSDL2

public class Window  {
    let title: String
    let x: Int32
    let y: Int32
    let width: Int32
    let height: Int32
    
    public init(title: String, x: Int32 = Int32(SDL_WINDOWPOS_CENTERED_MASK), y: Int32 = Int32(SDL_WINDOWPOS_CENTERED_MASK), height: Int32, width : Int32, options: WindowOptions = [ .fullscreen, .hidpi]) {
        self.title = title
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.window = SDL_CreateWindow(title, self.x, self.y, width, height, options.rawValue)
    }
    
    deinit {
        SDL_DestroyWindow(window)
    }
    
    private var window: OpaquePointer?
    
    public struct WindowOptions: OptionSet {
        public let rawValue: UInt32
        
        public init(rawValue: UInt32){
            self.rawValue = rawValue
        }
        
        #warning("Don't use this just yet, it will force you to shut down the machine")
        public static let fullscreen = WindowOptions(rawValue: SDL_WINDOW_FULLSCREEN.rawValue)
        public static let hidpi = WindowOptions(rawValue: SDL_WINDOW_ALLOW_HIGHDPI.rawValue)
        @available(*, unavailable)
        public static let openGL = WindowOptions(rawValue: SDL_WINDOW_OPENGL.rawValue)
        @available(*, unavailable)
        public static let vulcan = WindowOptions(rawValue: SDL_WINDOW_VULKAN.rawValue)
        
    }
}
