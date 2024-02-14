// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.47.0/Realm.spm.zip"
let realmChecksum = "299022a7db5c1870d4689ea6aa1dfc3213c0bc61b06eabfc610744449ccd38f1"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.47.0/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "eb2e0a2718e09e40bfc81ca8171d62ab8f3954f3af89133a3a2c362829a09681"

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
