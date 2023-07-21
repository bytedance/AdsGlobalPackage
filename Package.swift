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
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "PAGAdSDK",
                      url:"https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/5.3.1.1/PAGAdSDK.xcframework.zip",
                      checksum: "55f43b3c5039fdaf654097efebae594e70a7fdbd81619b34ccb4745cb9e73cab"),
        .binaryTarget(name: "BURelyAdSDK",
                      url:"https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/pangle-sdk-static-va/BURelyAdSDK/2.2.0.2/BURelyAdSDK.xcframework.zip",
                      checksum: "e009f77667dbf2bdbe5d57fa206c77e634d1e7ca370f60d56398e907a7f7701f"),
        .binaryTarget(name: "BURelyFoundation_Global",
                      url:"https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/bu-rely-framework-sg/0.1.1.0/framework/BURelyFoundation_Global.zip",
                      checksum: "56d797b912cfb660678832c0bf680db0ec2633e61613cb2b11322e3aa7cc7577"),
        .target(
            name: "AdsGlobalPackage",
            dependencies: [
                .target(name: "PAGAdSDK"),
                .target(name: "BURelyAdSDK"),
                .target(name: "BURelyFoundation_Global")
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
