//import GlueLayer // Where `Greeter` is defined (unused in this example)
import SwiftCore // Where `GreetingService: Greeter` is defined
import SwiftPackage
import ObjectiveCPackage

func swiftDemo(name: String) -> String {
    return SwiftPackage.demo(greeter: GreetingService(name: name))
}

func objcDemo(name: String) -> String {
    return ObjectiveDemo().demo(with: GreetingService(name: name))
}
