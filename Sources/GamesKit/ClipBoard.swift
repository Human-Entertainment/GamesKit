import CSDL2

private struct ClipBoard {
    static var value: String? { return getClipBoard()}
    
    static private func getClipBoard()  -> String {
        let pointer = SDL_GetClipboardText()!
        let safeClipBoard = String(cString: pointer)
        return safeClipBoard
    }
}
