class StringCalculator
  def add(input_string)
    delimeter_string = input_string.slice(/(?<=\/\/)\W+(?=\n)/)
        
    if delimeter_string
      if delimeter_string.length > 1
        delimeters = delimeter_string.scan(/(?<=\[)[^\[\]]+(?=\])/)
        delimeters = delimeters.map{|d| Regexp.escape(d) }
        delimeter = /#{delimeters.join("|")}/
      else
        delimeter = delimeter_string
      end
      addend_string = input_string.split("\n")[1]
    else
      addend_string = input_string
      delimeter = /[\n,]/
    end
      
    addends = addend_string.split(delimeter)    

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