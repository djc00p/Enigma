class Decryption

  def key
     {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    }
  end
  def characters
    ("a".."z").to_a << " "
  end
  def decrypt_message(message)
    new_message = String.new
    key_values = key.values
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
    characters.index(letter) - number
  end
end
