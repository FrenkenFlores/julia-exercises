function matching_brackets(s::String)::Bool
	stack = []
	find_pair(x) = begin
		x == '[' && return ']'
		x == ']' && return '['
		x == '(' && return ')'
		x == ')' && return '('
		x == '{' && return '}'
		x == '}' && return '{'
	end
	for c in s
		if c in "([{"
			push!(stack, c)
		elseif c in ")]}"
			if length(stack) > 0 && c == find_pair(stack[end]) 
				pop!(stack)
			else
				return false
			end
		else
			continue
		end
	end
	return length(stack) == 0
end
