// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AllianceReactNativeBridge",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AllianceReactNativeBridge",
            targets: ["AllianceReactNativeBridgeWrapper","Hermes","BlazeSDKAlliance"]),
    ],
    targets: [
        .target(
            name: "AllianceReactNativeBridgeWrapper",
            dependencies: [
                .target(name: "AllianceReactNativeBridge"),
            ],
            path: "AllianceReactNativeBridgeWrapper"
        ),
        .binaryTarget(
            name: "AllianceReactNativeBridge",
            url: "https://github.com/codefusion80/Alliance-React-Native-Bridge-SPM/releases/download/1.0.4/AllianceReactNativeBridge.xcframework.zip",
            checksum: "9117771785f7393a1bc2ca966abf7664180cdca421511292ce5cc5153342551b"
        ),
         .binaryTarget(
            name: "Hermes",
            url: "https://github.com/AdeptMobile/Alliance-React-Native-Bridge-SPM/releases/download/1.1.20/hermes.xcframework.zip",
            checksum: "de951bd55e7b636b95b019acdf19e464e362a7e97d5a94c4d0777089ff59c5c2"
        ),
        .binaryTarget(
           name: "BlazeSDKAlliance",
           url: "https://github.com/codefusion80/Alliance-React-Native-Bridge-SPM/releases/download/1.0.4/BlazeSDKAlliance.xcframework.zip",
           checksum: "3c6ea9b6ceea8ab6dac7a55c05bb8bbddad2bbac3bbfae475f2d2b7fe806631a"
       )
    ]
)
