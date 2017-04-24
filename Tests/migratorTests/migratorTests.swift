import XCTest
@testable import migrator

class migratorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(migrator().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
