// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Smartling_i18n",
    products: [
        .library(name: "Smartling_i18n", targets: ["Smartling_i18n"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Smartling_i18n"),
    ]
)
