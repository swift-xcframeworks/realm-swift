// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.41.1/Realm.xcframework.zip"
let realmChecksum = "08e151a05f16cd95c041d063611fcad99041f4fdf97ac7bb7f7a2801f31a062f"

let realmSwiftURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.41.1/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "6a55e45c25334a9cbd87e7f8743e5aea93c9a09edb33d226bf08206c7ac9631f"

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
