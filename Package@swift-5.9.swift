// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmURL = "https://github.com/realm/realm-swift/releases/download/v10.45.0/Realm.spm.zip"
let realmChecksum = "5215a659194877250a3ace4037ff228e217a77cd56af566bcc5f55730654a896"

let realmSwiftURL = "https://github.com/realm/realm-swift/releases/download/v10.45.0/RealmSwift@15.0.spm.zip"
let realmSwiftChecksum = "3d88695aae788fe2b08eadf25231561e0a81bc3dbd9a84d732ca6428f215d9e8"

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
