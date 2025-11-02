cc_library(
    name = "solution",
    srcs = ["solution.cpp"],
    hdrs = ["solution.h"],
    visibility = ["//visibility:public"],
    copts = ["-O0", "-g", "-fno-omit-frame-pointer"],
)

cc_binary(
    name = "main",
    srcs = ["main.cpp"],
    deps = [":solution"],
    copts = ["-O0", "-g", "-fno-omit-frame-pointer"],
    linkopts = ["-g"],
)
