// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.49.1/Realm.spm.zip"
let realmChecksum = "2b7854a2f9372a7d89495cf854c18a9d60b15ed1057afafecd24b6f4281634df"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.49.1/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "02bc1d7db0b56ea2d1ed4b0b42d0f0b701eef63f2a05ae744a57ee7d4662177e"

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
