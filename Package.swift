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
                      url: "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/8.2.1.1/PAGAdSDK.xcframework.zip",
                      checksum: "b5986f9ae364ab56b8e80d9027f1482eba425201612919c1ccf63e83692dca87"),
        .binaryTarget(name: "TikTokBusinessSDK",
                      url: "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/8.2.1.1/TikTokBusinessSDK.xcframework.zip",
                      checksum: "5963bf1294b1e8ce5aa9698a002e8be8eee4c87a7ebbaccd9eb1592177309eee"),
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