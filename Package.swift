// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GT3Captcha",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GT3Captcha",
            targets: ["GT3Captcha", "GT3CaptchaBundle"]
        ),
    ],
    targets: [
        .target(
            name: "GT3CaptchaBundle",
            path: "Sources",
            exclude: [
                "GT3Captcha.xcframework"
            ],
            resources: [
                .copy("GT3Captcha.bundle"),
            ]
        ),
        .binaryTarget(
            name: "GT3Captcha",
            path: "Sources/GT3Captcha.xcframework"
        )
    ]
)
