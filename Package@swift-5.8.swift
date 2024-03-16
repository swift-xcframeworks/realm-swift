// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.48.1/Realm.spm.zip"
let realmChecksum = "9df06aa37e11a366d58b819d12e02ab25e456944c6eb67609538f3175fe57d8c"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.48.1/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "93c7eb881917d9bbb545615cdf7dd0075e8194eb606b45dcf7d3b0a67704e492"

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
