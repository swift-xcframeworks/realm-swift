// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.54.1/Realm.spm.zip"
let realmChecksum = "5be6d10b5829dd7f20bd4e4cf8dab29f3985ca815de3105c9e1866aa82eda431"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.54.1/RealmSwift@14.3.1.spm.zip"
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
