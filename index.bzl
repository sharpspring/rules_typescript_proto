load("//src:typescript_proto_library.bzl", _typescript_proto_library = "typescript_proto_library")
load("//src:typescript_grpc_node_library.bzl", _typescript_grpc_node_library = "typescript_grpc_node_library")
load("//src:typescript_grpc_web_library.bzl", _typescript_grpc_web_library = "typescript_grpc_web_library")

typescript_proto_library = _typescript_proto_library
typescript_grpc_node_library = _typescript_grpc_node_library
typescript_grpc_web_library = _typescript_grpc_web_library
