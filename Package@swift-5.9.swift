// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.45.1/Realm.spm.zip"
let realmChecksum = "c0a40950494d4950f4489f6bffd624b037174626f138c0eda4a6746fbc6a27c7"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.45.1/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "09ba93720192134684d83116f9c93724aaa4c2819ae60c3097109e3ceea032ae"

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
