# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_bonus_tasks = (rev = false, by = false, lt = false, multiple_matches = false)

function binarysearch(a::Array, n::Int)::UnitRange{Int}
	i = 1
	j = length(a)
	mid = i + div(j - i, 2)
	while i <= j
		if a[mid] == n
			j = i = mid
			break
		elseif a[mid] > n
			j = mid - 1
			mid = j - div(j - i, 2)
		else
			i = mid + 1
			mid = i + div(j - i, 2)
		end
	end
	while i <= j && j < length(a) - 1 && a[j + 1] == n
		j = j + 1
	end
	return UnitRange{Int}(i, j)
end
