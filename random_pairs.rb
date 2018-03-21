def random_pairs(names)
	my_array = names.shuffle.each_slice(2).to_a 
	if my_array.length % 2 == 0
		my_array
	else
		my_array[my_array.length - 2] << my_array[my_array.length - 1]
		my_array[my_array.length - 2].flatten!
		my_array.pop
		my_array
	end
	results = ""
	my_array.each { |name|
		if name.include?(name[2])
			results << name[0] + ", " + name[1] + ", and " + name[2] + "<br>"
        else
            results << name[0] + ", " + name[1] + "<br>"
        end
	}
	results
end

print random_pairs(["hello", "bye", "scott", "ketchup"])