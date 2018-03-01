def random_pairs(names)
	shuffled_pairs = names.shuffle
	sliced_pairs = shuffled_pairs.each_slice(2).to_a 
	if shuffled_pairs.length % 2 == 1
		sliced_pairs[-2].push(sliced_pairs.pop.join)
		sliced_pairs
	else
		sliced_pairs
	end
end
