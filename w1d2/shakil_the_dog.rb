# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic

####
##First attempt at method.
####
def shakil_the_dog
  puts "input command "
  dog_stays = true
    while dog_stays
    input = gets.chomp.downcase
    case input
    when "go away"
      dog_stays = false
      puts "'dog runs'"
    when /treat/ 
      puts "waits for treat"  
    when "woof" 
      puts "WOOF! WOOF! WOOF!"
    when "shakil stop"
      puts "'Shakil stops barking'"
    when "meow"
      puts "woof, woof, woof, woof, woof"
    else
      puts "woof"
    end
  end
end


#####
### Tried refactored make it more readable. Did it work? -- Sort of.. I still feel like
### I can improve on it.
####


def shakil_the_dog
  puts "Commands: 'meow', 'woof', 'treat', 'shakil stop', or 'go away'"
  puts "Enter command "
  dog_stays = true
  while dog_stays
    input = gets.chomp.downcase
    case input
    when "go away" then dog_stays = false
    when /treat/ then puts "waits for treat"  
    when "woof"  then puts "WOOF! WOOF! WOOF!"
    when "shakil stop" then puts "'Shakil stops barking'"
    when "meow" then puts "woof, woof, woof, woof, woof"
    else
      puts "woof"
    end
  end
end
 
# Run our method
shakil_the_dog


  


