import Promise

public protocol InputsAPI {

    func getInput(_ message: String) -> Promise<String>

    func selectOption(_ message: String, choices: [String]) -> Promise<Int>

}

public class InputsAPIImpl: InputsAPI {

    public init() {}

    public func getInput(_ message: String) -> Promise<String> {
        return Promise<String>(work: {[weak self] fulfill, reject in 
            if let strongSelf = self {
                fulfill( strongSelf.doInput(message) )
            }
        })
    }

    public func selectOption(_ message: String, choices: [String]) -> Promise<Int> {
        return Promise<Int>(work: {[weak self] fulfill, reject in 
            if let strongSelf = self {
                fulfill(strongSelf.doOptionSelect(message, choices: choices))
            }
        })
    }

    func doInput(_ message: String) -> String {
        print(message)
        guard let result = readLine() else {
            return doInput(message)
        }
        
        return result
    }

    func doOptionSelect(_ message: String, choices: [String]) -> Int {

        var selections = ""
        for (i, choice) in choices.enumerated() {
            selections = "\(selections)\n\(i + 1) >  \(choice)"
        }

        let messagePrompt = 
        """
        \(message)
        \(selections)
        """

        let answerString = doInput(messagePrompt)
        let answerInt = (Int(answerString) ?? 0) - 1
        if answerInt < 0 || answerInt > choices.count {
            return doOptionSelect(message, choices: choices)
        }

        return answerInt
        
    }

}