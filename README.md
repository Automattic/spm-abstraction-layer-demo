Demo for a Swift package architecture where an Objective-C package which depends on a Swift package fails to be found when used as a dependency.
See https://github.com/apple/swift-package-manager/issues/5951

The solution is to introduce an abstraction layer to break the direct dependency chain.

```mermaid
flowchart TD
    A(App) --> B(Objective-C package)
    A --> C(Swift package)
    B --> D(Abstraction Layer)
    C --> D
    E(Implementaion Layer) --> |implements| D
    A --> E
    E --> |Injected by App|B
    E --> |Injected by App|C
```

Notice that the abstraction layer needs to be implemented in Objective-C.
If implemented in Swift, then we'd be back to the situation described in the [SPM issues](https://github.com/apple/swift-package-manager/issues/5951). For more details, see https://github.com/Automattic/spm-abstraction-layer-demo/pull/1
