// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MyApp",
    dependencies: [
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.0"),
        .package(name: "SwiftLog", url: "https://github.com/apple/swift-log.git", from: "1.4.0"),
    ],
    targets: [
        .target(
            name: "MyApp",
            dependencies: ["Alamofire", "Logging"]),
        .testTarget(
            name: "MyAppTests",
            dependencies: ["MyApp"]),
    ]
)
