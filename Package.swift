// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GamesKit",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "GamesKit",
            targets: ["GamesKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    //.package(url: "https://github.com/PureSwift/SDL", from: "1.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(
        name: "CSDL2",
        pkgConfig: "sdl2",
        providers: [
            .brew(["sdl2"]),
            .apt(["libsdl2-dev"])
        ]),
        .target(
            name: "GamesKit",
            dependencies: ["CSDL2"]),
        .testTarget(
            name: "GamesKitTests",
            dependencies: ["GamesKit"]),
    ]
)
