// swift-tools-version: 5.9

// Swift Playgrounds app package. Open this folder in Swift Playgrounds
// (iPad or Mac) or in Xcode on a Mac to run it on an iPhone.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "HelloWorld",
    platforms: [
        .iOS("17.0")
    ],
    products: [
        .iOSApplication(
            name: "HelloWorld",
            targets: ["AppModule"],
            bundleIdentifier: "com.example.helloworld",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .sun),
            accentColor: .presetColor(.indigo),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
