# Vapor 1 -> 2 Migrator

This package can help you migrate your Vapor 1.x project to Vapor 2.0. It includes method stubs with deprecation warnings for Vapor 1 API that has changed or been removed.

### 1. Add Migrator to your `Package.swift`

Add `.Package(url: "https://github.com/vapor/migrator.git", majorVersion: 1)` to your `Package.swift` dependencies. Your file should look something like this ...

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

### 2. Update Dependencies

Update your project with `vapor update`

> Make sure to follow the prompts to regenerate your Xcode project, if you don't regenerate, it will _not_ work.

### 3. Import Migrator

Migrator should only be included temporarily, so pick _any_ file in your project, and add this import to the top.

```swift
@_exported import Migrator
```

### 4. Build Your Project

Build your project with `cmd + b` or `cmd + r` if you're using an executable. This may fail, but will help Xcode with autocomplete.

### 5. Update Your Project

You should see a lot of deprecations, go through and use them to help you when you're updating your project.

### 6. Remove Migrator

Once you've used migrator to help you update your project, you should **remove migrator** from your `Package.swift` file, remove the `@_exported import Migrator` and run `vapor update` again. **DO NOT USE MIGRATOR IN PRODUCTION PROJECTS**

### 7. Enjoy Vapor 2

Enjoy Vapor 2, it's leaner, faster, and streamlined in just about every way, check out more of the full release notes.

[Vapor 2.0.0 release notes](https://github.com/vapor/vapor/releases/tag/2.0.0) for more information.
