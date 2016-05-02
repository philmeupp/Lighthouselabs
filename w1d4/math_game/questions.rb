#Generates numbers and operators
class Questions
  attr_accessor :sum
  
  def generate_numbers
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = [:+, :-, :*, :/].sample
    @sum = @num1.send(@operator, @num2)
    puts "\tWhat is #{@num1} #{@operator} #{@num2} equal to?\n".light_magenta
    puts @sum
  end

  def sum
    @sum
  end
end

