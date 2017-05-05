import Vapor
import HTTP

@available(*, deprecated: 1.0)
public struct MediaType {
    public let fileExtension: String
    public let mediaType: String
    public init?(_ fileExtension: String) {
        if let type = Request.mediaTypes[fileExtension.lowercased()] {
            self.fileExtension = fileExtension
            self.mediaType = type
        } else {
            return nil
        }
    }
}
