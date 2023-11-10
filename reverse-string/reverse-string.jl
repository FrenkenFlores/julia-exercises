function myreverse(a::String)::String
	res = ""
	if a == ""
		return ""
	end
	for i in length(a):-1:1
		res *= a[i]
	end
	return res
end
