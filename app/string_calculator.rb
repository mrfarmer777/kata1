class StringCalculator
  def add(input_string)
    provided_delimeter = input_string.slice(/(?<=\/\/)\W+(?=\n)/)
        
    if provided_delimeter
      addend_string = input_string
      addends = addend_string.split(provided_delimeter)
    else
      addends = input_string.split(/[\n,]/)
    end

    addends.reduce(0) do |total, n| 
      number = n.to_i
      if number >= 0
        number <= 1000 ? total + number : total
      else
        raise Exception.new("negatives not allowed")
      end
    end    
  end
end