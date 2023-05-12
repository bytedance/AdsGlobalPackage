# Pangle iOS SDK
Pangle iOS SDK for Swift Package Manager.

# Integration
The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.
To integrate the Pangle SDK into your project using Swift Package Manager:
1. Add it to the dependencies of your Package.swift:
```objc
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage", .exact("5.2.0-release.5"))
    ]
```
2. Enable the `-ObjC` flag in Xcode: select Build Settings, search for Other Linker Flags and add `-ObjC`.

Check out our [integration docs](https://www.pangleglobal.com/zh/integration/integrate-pangle-sdk-for-ios) for more info on getting started with Pangle SDK.
