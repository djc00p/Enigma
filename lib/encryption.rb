class Encryption
  def character_set
    ("a".."z").to_a << " "
  end

  def letter_shift(message, number)
    new_message = ""
    message.downcase.each_char do |letter|
      if character_set.index(letter).nil?
        new_message << letter
      else
        new_message << character_set[letter_index(letter,number)]
      end
    end
    return new_message
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
