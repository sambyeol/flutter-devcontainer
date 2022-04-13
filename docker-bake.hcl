group "default" {
    targets = [
        "latest"
    ]
}

group "all" {
    targets = [
        "30-2_8_1"
    ]
}

group "latest" {
    targets = [
        "30-2_8_1"
    ]
}

target "30-2_8_1" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:30-2.8.1",
        "sambyeol/flutter-devcontainer:latest"
    ]
    args = {
        ANDROID_SDK_TOOLS_VERSION = "7583922"
        ANDROID_PLATFORM_VERSION = "30"
        ANDROID_BUILD_TOOLS_VERSION = "30.0.2"
        FLUTTER_VERSION = "2.8.1"
    }
}
