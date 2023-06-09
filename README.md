# Binary Swift xcframework Package for [Realm Swift](https://github.com/realm/realm-swift)

This is a drop in replacement for the realm/realm-swift source repo that vends binary xcframeorks for direction consumption by the Swift Package Manager.

This repo does not reubild realm from sources, but directly repackages the xcframeworks from the realm/realm-swift releases. See the github workflow action in this repo for details on how the processing occurs.

To use, just replace your dependency url to this repo:

From:

```swift
 .package(url: "https://github.com/realm/realm-swift", from: "10.4.0")
```

To:

```swift
 .package(url: "https://github.com/swift-xcframeworks/realm-swift", from: "10.4.0")
```
