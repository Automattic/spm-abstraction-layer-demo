@testable import FakeApp
import XCTest

class Tests: XCTestCase {

    func testBehavior() {
        XCTAssertEqual(
            swiftDemo(name: "Foo"),
            "Hello, Foo!"
        )
        XCTAssertEqual(
            objcDemo(name: "Bar"),
            "Hello, Bar!"
        )
    }
}
