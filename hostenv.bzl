_template = """
def get_host_os_name():
    return "{host_os_name}"
""".strip()

def _impl(repository_ctx):
    repository_ctx.file('BUILD', executable=False)
    repository_ctx.file('hostenv.bzl', executable=False, content=_template.format(host_os_name=repository_ctx.os.name))

hostenv = repository_rule(implementation=_impl)
