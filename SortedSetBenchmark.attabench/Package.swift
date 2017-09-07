// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Benchmark",
    products: [
        .executable(name: "Benchmark", targets: ["Benchmark"])
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/Benchmarking", .branch("master")),
        .package(url: "https://github.com/attaswift/BTree", .branch("5.x"))
    ],
    targets: [
        .target(name: "Benchmark", dependencies: ["Benchmarking", "BTree"], path: "Sources"),
    ],
    swiftLanguageVersions: [4]
)
