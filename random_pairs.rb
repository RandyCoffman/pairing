def random_pairs(names)
	sliced_pairs = names.shuffle.each_slice(2).to_a
    if names.length % 2 == 0
    else
      odd_num_names = sliced_pairs.pop
      odd_num_names = odd_num_names[0]
      sliced_pairs[0] << odd_num_names
    end
    sliced_pairs
end