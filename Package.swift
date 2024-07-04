// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Danger",
     platforms: [
         .macOS("13.0"),
     ],
     products: [
         .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"]),
     ],
     dependencies: [
         .package(url: "https://github.com/danger/swift.git", .exact(Version(3, 18, 1))),
     ],
     targets: [
         .target(name: "DangerDependencies", dependencies: [.product(name: "Danger", package: "swift")], path: "Danger", sources: ["Empty.swift"]),
     ]
 )