class Encryption
  def character_set
    ("a".."z").to_a << " "
  end

  def letter_shift
    number = 4
    words = "This is awesome"
    new_word = ""
    words.downcase.each_char do |letter|
    new_word << character_set[letter_index(letter,number)]
    end
    return new_word
  end

  def letter_index(letter,number)
   index = character_set.index(letter) + number
   while index > 26
     index
     index -= 26
   end
   index
 end
end
