@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

### Task 1 ###

@states[:WA] = "Washington"
@states[:TX] = "Texas"

# puts states
### Task 2 ###


@cities = {
 WA:['Seattle', 'Tacoma'],
 OR:['Grant', 'Bay'],
 FL:['Miami', 'Tallahassee'],
 CA:['Los Angeles', 'Weed'],
 NY:['New York City', 'Syracuse'],
 MI:['Detroit', 'Saginaw']
}

### Task 3 ###

def describe_state(code)
  puts "#{code} is for #{@states[code]}. It has 2 major cities: #{@cities[code].join(', ')}. "
  
end

puts describe_state(:FL)

### Task 4 ###

@taxes = { 
  WA: 1.14,
  OR: 1.04,
  FL: 1.05,
  CA: 1.17,
  NY: 1.18,
  MI: 1.09,
}

# puts @taxes[:WA].is_a?(Fixnum)

### Task 5 ###

def calculate_tax(code, dollar)
  sum = @taxes[code] * dollar
  puts sum.round(2)
end

puts calculate_tax(:CA, 100)

### Task 6 ###

def find_state_for_city(city)
  state = ""
  @cities.each { |code, city_arr| state = code if city_arr.include?(city) }
  puts "The state of #{city} is #{state}"

end

find_state_for_city("Seattle")




