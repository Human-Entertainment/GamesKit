import XCTest
@testable import GamesKit

final class GamesKitTests: XCTestCase {
    func testSpawnWindow() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(GamesKit.text, "Hello, World!")
        let myWindow: Window = Window(title: "Test", height: 400, width: 600, options: [.fullscreen, .hidpi])
        XCTAssertEqual(myWindow.title, "Test")
    }

    static var allTests = [
        ("spawn window", testSpawnWindow),
    ]
}
