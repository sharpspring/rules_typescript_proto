load("//src:typescript_proto_build.bzl", "typescript_proto_build")
load("@aspect_rules_js//js:defs.bzl", "js_library")
load("@aspect_rules_js//npm:defs.bzl", "npm_package")


def typescript_grpc_node_library(name, proto, package_name = None, use_grpc_js = True, **kwargs):
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
    )

