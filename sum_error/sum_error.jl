function sum(x...)
	s = 0
	l = []
	for (i, j) in enumerate(x)
		try
			n = tryparse(Int, j)
			if isnothing(n)
				return ((i, ))
			else
				s += n
			end
		catch
			try
				s += j
			catch
				n =  sum(j...)
				if isa(n, Tuple)
					l = length(l) > 0 ? [l, (i, n...)] : (i, n...)
				else
					s += n
				end
			end
		end
	end
	if length(l) == 0
		return s
	end
	return l
end
