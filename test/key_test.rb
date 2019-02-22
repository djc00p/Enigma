require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_existence_of
    assert_instance_of Key, @key
  end

  def test_keys_are_seperated_from_generated_number
    expected = {
      A_key: Integer,
      B_key: 27,
      C_key: 71,
      D_key: 15
    }
    assert_equal expected, @key.keys
  end

  def test_getting_squared_value_of_the_date
    assert_equal "1672401025", @key.date_squared
  end

  def test_offset_values_are_set_as_the_last_four_of_date_squarred
    expected = {
      A_offset: 1,
      B_offset: 0,
      C_offset: 2,
      D_offset: 5
    }
    assert_equal expected, @key.offsets
  end

  def test_final_shifts_for_encryption
    expected = {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    }
    assert_equal expected, @key.final_shifts
  end
end
