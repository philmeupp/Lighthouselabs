#Method when inputted a number it will convert it to roman numberals.
#

def to_roman(num)
  roman_numerals = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  
  #creates empty string
  results = ""
  #loops through roman hash
  roman_numerals.each do |number, symbol|
      #takes the inputted num and divides accordingly       
      count = (num / number).floor
      #pushes into results
      results << (symbol * count)
      num = num % number
  end
  results
end

## will run true 
puts to_roman(1) == "I"
puts to_roman(3) == "III"
puts to_roman(6) == "VI"
puts to_roman(4010) == "MMMMX"
## will run false
puts to_roman(543) == "CCXXXXI"
puts to_roman(76) == "XXXIIII"

######
puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_roman(4)}"
puts "9     | IX       | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCDLIII  | #{to_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_roman(1646)}"




