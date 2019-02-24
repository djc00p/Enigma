require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'
require './lib/key'
require 'pry'

class EncryptionTest < Minitest::Test
  def setup
    @encryption = Encryption.new
  end

  def test_existence_of
    assert_instance_of Encryption, @encryption
  end

  def test_character_set_exist
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
     "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
     assert_equal expected, @encryption.character_set
  end

  def test_change_of_letter_from_character_set_array
    assert_equal "hsk" , @encryption.letter_shift
  end

  def test_to_get_an_index_that_wont_be_greater_than_26
    assert_equal 8, @encryption.letter_index(" ", 34)
    assert_equal 24, @encryption.letter_index("m", 90)
    assert_equal 16, @encryption.letter_index("b", 15)
    assert_equal 12, @encryption.letter_index("h", 5)
  end
end
