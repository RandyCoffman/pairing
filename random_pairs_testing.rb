require "minitest/autorun"
require_relative "random_pairs.rb"

class Random_pairs_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_array
        assert_equal([], random_pairs([]))
    end

end