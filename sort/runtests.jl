using Test
include("sort.jl")

@testset "bubble sort algorithm" begin
        @test bubblesort!([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
        @test bubblesort!([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
        @test bubblesort!([2, 3, 5, 1, 4]) == [1, 2, 3, 4, 5]
        @test bubblesort!([4, 5, 1, 2, 3]) == [1, 2, 3, 4, 5]
        @test bubblesort!([1, 2, 5, 3, 4]) == [1, 2, 3, 4, 5]
end

@testset "insertion sort algorithm" begin
        @test insertionsort!([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
        @test insertionsort!([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
        @test insertionsort!([2, 3, 5, 1, 4]) == [1, 2, 3, 4, 5]
        @test insertionsort!([4, 5, 1, 2, 3]) == [1, 2, 3, 4, 5]
        @test insertionsort!([1, 2, 5, 3, 4]) == [1, 2, 3, 4, 5]
end

@testset "selection sort algorithm" begin
        @test selectionsort!([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
        @test selectionsort!([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
        @test selectionsort!([2, 3, 5, 1, 4]) == [1, 2, 3, 4, 5]
        @test selectionsort!([4, 5, 1, 2, 3]) == [1, 2, 3, 4, 5]
        @test selectionsort!([1, 2, 5, 3, 4]) == [1, 2, 3, 4, 5]
end

@testset "merge sort algorithm" begin
        @test mergesort!([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
        @test mergesort!([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
        @test mergesort!([2, 3, 5, 1, 4]) == [1, 2, 3, 4, 5]
        @test mergesort!([4, 5, 1, 2, 3]) == [1, 2, 3, 4, 5]
        @test mergesort!([1, 2, 5, 3, 4]) == [1, 2, 3, 4, 5]
end

@testset "quick sort algorithm" begin
        @test quicksort!([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
        @test quicksort!([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
        @test quicksort!([2, 3, 5, 1, 4]) == [1, 2, 3, 4, 5]
        @test quicksort!([4, 5, 1, 2, 3]) == [1, 2, 3, 4, 5]
        @test quicksort!([1, 2, 5, 3, 4]) == [1, 2, 3, 4, 5]
end
