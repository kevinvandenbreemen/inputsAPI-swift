public protocol OutputsAPI{

    func printLine(_ line : String)
    
}

public class OutputsAPIImpl: OutputsAPI {

    public init() {}

    public func printLine(_ line : String) {
        print(line)
    }

}