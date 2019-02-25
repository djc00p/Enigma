
class Encryption
  def key
     {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    }
  end
  def character_set
    ("a".."z").to_a << " "
  end

  def self.encrypt_message(message)
    new_message = String.new
    key_values = key.values
    message.downcase.each_char do |letter|
      new_number = key_values.first
      new_message  << letter_shift(letter, new_number)
      key_values.rotate!
    end
    new_message
  end

  def letter_shift(letter, number)
    if character_set.index(letter).nil?
      letter
    else
      character_set[letter_index(letter,number)]
    end
  end

  def letter_index(letter,number)
    index = character_set.index(letter) + number
    while index >= character_set.length
      index
      index -= character_set.length
    end
    index
  end
end
