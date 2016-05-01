# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

# def find 

# end
## Your test code can go here

# puts find(9)
# puts experienced?(0)
# puts experienced?(1)
# puts experienced?(2)

 # puts bilingual?(0)
 # puts  bilingual?(2)
 # # puts find(2)
# puts @candidates[0][:date_applied] 
# puts applied_recent?(0)
# puts 30.day.ago.to_date

# puts of_age?(0)
# puts of_age?(1)
# puts of_age?(2)
# puts of_age?(6)

# binding.pry
# puts @candidates[0][:years_of_experience]
q = qualified_candidates(@candidates)
binding.pry


