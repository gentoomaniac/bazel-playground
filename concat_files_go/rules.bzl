def _concat_files(ctx):
    out = ctx.actions.declare_file(ctx.attr.filename)

    in_paths = [f.path for f in ctx.files.srcs]

    ctx.actions.run(
        outputs = [out],
        inputs = ctx.files.srcs,
        executable = ctx.executable.concat_tool,
        arguments = ["-vvvv", "--no-json", "--outfile={}".format(out.path)] + in_paths,
    )

    return [DefaultInfo(files = depset([out]))]

concat_files = rule(
    implementation = _concat_files,
    attrs = {
        "filename": attr.string(),
        "srcs": attr.label_list(allow_files = [".yaml"], mandatory = True, allow_empty = False),
        "concat_tool": attr.label(
            executable = True,
            cfg = "exec",
            allow_files = True,
            default = Label("//cmd/concat:concat"),
        ),
    },
)
