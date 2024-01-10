// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.45.3/Realm.spm.zip"
let realmChecksum = "db7ed7e71a7d2b17ebb504cf05de1e31b5d7c9a4eee9e908fc88080564f56c25"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.45.3/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "189175baee236bd91badbacaf62f8282567fb419ab2a233f7db855034e6b12e9"

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
