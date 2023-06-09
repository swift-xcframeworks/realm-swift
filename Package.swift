// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.40.1/Realm.xcframework.zip"
let realmChecksum = "0c001ef1d4c2f64d0ea8c68af73f3b83f9b77c79291f7649a98ea82b264145b4"

let realmSwiftURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.40.1/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "23b84fd0ff0687c10cf0c09d513a0e718c79c1a86d5c5a038c11e236c755577b"

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
