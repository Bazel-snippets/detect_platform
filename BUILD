load("@hostenv//:hostenv.bzl", "get_host_os_name")
load("detect_platform.bzl", "detect_platform")
package(default_visibility = ['//visibility:public'])

host_os_name = get_host_os_name()
print ('host_os_name = %s' % host_os_name)


config_setting(
    name = "linux",
    constraint_values = [
        "@platforms//os:linux",
    ],
)

config_setting(
    name = "osx",
    constraint_values = [
        "@platforms//os:osx",
    ],
)

config_setting(
    name = "windows",
    constraint_values = [
        "@platforms//os:windows",
    ],
)

detect_platform(
    name = "detect_platform",
)