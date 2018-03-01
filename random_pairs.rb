def random_pairs(names)
	pairs = names.shuffle.each_slice(2).to_a
	if pairs.length % 2 == 1
		pairs.pop
		pairs
	else 
		pairs
	end
	pairs
end

