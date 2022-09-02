class StringCalculator
  DELIMETER_INPUT_REGEX = /(?<=\/\/)\W+(?=\n)/
  DELIMETER_PARSING_REGEX = /(?<=\[)[^\[\]]+(?=\])/

  def add(input_string)
    delimeter_string = input_string.slice(DELIMETER_INPUT_REGEX)
        
    if delimeter_string
      delimeter = parse_provided_delimeter(delimeter_string)
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

  private

  def parse_provided_delimeter(delimeter_string)
    if delimeter_string.length > 1
      compose_delimeter(delimeter_string)
    else
      delimeter_string
    end
  end

  def compose_delimeter(delimeter_string)
    delimeters = delimeter_string.scan(DELIMETER_PARSING_REGEX)
    delimeters = delimeters.map{|d| Regexp.escape(d) }
    /#{delimeters.join("|")}/
  end
end