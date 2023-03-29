group "default" {
    targets = [
        "latest",
    ]
}

target "latest" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "ghcr.io/sambyeol/flutter-devcontainer:3.7.8",
        "ghcr.io/sambyeol/flutter-devcontainer:3.7",
        "ghcr.io/sambyeol/flutter-devcontainer:3",
        "ghcr.io/sambyeol/flutter-devcontainer:latest"
    ]
    args = {
        UBUNTU_VERSION = "22.04"
        ANDROID_SDK_TOOLS_VERSION = "9477386"
        ANDROID_PLATFORM_VERSION = "33"
        ANDROID_BUILD_TOOLS_VERSION = "33.0.2"
        FLUTTER_VERSION = "3.7.8"
    }
}

