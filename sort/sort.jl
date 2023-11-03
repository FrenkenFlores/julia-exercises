function insertionsort!(a::Array)::Array
	for j in 2:length(a)
		key = a[j]
		i = j - 1
		while i > 0 && a[i] > key
			a[i + 1] = a[i]
			i -= 1
		end
		a[i + 1] = key
	end
	return a
end

function bubblesort!(a::Array)::Array
	for j in 1:length(a)
		for i in 1:length(a) - j
			if a[i] > a[i + 1]
				a[i], a[i + 1] = a[i + 1], a[i]
			end
		end
	end
	return a
end

function selectionsort!(a::Array)::Array
	for j in 1:length(a)
		min_index = j
		for i in (j + 1):length(a)
			if a[min_index] > a[i]
				min_index = i
			end
		end
		a[j], a[min_index] = a[min_index], a[j]	
	end
	return a
end

function mergesort!(a::Array)::Array
	function mergearrays!(left::Array, right::Array)::Array
		i, j = 1, 1
		a = []
		while i <= length(left) && j <= length(right)
			if left[i] < right[j]
				push!(a, left[i])
				i += 1
			else
				push!(a, right[j])
				j += 1
			end
		end
		while i <= length(left)
			push!(a, left[i])
			i += 1
		end
		while j <= length(right)
			push!(a, right[j])
			j += 1
		end
		return a
	end
	if length(a) < 2
		return a
	end

	mid = div(length(a), 2)
	left = mergesort!(a[begin:mid])
	right = mergesort!(a[mid+1:end])
	return mergearrays!(left, right)
end

function quicksort!(a::Array, s::Int=1, e::Int=length(a))::Array	
	function partion!(a::Array, left::Int, right::Int)::Int
		pivot = a[right]
		i = left - 1
		for j in left:right - 1
			if a[j] <= pivot
				i += 1
				a[j], a[i] = a[i], a[j]
			end
		end
		a[i + 1], a[right] = a[right], a[i + 1]
		return i + 1
	end

	if s >= e
		return a
	end

	mid = partion!(a, s, e)
	quicksort!(a, s, mid - 1)
	quicksort!(a, mid + 1, e)
	return a
end
