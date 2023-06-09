// The Swift Programming Language
// https://docs.swift.org/swift-book

@freestanding(expression)
public macro fourCharacterCode<T>(_ value: T) -> UInt32 = #externalMacro(module: "MySwiftMacrosMacros", type: "FourCharacterCode")
