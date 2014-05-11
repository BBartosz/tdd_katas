class StringCalculator
  def add(string)
    if string.include?(',')
      return sum_of(string)
    else
      return string.to_i if !string.include?(',')
    end
  end

  private

  def sum_of(string)
    array_of_numbers = string.split(',').map { |n| n.to_i }
    sum = array_of_numbers.reduce(:+)
  end
end
