// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.43.0/Realm.spm.zip"
let realmChecksum = "46283f8581a04686594576fb52a1a95c6aeabda3bfee8beeb64ecda3de6508bd"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.43.0/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "30cac45018f2bfdcaa87e8f6df9a4735591146f0780da1534092864ab9be6a26"

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
