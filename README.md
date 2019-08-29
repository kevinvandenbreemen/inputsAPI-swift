# InputsAPI

A simple Swift package for abstracting away inputs and returning promises with user responses.  Allows you to focus on writing application logic without worrying
about details like UI popups, inputs, etc.

This is still a work in progress.

# Usage

## Command line Input

Be sure to import InputsAPI

```
let input: InputProviderStrategy = InputProviderImpl()  //  Currently default (and only) implementation is console input

let choices = ["Select A", "Select B", "Select C"]
input.selectOption("Pick One?", choices: choices).then{ selection in 
    print("Chose \(choices[selection])")
}
```

## Command line Output

Be sure to import OutputsAPI

```
        let outputsAPI: OutputsAPI = OutputsAPIImpl()
        outputsAPI.printLine("Hello, this is a test")
```