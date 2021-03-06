module Encryption

  def characters
    ("a".."z").to_a << " "
  end

  def encrypt_message(message)
    key_values = key.values
    new_message = String.new
    message.downcase.each_char do |letter|
      new_number = key_values.first
      new_message  << letter_shift(letter, new_number)
      characters.index(letter).nil? ? key_values.rotate(0) : key_values.rotate!
    end
    new_message
  end

  def letter_shift(letter, number)
    if characters.index(letter).nil?
      letter
    else
      characters.rotate(letter_index(letter,number)).first
    end
  end

  def letter_index(letter,number)
   characters.index(letter) + number
  end
end
