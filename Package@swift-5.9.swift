// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.43.1/Realm.spm.zip"
let realmChecksum = "8a4c2afd6ece39d088beaf5dead041c91e1d0778e89a330279625a281412ef7d"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.43.1/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "3bfeb55fa6603e4ff6bddc764e32abf6bcf87a885abc1ef44785a4f45fbddc22"

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
