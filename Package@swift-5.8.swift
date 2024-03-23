// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.49.0/Realm.spm.zip"
let realmChecksum = "941edfa50340cf7f20a72d0c523f30a7854c82c9bfb4075a7535a70ef29dcd5d"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.49.0/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "3c4ed66873898550c019720472d2a1523e0e9c9a2ee47dcb43e239ba08d8dd95"

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
