import PackageDescription

let package = Package(name: "SwiftBerry");

#if os(Linux)
package.dependencies = [
        .Package(url: "https://github.com/uraimo/SwiftyGPIO.git", majorVersion: 0),
        .Package(url: "https://github.com/Zewo/HTTPServer.git", majorVersion: 0, minor: 14)
]
#else
package.dependencies = [
        .Package(url: "https://github.com/Zewo/HTTPServer.git", majorVersion: 0, minor: 14)
]
#endif
