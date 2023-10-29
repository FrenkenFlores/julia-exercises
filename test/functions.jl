function hello()
	return "Hello, World!"
end

function sum(a::Int64, b::Int64)
	return a + b
end

function sum(a::Int64, b::Int64, c::Int64)
	return a + b + c
end

function power(a::Int64, b::Int64)
	return a ^ b
end
