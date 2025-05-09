// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SensorsAnalyticsSDK",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v7)
    ],
    products: [
        // 主产品 - 核心SDK
        .library(
            name: "SensorsAnalyticsSDK",
            targets: ["SensorsAnalyticsSDKCore"]
        ),
        // 基础SDK
        .library(
            name: "SensorsAnalyticsSDKBase",
            targets: ["SensorsAnalyticsSDKBase"]
        ),
    ],
    targets: [
        // 核心SDK - 二进制目标
        .binaryTarget(
            name: "SensorsAnalyticsSDKCore",
            path: "SensorsAnalyticsSDK/Source/Core/SensorsAnalyticsSDK.xcframework"
        ),
        // 基础SDK - 二进制目标
        .binaryTarget(
            name: "SensorsAnalyticsSDKBase",
            path: "SensorsAnalyticsSDK/Source/Base/SensorsAnalyticsSDK.xcframework"
        ),
    ],
    swiftLanguageVersions: [.v5]
)