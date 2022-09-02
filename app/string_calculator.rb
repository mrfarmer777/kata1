class StringCalculator
  def add(input_string)
    addends = input_string.split(/[\n,]/)
    addends.reduce(0){ |total, n| total + n.to_i }    
  end
end