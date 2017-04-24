// swift-tools-version:3.1

import PackageDescription

let one = Version(1,0,0, prereleaseIdentifiers: ["beta"])
let two = Version(2,0,0, prereleaseIdentifiers: ["beta"])

let package = Package(
    name: "migrator",
    dependencies: [
        .Package(url: "https://github.com/vapor/fluent-provider.git", one),
        .Package(url: "https://github.com/vapor/leaf-provider.git", one)
    ]
)
