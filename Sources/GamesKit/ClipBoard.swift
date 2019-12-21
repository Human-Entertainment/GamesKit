import CSDL2

public struct ClipBoard {
    public static var value: String {
        get {
            return getClipBoard()
        }
        
        set {
            setClipBoard(body: newValue)
        }
        
    }
    
    static private func getClipBoard()  -> String {
        let pointer = SDL_GetClipboardText()!
        let safeClipBoard = String(cString: pointer)
        return safeClipBoard
    }
    
    private static func setClipBoard(body: String) -> Void {
        SDL_SetClipboardText(body.cString(using: .utf8))
    }
}
