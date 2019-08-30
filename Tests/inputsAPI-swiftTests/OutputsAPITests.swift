import XCTest
@testable import OutputsAPI

final class OutputsAPITests: XCTestCase {
    func testExamplePrintString() {
        let outputsAPI: OutputsAPI = OutputsAPIImpl()
        outputsAPI.printLine("Hello, this is a test")
    }

    static var allTests = [
        ("testtestExamplePrintString", testExamplePrintString),
    ]
}
