group "default" {
    targets = [
        "latest"
    ]
}

group "latest" {
    targets = [
        "3_3_10"
    ]
}

target "3_3_10" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:3.3.10",
        "sambyeol/flutter-devcontainer:3.3",
        "sambyeol/flutter-devcontainer:3",
        "sambyeol/flutter-devcontainer:latest"
    ]
    args = {
        UBUNTU_VERSION = "22.04"
        ANDROID_SDK_TOOLS_VERSION = "9123335"
        ANDROID_PLATFORM_VERSION = "33"
        ANDROID_BUILD_TOOLS_VERSION = "33.0.1"
        FLUTTER_VERSION = "3.3.10"
    }
}

target "3_0_0" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:3.0.0",
        "sambyeol/flutter-devcontainer:3.0",
    ]
    args = {
        UBUNTU_VERSION = "22.04"
        ANDROID_SDK_TOOLS_VERSION = "8512546"
        ANDROID_PLATFORM_VERSION = "32"
        ANDROID_BUILD_TOOLS_VERSION = "32.0.0"
        FLUTTER_VERSION = "3.0.0"
    }
}

target "2_8_1" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:2.8.1",
        "sambyeol/flutter-devcontainer:2.8",
        "sambyeol/flutter-devcontainer:2",
    ]
    args = {
        UBUNTU_VERSION = "20.04"
        ANDROID_SDK_TOOLS_VERSION = "7583922"
        ANDROID_PLATFORM_VERSION = "30"
        ANDROID_BUILD_TOOLS_VERSION = "30.0.2"
        FLUTTER_VERSION = "2.8.1"
    }
}
