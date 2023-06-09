import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import MySwiftMacrosMacros

let testMacros: [String: Macro.Type] = [
    "fourCharacterCode": FourCharacterCode.self,
]

final class MySwiftMacrosTests: XCTestCase {
    func testMacro() {
        assertMacroExpansion(
            """
            #fourCharacterCode("ABCD")
            """,
            expandedSource: """
            1145258561
            """,
            macros: testMacros
        )
    }

    func testMacroWithStringLiteral() {
        assertMacroExpansion(
            #"""
            #fourCharacterCode("ABCD")
            """#,
            expandedSource: #"""
            1145258561
            """#,
            macros: testMacros
        )
    }
}
