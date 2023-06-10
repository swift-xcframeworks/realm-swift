// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.40.2/Realm.xcframework.zip"
let realmChecksum = "8413a8c4b26bdf3941ce88ff5a46c27eebe077e2b37b878119af692fa7f04ec1"

let realmSwiftURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.40.2/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "2d2224f2c3a27e028ca9fe94681eccab415f8c3005aa59c81ab4feec1506fb5c"

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
