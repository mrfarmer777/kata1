# kata1
This is my implementation of a basic String Calculator code kata, as outlined [here](https://osherove.com/tdd-kata-1/).

### Installation
Simply clone this repository to your local machine, `cd` into the repositor and install with:
```bundle install```

### Running specs
This project uses RSpec, and the specs can be run with:
```rspec```

or if you prefer to be specific:
```rspec spec/string_calculator_spec.rb```

### Usage
This project includes one class, `StringCalculator`. This class has one method, `#add` which takes in a single string as input. Any positive integers < 1000 that are comma- or new-line-separated will be added by this method. 

#### Custom Delimiters
You can provide custom delimiters to the `#add` method using the format as shown in the following example:
```//;\n1;2;3```

Or you can provide multiple delimiters of various lengths in the format shown in this example:
```//[**][&&&]\n1**2&&&3```

