# Pangle iOS SDK
Pangle iOS SDK for Swift Package Manager.

# Integration
The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.
To integrate the Pangle SDK into your project using Swift Package Manager, please refer to [SPM integration documentation](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app). And remember to enable the `-ObjC` flag in Xcode: select Build Settings, search for Other Linker Flags and add `-ObjC`. 

Published versions use tags in the `x.x.x-release.x` format. When selecting **Up to Next Major Version** or **Up to Next Minor Version** in Xcode, use `8.1.1-release.0` as the minimum version so Swift Package Manager can resolve the available releases. For example:

- Up to Next Major Version: `"8.1.1-release.0"..<"9.0.0"`
- Up to Next Minor Version: `"8.1.1-release.0"..<"8.2.0"`

See the repository's [available tags](https://github.com/bytedance/AdsGlobalPackage/tags) for published versions.

Check out our [integration docs](https://www.pangleglobal.com/zh/integration/integrate-pangle-sdk-for-ios) for more info on getting started with Pangle SDK.
