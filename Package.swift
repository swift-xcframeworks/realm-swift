// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.45.2/Realm.spm.zip"
let realmChecksum = "2d7cdd5bb09375e1acd0b9e332f28515667aaa7b78f1b70c945a296f2c10cb5f"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.45.2/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "72d0f8557c85ea7de638d96c7b469b606f757c6529ee0280b91de969635c2bf9"

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
