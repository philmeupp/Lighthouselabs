# It requires the other files/gems that it needs
# This is the main entrypoint into the program
require 'colorize'
require 'pry'
require './candidates'
require './filters'


# binding.pry

def run_program
over = false
  while !over
    print "\n"
    puts "COMMANDS:".red
    print "\n"
    puts "Find 1      - To find a candidate with an ID of 1".blue
    puts "Find all    - To list all candidates".blue
    puts "Qualified   - To list all qualified candidates".blue
    puts "Quit        - To exit program".blue
    print "\n"
    print "Input Command: " 
    user_input = gets.chomp.downcase

    case user_input
    when "find 1"
      print "\n" 
      puts find(9)
    when "find all"
      print "\n" 
      find_all(@candidates)
    when "qualified"
      print "\n" 
      puts print_qualified_candidates(@candidates)
    when "quit"
      print "\n" 
      puts "Thank you, have a great day!"
      over = true
    else
      print "\n" 
      puts "Invalid Command"
    end
  end
end

run_program



# Your test code can go here


# puts find(9)
# puts find(2)
# puts experienced?(0)
# puts experienced?(1)
# puts experienced?(2)

# puts bilingual?(0)
# puts bilingual?(2)
# puts @candidates[0][:date_applied] 
# puts applied_recent?(0)
# puts 30.day.ago.to_date

# puts of_age?(0)
# puts of_age?(1)
# puts of_age?(2)
# puts of_age?(6)

# puts @candidates[0][:years_of_experience]
# q = qualified_candidates(@candidates)
# puts order_by_qualifications(@candidates)

# puts find_all(@candidates)
# puts print_qualified_candidates(@candidates)
# return_all_qualified(@candidates)