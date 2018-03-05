require "minitest/autorun"
require_relative "random_pairs.rb"

class Random_pairs_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_array
        assert_equal(Array, random_pairs([]).class)
    end

	def test_4_pair
		assert_equal(4, random_pairs(["scott", "bob", "jill", "peggy", "billybob", "joe", "johnny", "sue"]).size)
	end

	def test_2_pairs
		assert_equal(2, random_pairs(["scott", "bob", "jack", "jill"]).size)
	end

	def test_2_pairs_with_odd_number_people
		assert_equal(2, random_pairs(["scott", "bob", "jack", "jill", "peggy"]).size)
	end

	def test_3_pairs_with_odd_number_people
		assert_equal(3, random_pairs(["scott", "bob", "jack", "jill", "peggy", "sue", "billy"]).size)
	end

	def test_4_pairs_with_odd_number_people
		assert_equal(4, random_pairs(["scott", "bob", "jill", "peggy", "billybob", "joe", "johnny", "sue", "john"]).size)
	end

end