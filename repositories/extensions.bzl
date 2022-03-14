load("@io_bazel_rules_docker//repositories:repositories.bzl", "repositories_detail")

def _docker_impl(ctx):
    repositories_detail(
        excludes = [
            "io_bazel_rules_go",
            "rules_python",
            "bazel_skylib",
            "bazel_gazelle",
            "rules_pkg",
        ], 
        register = False
    )

docker = module_extension(implementation = _docker_impl,)