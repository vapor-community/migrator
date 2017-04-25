import libc

func unimplemented(function: StaticString = #function) -> Never {
    print("The function `\(function)` is unimplemented,")
    print("please consult deprecation warnings")
    exit(1)
}

@_exported import LeafProvider
@_exported import FluentProvider


import Console
extension ConsoleLogger {
    @available(*, deprecated: 1.0, renamed: "init(_:)")
    public convenience init(console: ConsoleProtocol) {
        self.init(console)
    }
}
