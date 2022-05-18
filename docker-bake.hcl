group "default" {
    targets = [
        "latest"
    ]
}

group "all" {
    targets = [
	"32-3_0_0",
        "30-2_8_1"
    ]
}

group "latest" {
    targets = [
        "32-3_0_0"
    ]
}

target "32-3_0_0" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:32-3.0.0",
        "sambyeol/flutter-devcontainer:latest"
    ]
    args = {
        UBUNTU_VERSION = "22.04"
        ANDROID_SDK_TOOLS_VERSION = "8512546"
        ANDROID_PLATFORM_VERSION = "32"
        ANDROID_BUILD_TOOLS_VERSION = "32.0.0"
        FLUTTER_VERSION = "3.0.0"
    }
}

target "30-2_8_1" {
    platforms = ["linux/amd64"]
    dockerfile = "Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:30-2.8.1"
    ]
    args = {
        UBUNTU_VERSION = "20.04"
        ANDROID_SDK_TOOLS_VERSION = "7583922"
        ANDROID_PLATFORM_VERSION = "30"
        ANDROID_BUILD_TOOLS_VERSION = "30.0.2"
        FLUTTER_VERSION = "2.8.1"
    }
}
