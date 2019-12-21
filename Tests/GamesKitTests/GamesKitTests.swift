import XCTest
@testable import GamesKit

final class GamesKitTests: XCTestCase {
    
    func testSpawnWindow() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(GamesKit.text, "Hello, World!")
        let myWindow: Window = Window(title: "Test", height: 1080, width: 1920, options: [.hidpi])
        XCTAssertEqual(myWindow.title, "Test")
    }
    
    func testQuitWindow() {
        let title = "Test Window"
        var testGame = GamesTest(state: .running, willShut: true, window: .init(title: title, height: 1080, width: 1920, options: .hidpi))
        let firstCount = testGame.count
        testGame.run()
        let otherCount = testGame.count
        XCTAssertFalse(firstCount == otherCount, "The game ran proper")
        XCTAssertEqual(testGame.state, .down)
    }
    
    func testClipBoard(){
        let string = "TestClip"
        ClipBoard.setClipBoard(body: string)
        let clipboardValue = ClipBoard.value
        XCTAssertEqual(string, clipboardValue)
    }

    static var allTests = [
        ("Spawn window", testSpawnWindow),
        ("Quit Game", testQuitWindow),
        //("Test clipboard implementation", testClipBoard),
    ]

    struct GamesTest: GameLoop {
        var state: GameState

        var willShut: Bool

        var window: Window

        func shutdown() {
            print(count)
        }
        
        // This is to see if the game is actually running
        var count = 0
        
        mutating func game() {
            if willShut == true {
                if count == 10 {
                self.state = .down
                } else {
                    print(count)
                    count += 1;
                }
            }
        }

        func pause() {
            
        }
    }
}
