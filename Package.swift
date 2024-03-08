// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.48.0/Realm.spm.zip"
let realmChecksum = "bb63b20a9d0b6651777c16549006a11af6b7556db6e2991ed57eadda62974979"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.48.0/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "cf528fc47c1d8591bbd8fe58e5ab803b7a27e1f2592372dcbbb48170558ab3bc"

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
