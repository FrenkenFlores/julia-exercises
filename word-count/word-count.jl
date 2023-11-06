function wordcount(sentence)
	sentence = lowercase(sentence)
	i = j = 1
	words = Dict()
	l = length(sentence)
	while j <= l
		while j < l && (isletter(sentence[j]) || isnumeric(sentence[j])) ||
			j + 1 < l && sentence[j] == '\'' && isletter(sentence[j + 1])
			j = j + 1
		end
		word = filter(x -> isletter(x) || isnumeric(x) || x == '\'', sentence[i:j])
		if length(word) > 0 && '\'' == word[begin] || ',' in word
			word = strip(word, '\'')
			word = strip(word, ',')
		end
		if length(word) == 0 || !isletter(word[begin]) && !isnumeric(word[begin])
			i = j
			j = j + 1
			continue
		end
		if word in keys(words)
			words[word] += 1
		else
			words[word] = 1
		end
		i = j
		j = j + 1
	end
	return words
end
