// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.41.0/Realm.xcframework.zip"
let realmChecksum = "6efdfdefb9830d39d045b9cdc9eea52c9056241a594ac5a076ea5eab12c54dcd"

let realmSwiftURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.41.0/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "d87ede3fd75f81aa352b2f1279ddfbd9b47acee62c8b8931ffa3e45363db23c6"

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
