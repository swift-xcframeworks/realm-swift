// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.43.0/Realm.spm.zip"
let realmChecksum = "46283f8581a04686594576fb52a1a95c6aeabda3bfee8beeb64ecda3de6508bd"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.43.0/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "8c05bcb93d069aa06d8c99012c9cb1a785cfc95e4da6ff95e7241c38fc706989"

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
