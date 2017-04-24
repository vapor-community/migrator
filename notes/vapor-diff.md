## Missing/changed API...

```Swift
AbortMiddleware
AbortMiddleware.errorResponse(_:_:)
AbortMiddleware.errorResponse(_:_:_:)
AbortMiddleware.init(environment:log:)
AbortMiddleware.respond(to:chainingTo:)
CommandLine.environment
ConsoleLogger.init(console:)
Content.append(_:)
Content.append(_:)
Content.append(_:)
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
Droplet.addProvider(_:)
Droplet.addProvider(_:)
Droplet.arguments
Droplet.availableMiddleware
Droplet.client
Droplet.config
Droplet.database
Droplet.enabledMiddleware
Droplet.environment
Droplet.init(arguments:workDir:environment:config:localization:log:)
Droplet.init(arguments:workDir:environment:config:localization:log:server:hash:cipher:console:view:client:database:cache:availableMiddleware:serverMiddleware:clientMiddleware:staticServerMiddleware:staticClientMiddleware:preparations:providers:initializedProviders:)
Droplet.preparations
Droplet.providers
Droplet.resourcesDir
Droplet.router
Droplet.run(servers:)
Droplet.server
Droplet.startServer(_:name:)
Droplet.startServers(_:)
Droplet.startedServers
Droplet.stopServer(name:)
Droplet.stopServers()
EmptyInitializable
EmptyInitializable.init()
Environment
Environment.init(id:)
FileMiddleware.init(workDir:)
FormData.array
FormData.object
HashEncoding
HashProtocol.defaultKey
HashProtocol.make(_:encoding:)
HashProtocol.make(_:key:)
HashProtocol.make(_:key:encoding:)
LeafRenderer
LeafRenderer.stem
MediaType
MediaType.fileExtension
MediaType.init(_:)
MediaType.mediaType
Model
Model.init(from:)
Model.makeJSON()
Model.makeResponse()
Multipart
Multipart.Error
Multipart.File
Multipart.File.data
Multipart.File.init(name:type:data:)
Multipart.File.name
Multipart.File.type
Multipart.array
Multipart.bool
Multipart.double
Multipart.file
Multipart.files
Multipart.float
Multipart.input
Multipart.inputArray
Multipart.inputs
Multipart.int
Multipart.isNull
Multipart.json
Multipart.object
Multipart.serialized(boundary:keyName:)
Multipart.string
Multipart.uint
MultipartSerializationError
Node.init(formURLEncoded:)
Prepare
Prepare.console
Prepare.database
Prepare.help
Prepare.id
Prepare.init(console:preparations:database:)
Prepare.preparations
Prepare.run(arguments:)
Prepare.signature
Provider.afterInit(_:)
Provider.beforeRun(_:)
Provider.boot(_:)
Provider.boot(_:)
Provider.name
Provider.provided
Provider.provided
Request.multipart
Serve.init(console:prepare:serve:)
Serve.prepare
Serve.serve
VersionCommand.init(console:)
View.init(bytes:)
View.makeBytes()
ViewRenderer.init(viewsDir:)
ViewRenderer.make(_:)
ViewRenderer.make(_:_:for:)
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
Config.addConfigurable(cache:name:)
Config.addConfigurable(cipher:name:)
Config.addConfigurable(client:name:)
Config.addConfigurable(client:name:)
Config.addConfigurable(command:name:)
Config.addConfigurable(console:name:)
Config.addConfigurable(hash:name:)
Config.addConfigurable(log:name:)
Config.addConfigurable(mail:name:)
Config.addConfigurable(middleware:name:)
Config.addConfigurable(server:name:)
Config.addConfigurable(server:name:)
Config.addConfigurable(sessions:name:)
Config.addConfigurable(view:name:)
Config.addProvider(_:)
Config.addProvider(_:)
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
Content.append(_:)
Content.append(_:)
Content.append(_:)
Content.get(_:)
Content.get(_:)
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
Droplet.router
Droplet.run()
Droplet.server
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
FileMiddleware.init(config:)
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
View.init(bytes:)
View.makeBytes()
ViewContext
ViewContext.shared
ViewRenderer.make(_:_:from:)
ViewRenderer.shouldCache
```
