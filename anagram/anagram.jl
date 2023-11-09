function detect_anagrams(subject, candidates)
	list_of_words = []
	d = Dict()
	for i in 1:length(subject)
		c = lowercase(subject[i])
		if get(d, c, 0) == 0
			d[c] = 1
		else
			d[c] += 1
		end
	end
	for word in candidates
		if lowercase(word) == lowercase(subject)
			continue
		end
		wd = Dict()
		for i in 1:length(word)
			c = lowercase(word[i])
			if get(wd, c, 0) == 0
				wd[c] = 1
			else
				wd[c] += 1
			end
		end
		if wd == d
			push!(list_of_words, word)
		end
	end
	return unique(x->lowercase(x), list_of_words)
end
