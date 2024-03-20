@testable import SwiftPackage
import XCTest

class Tests: XCTestCase {

    func testBehavior() {
        XCTAssertEqual(
            demo(greeter: DummyGreeter()),
            "Demo hello"
        )
    }
}

import GlueLayer

class DummyGreeter: NSObject, Greeter {

    func sayHello() -> String {
        "Demo hello"
    }
}
