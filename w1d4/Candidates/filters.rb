# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'pry'
require 'colorize'

def find(id)
  @candidates.detect{|candidate| candidate[:id] == id}
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2 ? true : false
end

def git_points?(candidate)
  candidate[:github_points] >= 100 ? true : false
end

def bilingual?(candidate)
 candidate[:languages].include?('Ruby' || 'Python')
 # (candidate[:languages] & ['Python', 'Ruby']).any?     
 # candidate[:languages].any?{|lang| ['Python', 'Ruby'].include? lang }

end

def applied_recent?(candidate)
  candidate[:date_applied] > 15.day.ago.to_date ? true : false
end

def of_age?(candidate)
  candidate[:age] > 18 ? true : false
end


def qualified_candidates(candidates = [])
  candidates.select do |candidate|
      experienced?(candidate) && 
      git_points?(candidate) && 
      bilingual?(candidate) && 
      applied_recent?(candidate) &&  
      of_age?(candidate)
    end
  end

def order_by_qualifications(candidates = [])
  #candidates.sort { |candidate| candidate[:years_of_experience] && candidate[:git_points] }
  candidates.sort do |candidate1, candidate2| 
    if candidate1[:years_of_experience] == candidate2[:years_of_experience]
      candidate2[:github_points] <=> candidate1[:github_points]
    else
      candidate2[:years_of_experience] <=> candidate1[:years_of_experience]
    end
  end
end

def find_all(candidates = [])
  candidates.each do |candidate| 
     candidate.map {|key, val| puts "#{key}:".red + "#{val}".yellow}
     print "\n"
  end
  return
end

def return_all_qualified(candidates = [])
    order_by_qualifications(candidates).each do |candidate|
      candidate.map {|key, val| puts "#{key}:".green + "#{val}".blue}
    end
  return
end

def print_qualified_candidates(candidates= [])
  qual = qualified_candidates(candidates)
    order_by_qualifications(qual).each do |candidate|
    candidate.map {|key, val| puts "#{key}:".green  + "#{val}".blue}
    print "\n" 
    end
  return
end










##################
# Personal Notes 
#  
#   & (Ampersand) can be used to 'cast' any object to a block. 
#
# " When you use & (ampersand) in front of the last variable 
#   in a method call, you’re saying that what’s passed in shouldn’t
#   be treated as an object, but treated like a piece of code – a proc. "
#
#  (x).day.ago.to_date pretty handy.
#
#  <=> (spaceship operator) AKA combined comparable operator
#
#   " Basically instead of returning 1 (true) or 0 (false) depending on whether 
#     the arguments are equal or unequal, the spaceship operator will return 
#     1, 0, or −1 depending on the value of the left argument relative to the right argument."  
#
# => Needs some major refactoring. "Print_Format" perhaps.
#
#
#

