import GlueLayer

public class GreetingService {

    let name: String

    public init(name: String) {
        self.name = name
    }
}

extension GreetingService: Greeter {

    public func sayHello() -> String {
        "Hello, \(name)!"
    }
}
