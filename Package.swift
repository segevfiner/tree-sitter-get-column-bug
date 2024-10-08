// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterGetColumnBug",
    products: [
        .library(name: "TreeSitterGetColumnBug", targets: ["TreeSitterGetColumnBug"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterGetColumnBug",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterGetColumnBugTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterGetColumnBug",
            ],
            path: "bindings/swift/TreeSitterGetColumnBugTests"
        )
    ],
    cLanguageStandard: .c11
)
