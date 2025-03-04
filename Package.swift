// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(name: "GoogleMapsBase", targets: ["GoogleMapsBase"]),
        .library(name: "GoogleMapsCore", targets: ["GoogleMapsCore"]),
        .library(name: "GoogleMaps", targets: ["GoogleMapsTarget"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/erdituncalp/GoogleMaps-SPM/releases/download/6.2.1/GoogleMaps.xcframework.zip",
            checksum: "82b5f1fd59203168af6db97c0db9ee619e92503effcbeaa9e3a6e6da27ea44d0"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/erdituncalp/GoogleMaps-SPM/releases/download/6.2.1/GoogleMapsBase.xcframework.zip",
            checksum: "41e4443ede732e8b7f1c306c64f993dc5eb7e661d9d1611b19ca840b69f0d47b"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/erdituncalp/GoogleMaps-SPM/releases/download/6.2.1/GoogleMapsCore.xcframework.zip",
            checksum: "ef7b7618a093304af9c484d7514b58afd32db50a412a289445f42eb05215112f"
        ),
        .target(
            name: "GoogleMapsTarget",
            dependencies: ["GoogleMaps", "GoogleMapsBase", "GoogleMapsCore"],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
                .linkedFramework("Accelerate"),
                .linkedFramework("Contacts"),
                .linkedFramework("CoreData"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreText"),
                .linkedFramework("GLKit"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Metal"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)