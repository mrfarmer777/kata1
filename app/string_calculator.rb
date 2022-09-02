class StringCalculator
  delimiter_INPUT_REGEX = /(?<=\/\/)\W+(?=\n)/
  delimiter_PARSING_REGEX = /(?<=\[)[^\[\]]+(?=\])/

  def add(input_string)
    delimiter_string = input_string.slice(delimiter_INPUT_REGEX)
        
    if delimiter_string
      delimiter = parse_provided_delimiter(delimiter_string)
      addend_string = input_string.split("\n")[1]
    else
      addend_string = input_string
      delimiter = /[\n,]/
    end
      
    addends = addend_string.split(delimiter)    

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

  def parse_provided_delimiter(delimiter_string)
    if delimiter_string.length > 1
      compose_delimiter(delimiter_string)
    else
      delimiter_string
    end
  end

  def compose_delimiter(delimiter_string)
    delimiters = delimiter_string.scan(delimiter_PARSING_REGEX)
    delimiters = delimiters.map{|d| Regexp.escape(d) }
    /#{delimiters.join("|")}/
  end
end