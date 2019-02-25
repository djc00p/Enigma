class Enigma

  def encrypt(message, key, date)
    {
      encryption: Encryption.encrypt_message(message),
      key: key,
      date: date
    }
  end

  def decrypt(encrypted_message, key, date)

  end
end
