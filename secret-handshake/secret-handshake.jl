function secret_handshake(code)
	actions = Dict(
		"00001" => "wink",
		"00010" => "double blink",
		"00100" => "close your eyes",
		"01000" => "jump"
	)
	actions_order = ["wink", "double blink", "close your eyes", "jump"]
	bits = bitstring(code)[length(bitstring(code)) - 4: end]
	for (b, a) in actions
		if parse(UInt64, "0b$b") & parse(UInt64, "0b$bits") == 0
			filter!(x->x!=a, actions_order)
		end
	end
	if parse(UInt64, "0b$bits") & parse(UInt64, "0b10000") != 0
		reverse!(actions_order)
	end
	return actions_order
end
