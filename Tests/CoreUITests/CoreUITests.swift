import XCTest
@testable import CoreUI

final class CoreUITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CoreUI().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
