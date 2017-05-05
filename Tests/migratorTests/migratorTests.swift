import XCTest
import Foundation
import Core
@testable import migrator

class migratorTests: XCTestCase {
    func formatMarkdown() {
        let url = URL(string: "https://gist.githubusercontent.com/LoganWright/ef9faca1951124f91d02113a58c462aa/raw/2e19c3770b0c340216b201737db74aec058f8553/diff.md")!
        let d = try! Data.init(contentsOf: url)
        let groups = d.makeBytes()
            .makeString()
            .components(separatedBy: "```")
            .filter { !$0.isEmpty }
            .map {
                $0.components(separatedBy: "\n").filter { !$0.isEmpty }.sorted()
            }

        var markdown = ""
        groups.forEach { group in
            if group.count == 1 {
                let title = group[0]
                markdown += "## \(title)\n\n"
            } else {
                markdown += "```Swift\n"
                markdown += group.joined(separator: "\n")
                markdown += "\n```\n\n"
            }
        }

        print(markdown)
    }
}
