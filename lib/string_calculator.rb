class StringCalculator
  
  def add(string)
    without_new_lines = string.gsub('\n', ',')
    if without_new_lines.include?(',')
      return sum_of(without_new_lines)
    else
      return without_new_lines.to_i if !without_new_lines.include?(',')
    end
  end

  private

  def sum_of(string)
    array_of_numbers = string.split(',').map { |n| n.to_i }
    sum = array_of_numbers.reduce(:+)
  end
end
