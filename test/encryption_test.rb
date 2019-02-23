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
    assert_equal "e" , @encryption.letter_shift
  end
end
