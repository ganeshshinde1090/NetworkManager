import XCTest
@testable import NetworkManager

final class NetworkManagerTests: XCTestCase {
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NetworkManager().isConnected, true)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
