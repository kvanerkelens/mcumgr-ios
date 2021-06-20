// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "McuManager",
    platforms: [.iOS(.v9), .macOS(.v10_13)],
    products: [
        .library(
            name: "McuManager",
            targets: ["McuManager"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/unrelentingtech/SwiftCBOR.git", 
            from: "0.4.3"
        ),
    ],
    targets: [
        .target(
            name: "McuManager",
            dependencies: ["SwiftCBOR"],
            path: "Source",
            exclude:["Info.plist"]
        )
    ]
)
