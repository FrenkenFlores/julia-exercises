function slowannotate(a::Array)::Array
	if length(a) == 0
		return a
	end
	res = deepcopy(a)
	insert!(res, 1, " " ^ (length(a[1]) + 2))
	push!(res, " " ^ (length(a[1]) + 2))
	for i in 2:length(res) - 1
		res[i] = " " * res[i] * " "
	end
	for i in 2:length(res) - 1
		for j in 2:length(res[1]) - 1
			if res[i][j] == '*'
				continue
			end
			for u in i - 1:i + 1
				for k in j - 1:j + 1
					if res[u][k] == '*'
						decompose = split(res[i], "")
						decompose[j] = isnumeric(res[i][j]) ? string(parse(Int, res[i][j]) - parse(Int, '0') + 1) : "1"
						res[i] = join(decompose)
					end
				end
			end
		end
	end
	
	return [s[begin + 1:end - 1] for s in res[begin + 1: end - 1]]
end

function annotate(a::Array)::Array
	if length(a) == 0
		return a
	end
	res = deepcopy(a)
	insert!(res, 1, " " ^ (length(a[1]) + 2))
	push!(res, " " ^ (length(a[1]) + 2))
	for i in 2:length(res) - 1
		res[i] = " " * res[i] * " "
	end
	for i in 2:length(res) - 1
		for j in 2:length(res[1]) - 1
			if res[i][j] != '*'
				continue
			end
			for u in i - 1:i + 1
				decompose = split(res[u], "")
				for k in j - 1:j + 1
					if u == i && k == j || decompose[k] == "*"
						continue
					end
					decompose[k] = tryparse(Int, decompose[k]) != nothing ? string(parse(Int, decompose[k]) - parse(Int, '0') + 1) : "1"
				end
				res[u] = join(decompose)
			end
		end
	end
	
	return [s[begin + 1:end - 1] for s in res[begin + 1: end - 1]]
end
