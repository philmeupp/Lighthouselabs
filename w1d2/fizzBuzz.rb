## Original code to refactor
###
# 1.upto(100) do |i|
#   if i % 5 == 0 && i % 3 == 0
#     puts "FizzBuzz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   else
#     puts i
#   end
# end

#############
#### create fizzbuzz method to accept parameters (first and last number)
####
# puts "enter first number "
# first_input = gets.chomp.to_i
# puts "enter second number "
# last_input = gets.chomp.to_i

# def fizzBuzz(first_input, last_input)
#   first_input.upto(last_input) do |i|
#     if i % 5 == 0 && i % 3 == 0
#       puts "FizzBuzz"
#     elsif i % 5 == 0
#       puts "Buzz"
#     elsif i % 3 == 0
#       puts "Fizz"
#     else
#       puts i
#     end
#   end
# end

# fizzBuzz(first_input, last_input)

#####
### "Think about other methods that can be implemented to 
###  further refactor this code and make it more readable. 
###  Remember that readability does not necessarily mean fewer lines of code."
#####

puts "enter first number "
first_input = gets.chomp.to_i
puts "enter second number "
last_input = gets.chomp.to_i

def fizzBuzz(first_input, last_input)
  first_input.upto(last_input) do |input|

    buzz = input if input % 5 == 0
    fizz = input if input % 3 == 0
    fizzBuzz = input if input % 5 == 0 && input % 3 == 0

    case input
      when buzz
        puts "Buzz"
      when fizz
        puts "Fizz"
      when fizzBuzz
        puts "FizzBuzz"
      else
        puts input
    end
  end
end

fizzBuzz(first_input, last_input)