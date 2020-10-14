// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "RxArray",
    platforms: [.iOS(.v12), .macOS(.v10_15)],
    products: [
        .library(name: "RxArray", type: .dynamic, targets: ["RxArray"]),
    ],
    dependencies: [
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "RxArray",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
            ],
            path: "ObservableArray"
        ),
        .testTarget(name: "RxArrayTests", dependencies: ["RxArray"], path: "ObservableArrayTests")
    ]
)
