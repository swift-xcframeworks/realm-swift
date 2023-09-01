// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.42.1/Realm.spm.zip"
let realmChecksum = "5a166d03debda99f4378959a3cf39fc31c1e250a7aa7e9ec90b43450b99f5801"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.42.1/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "92b147025f6a29a335a553ae61c966063d9dee293c1dd4be490325c2b041c3a3"

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
