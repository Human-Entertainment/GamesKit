import XCTest
@testable import GamesKit

final class GamesKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GamesKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
