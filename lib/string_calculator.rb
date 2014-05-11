class StringCalculator
  def self.add(string)
    if string.include?(',')
      array_of_numbers = string.split(',').map { |n| n.to_i }
      sum = array_of_numbers.reduce(:+)
      return sum
    else
      return string.to_i if !string.include?(',')
    end
  end
end
