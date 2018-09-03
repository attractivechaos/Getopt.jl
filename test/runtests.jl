using Getopt
using Test

@testset "Getopt" begin
	args = ["-xxy1", "--foo", "arg1", "--bar=2"]
	count = 0
	for (opt, arg) in Getopt.getopt(args, "xy:", ["foo", "bar="])
		if opt != "?" count += 1 end
	end
	@test count == 5
	@test length(args) == 1
end
