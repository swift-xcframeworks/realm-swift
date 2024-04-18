// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.49.2/Realm.spm.zip"
let realmChecksum = "4dad2699e04d1b2d6229d81e556cb87b82ded5e816fe1ba22259798ad5d4a9fb"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.49.2/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "90e597bad05d6d2ff8f9a49de28a0b5c84e37e9a5ea7e81e832f3ed221128b1f"

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
