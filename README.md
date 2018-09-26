Getopt.jl is a Julia package that parses command-line arguments with an API
nearly identical to getopt [in Python][1]. To install:

```sh
julia -e 'using Pkg; Pkg.add("Getopt")'
```

To use:

```julia
for (opt, arg) in getopt(ARGS, "xy:", ["foo", "bar="])
	@show (opt, arg)
end
@show ARGS
```

[1]: https://docs.python.org/3/library/getopt.html
