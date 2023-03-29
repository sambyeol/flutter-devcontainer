# Devcontainer with Android SDK and Flutter SDK
Pre-installed Android SDK and Flutter SDK for [Devcontainer](https://code.visualstudio.com/docs/remote/containers).
Images are available at `ghcr.io/sambyeol/flutter-devcontainer`.

## Quickstart
Make a devcontainer setting file at `.devcontainer/devcontainer.json` in your project.
```json
{
    "image": "ghcr.io/sambyeol/flutter-devcontainer",
    "runArgs": [ "--init" ],
    "extensions": [
        "dart-code.dart-code",
        "dart-code.flutter"
    ],
}
```
Then, reopen in container.

## Tags
Images are tagged Flutter SDK version:
```
docker pull sambyeol/flutter-devcontainer:<flutter-version>
```

## `buildx` Compilation
Compilation uses [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx/).

