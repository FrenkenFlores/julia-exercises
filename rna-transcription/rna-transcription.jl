function to_rna(dna)
	rna = ""
	dna_compliant = Dict(
		'G' => 'C',
		'C' => 'G',
		'T' => 'A',
		'A' => 'U'
	)
	dna_elements = "GCTA"
	for c in dna
		if c in dna_elements
			rna = rna * dna_compliant[c]
		else
			throw(ErrorException("Invalid input $dna"))
		end
	end
	return rna
end

