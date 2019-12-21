import CSDL2

struct Event {
    let event: [KeyBoardEvent]
    let action: () -> ()
    
    init(event: KeyBoardEvent..., closure: @escaping () -> ()){
        self.event = event
        self.action = closure
    }
    
    func act() -> () -> () {
        return action
    }
}

struct KeyBoardEvent: OptionSet {
    let rawValue: UInt32
    
    static let KeyDown = KeyBoardEvent(rawValue: SDL_KEYDOWN.rawValue)
}
