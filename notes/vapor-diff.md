## Removed

#### Validation

Validation has been revisited and put into an independent package add `//fixme` to your `Package.swift`.

#### Polymorphic

Polymorphic was a generally invisible layer that is no longer necessary. 

#### Providable

Providable was a model that existed to encapsulate providers. Conform to `Provider` protocol instead.

#### Config Initializable

This protocol has been removed as provider pattern has been restructured.

#### TypeSafe Error Middleware

The error handling in Vapor has been largely moved to our new `Debugging` package. The middleware here is no longer necessary.

## Changed

#### Middleware

Middleware setup has moved to the configuration object, please see the documentation for how to update.

In Code middleware behavior can be replicated with the following

```Swift
var middleware: [Middleware] = []
middleware.append(foo)
middleware.append(bar)
config.override(middleware: middleware)
```

#### Make Node

Original

`makeNode(context: Context) throws -> Node`

Renamed To

 `func makeNode(in context: Context?) throws -> Node`

This function has been ren

#### Add Configurable

The configuration pattern for Vapor has been changed so that it preceeds droplet initialization. Consult the new Config documentation to transition.

#### Config

All items that originally took `Settings.Config` should now take a slightly expanded object under `Configs.config`.

#### Abort Error

The `AbortError` protocol has been streamlined, and now only has three required properties:

```Swift
var status: Status { get }
var reason: String { get }
var metadata: Node? { get }
```

#### Abort

Abort is no longer an enumeration and thus can not be used w/ `switch` statements. The `Abort` struct can be used independently to provide complex and useful errors during the debugging process.

#### ErrorMiddleware

All error middleware has been bundled into a comprehensive `ErrorMiddleware`. This replaces:

- AbortMiddleware
- ValidationErrorMiddleware

#### Empty Initializable

This is now nested in the `Core` package, add `import Core` where required

#### Model

The `Model` protocol has moved to the `FluentProvider` add `import FluentProvider` to your files.

#### Environment

`Environment` is declared in the `Configs` module. Add `import Configs` to your project.

#### Content

`Content` is now simplified and no longer requires the use of a `Polymorphic` protocol. It instead takes `StructuredDataWrapper` types. This is a largely internally used object and shouldn't affect most projects.

#### Add Provider

The function `addProvider(` has moved to the `Config` object and now preceeds droplet `initialization`.

#### Drop.database

Drop.database is now declared in `FluentProvider` ensure you have `import FluentProvider` and that the package has been added to your `Package.swift`

#### Prepare

Prepare command and associated functionality such as `Drop.preparations` are now declared in `FluentProvider`. Ensure that `import FluentProvider` has been added to your file.

#### Multipart

Multipart has been deprecated since v1.2 in preference of `request.formData`.

#### MediaType

Media Type has been removed from the Vapor framework. It provided no value over a simple dictionary structure and was showing signs of negative performance.

#### Provider

Some of the provider values have changed to use the config object as opposed to the Droplet. This allows a more predictable resolution system. Look at the new Provider documentation for more information.

#### LeafRenderer

LeafRenderer has been moved to the `LeafProvider` library. Add `import LeafProvider` to relevant files.

#### Drop.Client

Drop.client has changed to a factory based type, if you're not using custom behavior here, there should be no changes necessary.
