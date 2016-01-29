import PackageDescription

let package = Package(
  name: "mentor-api",
    dependencies: [
        .Package(url: "https://github.com/Zewo/Epoch.git", majorVersion: 0, minor: 1),
        .Package(url: "https://github.com/Zewo/PostgreSQL.git", majorVersion: 0),
        .Package(url: "https://github.com/Zewo/HTTPMiddleware.git", majorVersion: 0, minor: 1)
    ]
)
