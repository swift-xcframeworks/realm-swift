// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.46.0/Realm.spm.zip"
let realmChecksum = "a2d8978b65757e862af326846b550c2e314f821fb7485573b72ac18c2d20006c"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.46.0/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "113ae5f03f7945027511c222e1de39a7ddab179f064d01695091952106119420"

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
