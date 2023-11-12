function isarmstrong(n::Int)::Bool
	m = 0
	n_str = string(n)
	n_len = length(n_str)
	for i in n_str
		m += parse(Int, i) ^ n_len
	end
	return m == n
end
