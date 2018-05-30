// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FoodServer",
    dependencies: [
      .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.3.0")),
      .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", .upToNextMinor(from: "1.7.1")),
      .package(url: "https://github.com/IBM-Swift/CloudEnvironment.git", from: "7.1.0"),
      .package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", from: "2.0.0"),
      .package(url: "https://github.com/IBM-Swift/Health.git", from: "1.0.0"),
      .package(url: "https://github.com/IBM-Swift/Swift-Kuery-ORM.git", .upToNextMinor(from: "0.0.1")),
      .package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL.git", from: "1.1.0"),
      .package(url: "https://github.com/IBM-Swift/Kitura-StencilTemplateEngine.git", from: "1.8.0"),
    ],
    targets: [
      .target(name: "FoodServer", dependencies: [ .target(name: "Application"), "Kitura" , "HeliumLogger"]),
      .target(name: "Application", dependencies: [ "Kitura", "CloudEnvironment","SwiftMetrics","Health", "SwiftKueryORM", "SwiftKueryPostgreSQL", "KituraStencil"]),

      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura","HeliumLogger" ])
    ]
)
