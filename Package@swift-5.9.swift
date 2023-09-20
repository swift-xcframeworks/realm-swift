// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.42.3/Realm.spm.zip"
let realmChecksum = "814d0d58baf6d890fe916db317d58f6be634a0e340ff06f0e4d834e327cbad74"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.42.3/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "dceee0c30d6111715f5d97313aedcbb5fb072aca50fefecf1341d826b8f06002"

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
