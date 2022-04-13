# Devcontainer with Android SDK and Flutter
Pre-installed Android SDK and Flutter for [Devcontainer](https://code.visualstudio.com/docs/remote/containers).
Images are available at [Docker Hub](https://hub.docker.com/repository/docker/sambyeol/flutter-devcontainer).

## Quickstart
Make a devcontainer setting file at `.devcontainer/devcontainer.json` in your project.
```json
{
    "image": "sambyeol/flutter-devcontainer",
    "runArgs": [ "--init" ],
    "extensions": [
        "dart-code.dart-code",
        "dart-code.flutter"
    ],
}
```
Then, reopen in container.

## `buildx` Compilation
Compilation uses [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx/).

### Requirements
Some system libraries are needed.
```bash
$ sudo apt-get update
$ sudo apt-get install -y binfmt-support qemu qemu-user-static
```

You need `buildx` to cross-compile images.
