// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.42.4/Realm.spm.zip"
let realmChecksum = "bba1b1776b489eeedf0331a79affcf506e2134b33ed946098ecfae11942e1dd7"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.42.4/RealmSwift@14.3.1.spm.zip"
let realmSwiftChecksum = "f9b591935828ef30252631dd18a98dafb56490f188e92fe721d9800836f0e310"

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
