require "minitest/autorun"
require_relative "random_pairs.rb"

class Random_pairs_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_array
        assert_equal([], random_pairs([]))
    end

	def test_4_pair
		assert_equal(4, random_pairs(["scott", "bob", "jill", "peggy", "billybob", "joe", "johnny", "sue"]).length)
	end

	def test_2_pairs
		assert_equal(2, random_pairs(["scott", "bob", "jack", "jill"]).length)
	end

	def test_2_pairs_with_odd_number_people
		assert_equal(2, random_pairs(["scott", "bob", "jack", "jill", "peggy"]).length)
	end

	def test_3_pairs_with_odd_number_people
		assert_equal(3, random_pairs(["scott", "bob", "jack", "jill", "peggy", "sue", "billybob"]).length)
	end

	def test_4_pairs_with_odd_number_people
		assert_equal(4, random_pairs(["scott", "bob", "jill", "peggy", "billybob", "joe", "johnny", "sue", "john"]).length)
	end

end