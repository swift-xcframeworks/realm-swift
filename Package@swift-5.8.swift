// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.42.3/Realm.spm.zip"
let realmChecksum = "814d0d58baf6d890fe916db317d58f6be634a0e340ff06f0e4d834e327cbad74"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.42.3/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "7e55713548737eb04daad7fb98431de287b3039bd0c858f08bed6159021fc2ff"

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
