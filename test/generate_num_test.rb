require 'minitest/autorun'
require 'minitest/pride'
require './lib/generate_num'
require 'pry'

class GenerateNumberTest < Minitest::Test
  def setup
    @generatenumber = GenerateNumber.new
  end

  def test_if_it_a_generate_a_number
    assert_instance_of String, @generatenumber.random_number_generator
    assert_equal 5, @generatenumber.random_number_generator.length
  end
end
