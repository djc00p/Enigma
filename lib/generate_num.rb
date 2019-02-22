class GenerateNumber
  def random_number_generator
    binding.pry
  random_number = rand(0..99999).to_s.rjust(5, "0")
  end
end
