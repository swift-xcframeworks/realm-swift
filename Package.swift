// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.42.0/Realm.xcframework.zip"
let realmChecksum = "6998f155e2452729772a3874b100eafef5f94fedfdf4c35293575312d10272a9"

let realmSwiftURL = "https://github.com/swift-xcframeworks/realm-swift/releases/download/v10.42.0/RealmSwift.xcframework.zip"
let realmSwiftChecksum = "36f03a59b222bba7804cf7e13537c37ead279140182073ba7a440a425ab0ce29"

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
