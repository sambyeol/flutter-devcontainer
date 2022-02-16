group "default" {
    targets = [
        "latest"
    ]
}

group "all" {
    targets = [
        "2.8.1"
    ]
}

group "latest" {
    targets = [
        "2.8.1"
    ]
}

target "2.8.1" {
    platforms = ["linux/amd64"]
    dockerfile = "dockerfiles/amd64.Dockerfile"
    tags = [
        "sambyeol/flutter-devcontainer:2.8.1",
        "sambyeol/flutter-devcontainer:latest"
    ]
}
