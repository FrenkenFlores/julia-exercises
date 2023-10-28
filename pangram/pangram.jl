"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
	if length(input) == 0
		return false
	end
	chars = Dict(c => 0 for c in 'a':'z' if isletter(c))
	for c in input
		if haskey(chars, c)
			chars[lowercase(c)] += 1
		else
			chars[lowercase(c)] = 1
		end
	end
	for (key, value) in chars
		if value < 1
			return false
		end
	end
	return true
end

