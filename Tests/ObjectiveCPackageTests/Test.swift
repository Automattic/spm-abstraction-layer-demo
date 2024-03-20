@testable import ObjectiveCPackage
import XCTest

class Tests: XCTestCase {

    func testBehavior() {
        let sut = ObjectiveDemo()
        XCTAssertEqual(
            sut.demo(with: DummyGreeter()),
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
