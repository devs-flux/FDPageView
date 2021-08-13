// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FDPageView",
    products: [
        .library(
            name: "FDPageView",
            targets: ["FDPageView"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FDPageView",
            dependencies: []),
        .testTarget(
            name: "FDPageViewTests",
            dependencies: ["FDPageView"]),
    ]
)
