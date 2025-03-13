// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    platforms: [
        .iOS(.v11) // 設定最低支援的 iOS 版本
    ],
    products: [
        .library(
            name: "FolioReaderKit",
            targets: ["FolioReaderKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", from: "2.1.0"),
        .package(url: "https://github.com/cxa/MenuItemKit.git", from: "3.0.0"),
        .package(url: "https://github.com/zoonooz/ZFDragableModalTransition.git", from: "0.6.0"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.2.0"),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", from: "4.0.0"),
        .package(url: "https://github.com/fantim/JSQWebViewController.git", from: "6.1.0"),
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "3.1.0"),
    ],
    targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: [
                "ZipArchive",
                "MenuItemKit",
                "ZFDragableModalTransition",
                "AEXML",
                "FontBlaster",
                "JSQWebViewController",
                "Realm"
            ],
            path: "Sources"
        ),
    ]
)
