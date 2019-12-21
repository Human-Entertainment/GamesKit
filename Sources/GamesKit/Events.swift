import CSDL2

struct Event {
    let event: [KeyBoardEvent]
    let action: () -> ()
    
    init(event: KeyBoardEvent..., closure: () -> ()){
        self.event = event
        self.action = closure
    }
    
    func act() -> () -> () {
        return action
    }
}

struct KeyBoardEvent: OptionSet {
    let rawValue: KeyBoardEvent.RawValue
}
