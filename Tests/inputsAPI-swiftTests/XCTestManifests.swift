import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(inputsAPI_swiftTests.allTests),
    ]
}
#endif
