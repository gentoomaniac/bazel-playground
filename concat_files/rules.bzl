def _concat_files(ctx):
    out = ctx.actions.declare_file(ctx.attr.filename)

    in_paths = [f.path for f in ctx.files.srcs]

    ctx.actions.run_shell(
        outputs = [out],
        inputs = ctx.files.srcs,
        command = "cat {inputs} > {outfile}".format(inputs = " ".join(in_paths), outfile = out.path),
    )

    return [DefaultInfo(files = depset([out]))]

concat_files = rule(
    implementation = _concat_files,
    attrs = {
        "filename": attr.string(),
        "srcs": attr.label_list(allow_files = [".yaml"], mandatory = True, allow_empty = False),
    },
)
