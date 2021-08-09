def archive(name, files, out):
    native.genrule(
        name=name,
        outs=[out],
        srcs=files,
        cmd="zip $(OUTS) $(SRCS)"
    )