import XCTest
import SwiftTreeSitter
import TreeSitterGetColumnBug

final class TreeSitterGetColumnBugTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_get_column_bug())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading GetColumnBug grammar")
    }
}
