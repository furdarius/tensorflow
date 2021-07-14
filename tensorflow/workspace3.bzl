"""TensorFlow workspace initialization. Consult the WORKSPACE on how to use it."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def workspace():
    http_archive(
        name = "io_bazel_rules_closure",
        sha256 = "5b00383d08dd71f28503736db0500b6fb4dda47489ff5fc6bed42557c07c6ba9",
        strip_prefix = "rules_closure-308b05b2419edb5c8ee0471b67a40403df940149",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/bazelbuild/rules_closure/archive/308b05b2419edb5c8ee0471b67a40403df940149.tar.gz",
            "https://github.com/bazelbuild/rules_closure/archive/308b05b2419edb5c8ee0471b67a40403df940149.tar.gz",  # 2019-06-13
        ],
    )

    http_archive(
        name = "tf_toolchains",
        sha256 = "28cff50d55c82d124fa54ac132692451d953d383807884d15ae32bea6f189a0b",
        strip_prefix = "toolchains-1.1.10",
        urls = [
            "http://mirror.tensorflow.org/github.com/tensorflow/toolchains/archive/v1.1.10.tar.gz",
            "https://github.com/tensorflow/toolchains/archive/v1.1.10.tar.gz",
        ],
    )
    http_archive(
        name = "com_google_absl",
        urls = ["https://github.com/abseil/abseil-cpp/archive/4a23151e7ee089f54f0575f0a6d499e3a3fb6728.zip"],
        strip_prefix = "abseil-cpp-4a23151e7ee089f54f0575f0a6d499e3a3fb6728",
        sha256 = "cf38027784ad8e1f89e864155cf118770f842b7eb0ed20827350d5dde54d4141",
    )
    
    http_archive(
        name = "com_google_tcmalloc",
        urls = ["https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip"],
        strip_prefix = "tcmalloc-a8a232f3dc9c41196e06251e7164d0404f19cf49",
        sha256 = "caf0cd0e8db1c173b9de5e9c6877763b6110fee4f22688cf808736895d7f0477",
    )

    http_archive(
        name = "rules_fuzzing",
        sha256 = "a5734cb42b1b69395c57e0bbd32ade394d5c3d6afbfe782b24816a96da24660d",
        strip_prefix = "rules_fuzzing-0.1.1",
        urls = ["https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.1.zip"],
    )

# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
tf_workspace3 = workspace
