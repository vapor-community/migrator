import Vapor

extension Abort {
    @available(*, deprecated: 1.0, renamed: "reason")
    public var message: String {
        return reason
    }

    @available(*, deprecated: 1.0, renamed: "status.statusCode")
    public var code: Int {
        return status.statusCode
    }
}
