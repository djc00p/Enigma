require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryption'
require './lib/decryption'
require './lib/key'
require 'pry'

class DecryptionTest < Minitest::Test
  def setup
    @decryption = Decryption.new
    @key = Key.new
  end
  def test_character_set_exist
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @decryption.characters
  end

  def test_change_of_letter_from_character_set_array
    assert_equal "this is awesome" , @decryption.decrypt_message("whalciktdwxlrmx")
  end

  def test_it_will_keep_character_not_in_character_set
    assert_equal "hello, i'm deonte! 58" , @decryption.decrypt_message("keder, a'fcdxhqtx!t58")
  end

  def test_to_get_an_index_that_wont_be_greater_than_26
    assert_equal -8, @decryption.letter_index(" ", 34)
    assert_equal 2, @decryption.letter_index("h", 5)
    assert_equal -65, @decryption.letter_index("a", 65)
  end
end
