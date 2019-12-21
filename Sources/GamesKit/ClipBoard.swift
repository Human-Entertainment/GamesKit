import CSDL2

private struct ClipBoard {
    static var value: String? { return try? getClipBoard()}
    
    private func getClipBoard() throws -> String {
        let pointer = SDL_GetClipboardText()!
        let safeClipBoard = String(cString: pointer)
        return safeClipBoard
    }
}
