// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EfaClientIOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "EfaClientIOS",
            targets: ["EfaClientIOS"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/maticzav/swift-graphql", branch: "main")
    ],
    targets: [
        .target(
            name: "EfaClientIOS",
            dependencies: [
                .product(name: "SwiftGraphQL", package: "swift-graphql")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "EfaClientIOSTests",
            dependencies: ["EfaClientIOS"],
            path: "Tests",
            exclude: ["CheckCocoaPodsQualityIndexes.rb"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
