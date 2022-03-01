// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GT3CaptchaPackage",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GT3CaptchaPackage",
            targets: ["GT3CaptchaPackage", "GT3CaptchaFramework"]
        ),
    ],
    targets: [
        .target(
            name: "GT3CaptchaPackage",
            path: "Sources",
            resources: [
                .copy("GT3Captcha.bundle"),
            ]
        ),
        .binaryTarget(
            name: "GT3CaptchaFramework",
            path: "GT3Captcha.xcframework"
        )
    ]
)
