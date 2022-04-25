// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "MMDB",
    products: [
        .library(name: "MMDB",type: .dynamic, targets: ["MMDB"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "MMDB", dependencies: ["libmaxminddb"],publicHeadersPath: ".",path:"Sources"),
        .testTarget(name: "MMDBTests", dependencies: ["MMDB"],exclude: ["Info-OSX.plist","Info-iOS.plist"]),
        .target(name: "libmaxminddb", publicHeadersPath: "."),
    ]
)
