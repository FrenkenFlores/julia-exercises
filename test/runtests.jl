using Test
include("functions.jl")


@testset "Hello, World!" begin
	@test hello() == "Hello, World!"
end

@testset "Sum 2 numbers" begin
	@test sum(1, 2) == 3
end

@testset "Sum 3 numbers" begin
	@test sum(1, 2, 3) == 6
end

@testset "Power by 2" begin
	@test power(3, 2) == 9
end
