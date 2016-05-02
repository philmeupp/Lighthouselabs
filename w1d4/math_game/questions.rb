#Generates numbers and operators

# class Questions


def generate_numbers
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @operator = [:+, :-, :*, :/].sample
  @sum = @num1.send(@operator, @num2)
  puts "\tWhat is #{@num1} #{@operator} #{@num2} equal to?\n".light_magenta
end



  #Takes in users input and compares to the sum, 
  #Method also keeps track of players lives and score.




# end