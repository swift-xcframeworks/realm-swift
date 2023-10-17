// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.43.1/Realm.spm.zip"
let realmChecksum = "8a4c2afd6ece39d088beaf5dead041c91e1d0778e89a330279625a281412ef7d"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.43.1/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "28f9b3ed1a19223213fc3e18ff73a08ab7f89cc6214b919d140564f0e9240a51"

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
