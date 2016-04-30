# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'pry'



def find(id)
  # @candidates.each do |x| 
  #   return id if x[:id] == id
  # end
  @candidates.detect{|candidate| candidate[:id] == id}
end

# binding.pry
def experienced?(candidate)
  @candidates[candidate][:years_of_experience] >= 2 ? true : false
end



def git_points?(candidate)
  @candidates[candidate][:github_points] >= 100 ? true : false
end

def bilingual?(candidate)
  (@candidates[candidate][:languages] & ['Python', 'Ruby']).any?     
 # @candidates[candidate][:languages].any?{|lang| ['Python', 'Ruby'].include? lang }
end

def applied_recent?(candidate)
# # if date applied is greater than 15 days ago to date return true
  @candidates[candidate][:date_applied] > 15.day.ago.to_date ? true : false

  

end

def of_age?
  true
end


def qualified_candidates

end




 # Student Notes *
 # Ampersand can be used to 'cast' any object to a block. 
 #
 # " When you use & (ampersand) in front of the last variable 
 #   in a method call, you’re saying that what’s passed in shouldn’t
 #   be treated as an object, but treated like a piece of code – a proc. "
 #
 # (x).day.ago.to_datepretty handy.
 


