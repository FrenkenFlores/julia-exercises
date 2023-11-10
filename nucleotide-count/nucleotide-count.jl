"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
	dna = Dict(
		'A' => 0,
		'C' => 0,
		'G' => 0,
		'T' => 0
	)
	err = -1
	for c in strand
		if get(dna, c, err) == err
			throw(DomainError("$c is not in $dna"))
		end
		dna[c] += 1
	end
	return dna
end
