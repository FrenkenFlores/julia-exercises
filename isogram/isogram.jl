function isisogram(s)
	for c in s
		if length(
			findall(
				tmp -> tmp != '-' && tmp != ' ' && (
				tmp == uppercase(c) || 
				tmp == lowercase(c)
				), s
			)
		) > 1
			return false
		end
	end
	return true
end
