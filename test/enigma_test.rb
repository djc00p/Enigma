require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require 'pry'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_existence_of
    assert_instance_of Enigma, @enigma
  end

  # def test_it_has_ecriptiion_with_a_hash
  #   expected = {
  #   encryption: "keder ohulw",
  #   key: "02715",
  #   date: "040895"
  # }
  #   assert_equal expected, @enigma.encrypt
  # end
end
