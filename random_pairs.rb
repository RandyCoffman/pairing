def random_pairs(names)
	pairs = names.shuffle.each_slice(2).to_a
	pairs
end

