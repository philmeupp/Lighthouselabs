# # Find the maximum 
# def maximum(arr)
#   arr.max
# end

# # expect it to return 42 below
# result = maximum([2, 42, 22, 02])
# puts "max of 2, 42, 22, 02 is: #{result}"

# # expect it to return nil when empty array is passed in
# result = maximum([])
# puts "max on empty set is: #{result.inspect}"

# result = maximum([-23, 0, -3])
# puts "max of -23, 0, -3 is: #{result}"

# result = maximum([6])
# puts "max of just 6 is: #{result}"


def maximum(arr)
  #takes first element in array and assigns it to highest_value
  highest_value = arr.first
  #uses .each loop to iterate through array
  arr.each do |x| 
  #if x > is greater than highest value than assign x to highest value.
    if x > highest_value
      highest_value = x 
    end
  end
  #returns highest value
  highest_value
end


# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"

result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"

result = maximum([6])
puts "max of just 6 is: #{result}"