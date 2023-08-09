// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.42.0/Realm.xcframework.zip"
let realmChecksum = "7f9a35c79761daa3384c3d8bdc830092c086efc61922befda8fe24c6e78c3d1c"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.42.0/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "c115d1ee1a375d4904f48d4e0884bccc3148c53e159a34c9a4a44499d1d44475"

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
