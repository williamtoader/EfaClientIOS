import XCTest
@testable import EfaClientIOS
import SwiftGraphQL

final class EfaClientIOSTests: XCTestCase {
    func testExample() throws {
        let expectation = expectation(description: "foobar")
        let api = EfaClientIOS()
        api.runquery() {
            result in do{print(result); expectation.fulfill()}
        }
        print("Hello")
        
        waitForExpectations(timeout: 10)
        
        
    }
}
