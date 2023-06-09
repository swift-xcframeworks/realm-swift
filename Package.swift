// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.40.1/Realm.xcframework.zip"
let realmChecksum = "a06255377b82859e3b789918de455cd4ca3f0a465161cc7af2cbb4de1fe644c2"

let realmSwiftURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.40.1/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "602ac179fff7cdb9a65fe4878965b2ecbfadbe86e63976cc607ed6c1478c6d0b"

let package = Package(
    name: "realm-swift",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8),
    ],
    products: [
        .library(name: "Realm", targets: ["Realm"]),
        .library(name: "RealmSwift", targets: ["RealmSwift"])
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "Realm",
                      url: realmURL,
                      checksum: realmChecksum),

        .binaryTarget(name: "RealmSwift",
                      url: realmSwiftURL,
                      checksum: realmSwiftChecksum)
    ]
)
