load("//src:typescript_proto_build.bzl", "typescript_proto_build")
load("@build_bazel_rules_nodejs//:index.bzl", "js_library")

def typescript_grpc_node_library(name, proto, package_name = None, use_grpc_js = False, **kwargs):
    typescript_proto_build(
        name = name + "_build",
        proto = proto,

        generate = "grpc-node",
        grpc_node_mode = "grpc-js" if use_grpc_js else "",
        **kwargs
    )
    if package_name == None:
      package_name = name
    js_library(
        name = name,
        srcs = [
            name + "_build"
        ],
        package_name = "backend/proto/" + package_name
    )

