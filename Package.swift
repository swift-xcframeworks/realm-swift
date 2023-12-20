// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.45.1/Realm.spm.zip"
let realmChecksum = "c0a40950494d4950f4489f6bffd624b037174626f138c0eda4a6746fbc6a27c7"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.45.1/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "5d0b9926e67ca8fa0a32fb9827176dd885dc2240b827dcad820b616b542ac9dc"

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
