// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.42.1/Realm.spm.zip"
let realmChecksum = "5a166d03debda99f4378959a3cf39fc31c1e250a7aa7e9ec90b43450b99f5801"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.42.1/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "65edd34a49cc766a715c5244e80262e82c7e2a0660fd275a9df98def29c12343"

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
