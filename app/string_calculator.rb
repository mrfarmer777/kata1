class StringCalculator
  def add(input_string)
    addends = input_string.split(",")
    total = 0
    addends.each{ |n| total += n.to_i }
    total
  end
end