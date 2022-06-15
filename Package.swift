// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EfaClientIOS",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "EfaClientIOS",
            targets: ["EfaClientIOS"]
        )
    ],
    targets: [
        .target(
            name: "EfaClientIOS",
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
