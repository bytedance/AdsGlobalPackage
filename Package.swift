// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdsGlobalPackage",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AdsGlobalPackage",
            targets: ["AdsGlobalPackage"]),
        .library(
            name: "TikTokBusinessSDK",
            targets: ["TikTokBusinessSDK", "AdsGlobalPackage"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "PAGAdSDK",
                      url: "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/8.2.0.8/PAGAdSDK.xcframework.zip",
                      checksum: "f371d2f4d39b05d30b35566d6dc3dfce59fc18e41d522b1ba2dd5e8bb364843a"),
        .binaryTarget(name: "TikTokBusinessSDK",
                      url: "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/8.2.0.8/TikTokBusinessSDK.xcframework.zip",
                      checksum: "eeb450577788f640536ff6bb7a3bbccf42d7b01f7111a9f092235f8b4aae74d7"),
        .target(
            name: "AdsGlobalPackage",
            dependencies: [
                .target(name: "PAGAdSDK"),
            ],
            resources: [.copy("PAGAdSDK.bundle")],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("AdSupport"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("Accelerate" ),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Security"),
                .linkedFramework("DeviceCheck"),
                .linkedFramework("CoreML"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("bz2"),
                .linkedLibrary("xml2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("c++abi"),
                .linkedLibrary("c++"),
            ]),
        .testTarget(
            name: "AdsGlobalPackageTests",
            dependencies: ["AdsGlobalPackage"]),
    ]
)