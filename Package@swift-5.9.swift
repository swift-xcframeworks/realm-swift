// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.44.0/Realm.spm.zip"
let realmChecksum = "b26c979ce122acaabb6a6eef9567de43344377afa825c597ae6e14caf508c225"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.44.0/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "c548dd125df800b5888129f93119360cd3bb3b74ebd740bc21a170f411debee1"

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
