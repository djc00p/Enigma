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
    assert_equal expected, @key.keys
  end
  def test_getting_squared_value_of_the_date
    assert_equal 1672401025, @key.date_squared

  end

end
