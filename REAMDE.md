# Vapor 1 -> 2 Migrator

This package can help you migrate your Vapor 1.x project to Vapor 2.0. It includes method stubs with deprecation warnings for Vapor 1 API that has changed or been removed.

### Usage

To use this package, include it in your `Package.swift` file.

```swift
import PackageDescription

let package = Package(
    name: "Project",
    dependencies: [
        ...
        .Package(url: "https://github.com/vapor/migrator.git", majorVersion: 1)
    ],
    exclude: [ ... ]
)
```

Update your project with `vapor update`, then import the package.

```swift
import Migrator
```

Check out [Vapor 2.0.0 release notes](https://github.com/vapor/vapor/releases/tag/2.0.0) for more information.
