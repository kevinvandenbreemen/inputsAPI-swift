public protocol OutputProviderStrategy {

    func printLine(_ line : String)
    
}

public class OutputProviderImpl: OutputProviderStrategy {

    public func printLine(_ line : String) {
        print(line)
    }

}