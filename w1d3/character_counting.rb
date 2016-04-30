
def count_letters(str)
  results = Hash.new(0)
  str.delete!(" ").each_char do |letter|
    results[letter] += 1
  end    
    puts results
end

####
##return all the indices (positions) in the string where each character is found.
####
def count_letters(str)
## Created empty hash
  indices = {}
  ## take the string and split each element
  str.split("").each_with_index do |letter, i|
  ## if key is nill, create an empty array
    indices[letter] = [] if indices[letter].nil?
  ##push i into its array
    indices[letter] << i 
  end
  indices
end


puts count_letters("lighthouse in the house...")



