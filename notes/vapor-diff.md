## Missing/changed API...

```Swift
CryptoCipher.init(config:)
CryptoCipher.init(method:defaultKey:defaultIV:)
CryptoCipher.method
CryptoHasher.Error
CryptoHasher.defaultKey
CryptoHasher.init(config:)
CryptoHasher.init(method:defaultKey:)
CryptoHasher.make(_:key:)
CryptoHasher.method
Droplet.add(path:value:)
Droplet.arguments
Droplet.client
Droplet.config
Droplet.database
Droplet.init(arguments:workDir:environment:config:localization:log:)
Droplet.resourcesDir
Droplet.run(servers:)
HashEncoding
HashProtocol.defaultKey
HashProtocol.make(_:encoding:)
HashProtocol.make(_:key:)
HashProtocol.make(_:key:encoding:)
Node.init(formURLEncoded:)
Request.multipart
Serve.init(console:prepare:serve:)
Serve.prepare
Serve.serve
```

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

## New API...

```Swift
BCryptHasher
BCryptHasher.check(_:matchesHash:)
BCryptHasher.cost
BCryptHasher.init(config:)
BCryptHasher.init(cost:)
BCryptHasher.make(_:)
CacheSessions.init(config:)
ClientFactory
ClientFactory.init()
ClientFactory.init(config:)
ClientFactory.makeClient(hostname:port:_:)
ClientFactory.respond(to:)
ClientFactoryProtocol
ClientFactoryProtocol.makeClient(hostname:port:_:)
ClientProtocol
ClientProtocol.defaultTLSContext
ClientProtocol.init(hostname:port:_:)
Config.customAddConfigurable(closure:unique:name:)
Config.customOverride(instance:unique:)
Config.customResolve(unique:file:keyPath:as:default:)
Config.customResolveArray(unique:file:keyPath:as:default:)
Config.localizationDir
Config.override(commands:)
Config.override(console:)
Config.override(middleware:)
Config.override(server:)
Config.override(view:)
Config.providers
Config.publicDir
Config.resolveCache()
Config.resolveCipher()
Config.resolveClient()
Config.resolveCommands()
Config.resolveConsole()
Config.resolveHash()
Config.resolveLog()
Config.resolveMail()
Config.resolveMiddleware()
Config.resolveServer()
Config.resolveSessions()
Config.resolveView()
Config.resourcesDir
Config.viewsDir
Config.workDir
ConsoleLogger.init(_:)
ConsoleLogger.init(config:)
CryptoCipher.init(config:)
CryptoCipher.init(method:defaultKey:defaultIV:)
CryptoCipher.method
CryptoHasher.Encoding
CryptoHasher.Method
CryptoHasher.check(_:matchesHash:)
CryptoHasher.encoding
CryptoHasher.init(_:)
CryptoHasher.init(config:)
CryptoHasher.init(hash:encoding:)
CryptoHasher.init(hmac:encoding:key:)
CryptoHasher.init(method:encoding:)
CryptoHasher.make(_:)
CryptoHasher.method
DateMiddleware.init(config:)
Droplet.client
Droplet.config
Droplet.init()
Droplet.init(_:)
Droplet.init(config:)
Droplet.init(config:localization:)
Droplet.mail
Droplet.register(host:method:path:responder:)
Droplet.run()
DumpConfig
DumpConfig.config
DumpConfig.console
DumpConfig.help
DumpConfig.id
DumpConfig.init(_:_:)
DumpConfig.run(arguments:)
DumpConfig.signature
EngineClient
EngineClient.client
EngineClient.factory
EngineClient.init(hostname:port:_:)
EngineClient.respond(to:)
EngineServer
EngineServer.init(hostname:port:_:)
EngineServer.server
EngineServer.start(_:errors:)
ErrorMiddleware
ErrorMiddleware.init(_:_:)
ErrorMiddleware.init(config:)
ErrorMiddleware.make(with:for:)
ErrorMiddleware.respond(to:chainingTo:)
FormData.bytes
FormData.makeNode(in:)
HMAC.init(_:)
HTTP.multipart
Hash.init(_:)
HashProtocol.check(_:matchesHash:)
HashProtocol.check(_:matchesHash:)
HashProtocol.make(_:)
HashProtocol.make(_:)
Int.init(_:)
LogProtocol.error(_:)
MailProtocol
MemoryCache.init(config:)
MemorySessions.init(config:)
Message.mediaTypes
Node.init(formURLEncoded:allowEmptyValues:)
Provider.beforeRun(_:)
Provider.boot(_:)
Provider.boot(_:)
Provider.publicDir
Provider.publicDir
Provider.repositoryName
Provider.viewsDir
Provider.viewsDir
ProviderInstall
ProviderInstall.console
ProviderInstall.help
ProviderInstall.id
ProviderInstall.init(_:_:publicDir:viewsDir:)
ProviderInstall.providers
ProviderInstall.publicDir
ProviderInstall.run(arguments:)
ProviderInstall.viewsDir
Responder.delete(_:query:_:_:through:)
Responder.get(_:query:_:_:through:)
Responder.patch(_:query:_:_:through:)
Responder.post(_:query:_:_:through:)
Responder.put(_:query:_:_:through:)
Responder.request(_:_:query:_:_:through:)
Responder.respond(to:through:)
RouteCollection
RouteCollection.build(_:)
RouteList
RouteList.console
RouteList.help
RouteList.id
RouteList.init(_:_:)
RouteList.router
RouteList.run(arguments:)
SMTPMailer
SMTPMailer.init(scheme:hostname:port:credentials:)
SMTPMailer.makeGmail(with:)
SMTPMailer.makeMailgun(with:)
SMTPMailer.makeSendGrid(with:)
SMTPMailer.send(_:)
SMTPMailer.send(batch:)
SecurityLayer
Serve.config
Serve.init(_:_:_:_:_:)
Serve.log
Serve.responder
Serve.server
ServerConfig
ServerConfig.hostname
ServerConfig.init(hostname:port:_:)
ServerConfig.port
ServerConfig.securityLayer
ServerFactory
ServerFactory.init()
ServerFactory.init(config:)
ServerFactory.makeServer(hostname:port:_:)
ServerFactoryProtocol
ServerFactoryProtocol.makeServer(hostname:port:_:)
ServerProtocol
ServerProtocol.defaultTLSContext
ServerProtocol.init(hostname:port:_:)
ServerProtocol.start(_:errors:)
SessionsMiddleware.init(config:)
StaticViewRenderer
StaticViewRenderer.cache
StaticViewRenderer.init(config:)
StaticViewRenderer.init(viewsDir:)
StaticViewRenderer.shouldCache
StaticViewRenderer.viewsDir
StringInitializable
StringInitializable.init(_:)
Terminal.init(config:)
TypeSafeRoutingError.reason
UnimplementedMailer.init(config:)
VersionCommand.init(_:)
ViewContext
ViewContext.shared
ViewRenderer.make(_:_:from:)
ViewRenderer.shouldCache
```
