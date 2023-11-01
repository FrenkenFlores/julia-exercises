using Test
include("sum_error.jl")

@testset "Primary tests" begin
	@test sum(1, 2, 3, 4, 5) == 15
	@test sum(1, 2, 3., 4, "5") == 15.0
	@test sum((1, 2, 3.), [4, "5"]) == 15.0
	@test sum((1, 2, "dwqd"), [4, "wdqdqw"]) == [(1, 3), (2, 2)]
end
