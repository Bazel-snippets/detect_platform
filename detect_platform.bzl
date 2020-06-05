OSInfo = provider("name")

def _detect_platform_impl(ctx):
    return OSInfo(name = ctx.attr.target_platform)

detect_platform_rule = rule(
    implementation = _detect_platform_impl,
    attrs = {
        "target_platform": attr.string(),
    },
)

def detect_platform(name, **kwargs):
    detect_platform_rule(
        name = name,
        target_platform = select({
            "windows": "windows",
            "linux": "linux",
            "osx": "osx",
        }),
    )