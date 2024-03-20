// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Demo",
    platforms: [.iOS(.v13)],
    products: [],
    dependencies: [
    ],
    targets: [
        .target(name: "GlueLayer"),
        .target(
            name: "SwiftCore",
            dependencies: [
                .target(name: "GlueLayer"),
            ]
        ),
        .target(
            name: "SwiftPackage",
            dependencies: [
                .target(name: "GlueLayer"),
            ]
        ),
        .testTarget(
            name: "SwiftPackageTests",
            dependencies: [
                .target(name: "SwiftPackage"),
                .target(name: "GlueLayer"),
            ]
        ),
        .target(
            name: "ObjectiveCPackage",
            dependencies: [
                .target(name: "GlueLayer"),
            ]
        ),
        .testTarget(
            name: "ObjectiveCPackageTests",
            dependencies: [
                .target(name: "ObjectiveCPackage"),
                .target(name: "GlueLayer"),
            ]
        ),
        .target(
            name: "FakeApp",
            dependencies: [
                .target(name: "GlueLayer"),
                .target(name: "SwiftCore"),
                .target(name: "SwiftPackage"),
                .target(name: "ObjectiveCPackage"),
            ]
        ),
        .testTarget(
            name: "FakeAppTests",
            dependencies: [
                .target(name: "FakeApp"),
            ]
        ),
    ]
)
