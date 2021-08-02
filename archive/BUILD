load(":bazel/archive.bzl", "archive")

archive(
    name = "documentation",
    out = "documentation.zip",
    files = [
        "src/README.md",
    ],
)

archive(
    name = "release",
    out = "release.zip",
    files = [
        "src/RELEASE.md",
    ],
)

archive(
    name = "all",
    out = "all.zip",
    files = [
        "src/README.md",
        "src/RELEASE.md",
    ],
)
