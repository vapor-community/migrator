import Vapor

extension Droplet {
    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addConfigurable(cipher: Any, name: Any) {
        unimplemented()
    }

    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addConfigurable(client: Any, name: Any) {
        unimplemented()
    }

    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addConfigurable(server: Any, name: Any) {
        unimplemented()
    }

    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addConfigurable(console: Any, name: Any) {
        unimplemented()
    }

    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addConfigurable(hash: Any, name: Any) {
        unimplemented()
    }

    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addConfigurable(log: Any, name: Any) {
        unimplemented()
    }

    public func addConfigurable(middleware: Any, name: Any) {
        unimplemented()
    }
}

extension Droplet {
    @available(*, deprecated: 1.0, renamed: "config.workDir")
    public var workDir: String {
        return config.workDir
    }
    
    @available(*, deprecated: 1.0, renamed: "config.viewsDir")
    public var viewsDir: String {
        return config.viewsDir
    }
}

extension Droplet {
    @available(*, deprecated: 1.0, message: "Configuration has been moved to preceed droplet initialization. Consult the new configuration docs.")
    public func addProvider(_: Any) {
        unimplemented()
    }
}
