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
      A_key: 02,
      B_key: 27,
      C_key: 71,
      D_key: 15
    }
    assert_instance_of Integer, @key.keys[:A_key]
    assert_instance_of Integer, @key.keys[:B_key]
    assert_instance_of Integer, @key.keys[:C_key]
    assert_instance_of Integer, @key.keys[:D_key]
  end

  def test_getting_squared_value_of_the_date
    assert_instance_of String, @key.date_squared
  end

  def test_offset_values_are_set_as_the_last_four_of_date_squarred
    expected = {
      A_offset: 1,
      B_offset: 0,
      C_offset: 2,
      D_offset: 5
    }
    assert_instance_of Integer, @key.offsets[:A_offset]
    assert_instance_of Integer, @key.offsets[:B_offset]
    assert_instance_of Integer, @key.offsets[:C_offset]
    assert_instance_of Integer, @key.offsets[:D_offset]
  end

  def test_final_shifts_for_encryption
    expected = {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    }
    assert_instance_of Integer, @key.final_shifts[:A]
    assert_instance_of Integer, @key.final_shifts[:B]
    assert_instance_of Integer, @key.final_shifts[:C]
    assert_instance_of Integer, @key.final_shifts[:D]
  end
end
