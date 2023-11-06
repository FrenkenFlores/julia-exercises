function sum_of_multiples(limit, factors)
	sumset = Set()
	for f in factors
		if f == 0
			continue
		end
		if limit > f
			if limit % f != 0
				push!(
					sumset,
					[i * f for i in 1:div(
							limit,
							f
						)
					]...
				)
			else
				push!(
					sumset,
					[i * f for i in 1:div(
							limit,
							f
						) - 1
					]...
				)
			end
		end
	end
	return length(sumset) == 0 ? 0 : sum(sumset)
end
