module GenerateNumber
  def self.random_number_generator
  random_number = rand(0..99999).to_s.rjust(5, "0")
  end
end
