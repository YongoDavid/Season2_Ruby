def my_roman_numerals_converter(param_1)
    roman_mapping = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
    
    roman_numeral = ""
    
    roman_mapping.each do |value, numeral|
      while param_1 >= value
        roman_numeral += numeral
        param_1 -= value
      end
    end
    
    return roman_numeral
  end
  
#   # Test cases
#   puts my_roman_numerals_converter(1)   # Output: I
#   puts my_roman_numerals_converter(10)  # Output: X
#   puts my_roman_numerals_converter(7)   # Output: VII
#   puts my_roman_numerals_converter(1990)  # Output: MCMXC
#   puts my_roman_numerals_converter(2008)  # Output: MMVIII