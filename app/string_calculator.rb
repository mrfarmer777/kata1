class StringCalculator
  def add(input_string)
    provided_delimeter = input_string.slice(/(?<=\/\/)\W(?=\n)/)
        
    if provided_delimeter
      addend_string = input_string
      addends = addend_string.split(provided_delimeter)
    else
      addends = input_string.split(/[\n,]/)
    end

    addends.reduce(0){ |total, n| total + n.to_i }    
  end
end