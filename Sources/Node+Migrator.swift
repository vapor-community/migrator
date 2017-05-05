import Node

extension NodeRepresentable {
    @available(*, deprecated: 1.0, renamed: "makeNode(in:)")
    public func makeNode(context: Context) throws -> Node {
        return try makeNode(in: context)
    }
}
