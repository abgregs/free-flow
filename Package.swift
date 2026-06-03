// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "FreeFlow",
    platforms: [.macOS(.v14)],
    dependencies: [
        .package(url: "https://github.com/argmaxinc/WhisperKit", from: "0.9.0")
    ],
    targets: [
        .executableTarget(
            name: "FreeFlow",
            dependencies: [
                .product(name: "WhisperKit", package: "WhisperKit")
            ],
            path: "Sources/FreeFlow",
            exclude: ["Resources/Info.plist", "Resources/FreeFlow.entitlements"]
        ),
        .testTarget(
            name: "FreeFlowTests",
            dependencies: ["FreeFlow"],
            path: "Tests/FreeFlowTests"
        )
    ]
)
