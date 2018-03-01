require "minitest/autorun"
require_relative "random_pairs.rb"

class Random_pairs_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_array
        assert_equal([], random_pairs([]))
    end

	def test_1_pair
		assert_equal(1, random_pairs(["scott", "bob"]).length)
	end

	def test_2_pairs
		assert_equal(2, random_pairs(["scott", "bob", "jack", "jill"]).length)
	end

end