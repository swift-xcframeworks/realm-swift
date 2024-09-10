// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v20.0.0/Realm.spm.zip"
let realmChecksum = "11428c01a60a81fb6a314d562de86cf724cd114330c36bcb4415ed276332f176"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v20.0.0/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = ""

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
