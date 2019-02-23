class Encryption
  def character_set
    ("a".."z").to_a << " "
  end

  def letter_shift
    number = 4
    letter = "a"
    character_set[character_set.index(letter)+number]
  end
end
