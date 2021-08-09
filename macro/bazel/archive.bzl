def _archive(ctx):
    out = ctx.actions.declare_file(ctx.label.name)
    args = ctx.actions.args()

    args.add(out)
    args.add_all(ctx.files.files)

    ctx.actions.run(
        executable="zip",
        arguments=[args],
        inputs=ctx.files.files,
        outputs=[out]
    )

    return [DefaultInfo(files=depset([out]))]

archive = rule(
    implementation = _archive,
    attrs = {
        "files": attr.label_list(allow_files=True),
    }
)