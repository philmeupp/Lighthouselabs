# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'pry'

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





 # Student Notes *
 # Ampersand can be used to 'cast' any object to a block. 
 #
 # " When you use & (ampersand) in front of the last variable 
 #   in a method call, you’re saying that what’s passed in shouldn’t
 #   be treated as an object, but treated like a piece of code – a proc. "
 #
 # (x).day.ago.to_date pretty handy.
 


