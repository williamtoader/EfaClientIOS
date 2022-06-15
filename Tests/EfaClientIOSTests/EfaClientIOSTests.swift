import XCTest
@testable import EfaClientIOS
import SwiftGraphQL

final class EfaClientIOSTests: XCTestCase {
    func testExample() throws {
        var api = EfaClientIOS()
        api.runquery() {
            result in print(result)
        }
        print("Hello")
    }
}
