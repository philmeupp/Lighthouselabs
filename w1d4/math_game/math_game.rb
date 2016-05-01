def generate_numbers
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @operator = [:+, :-, :*, :/].sample
  @sum = @num1.send(@operator, @num2)
  puts "What is #{@num1} #{@operator} #{@num2} = ? "
  # puts @sum
end

# def player_details
  @player_1_life = 3
  @player_2_life = 3
  @player_1_score = 0
  @player_2_score = 0
# end

def player_name
  puts "input your names"
  print "Player 1: "
  name1 = gets.chomp
  print "Player 2: "
  name2 = gets.chomp
  @p1 = name1 
  @p2 = name2
end


def start_game
  player_name
  gameover = false
  while !gameover  
    print "\n"
    generate_numbers
    print "#{@p1}: "
    user_input = gets.chomp
    if user_input.to_i == @sum  
      @player_1_score += 1
      puts "correct your score is #{@player_1_score}"
      print "\n"
    else
      @player_1_life -= 1
      puts "wrong you have #{@player_1_life} lives left"
      print "\n"
      return gameover = true if @player_1_life == 0
    end

    generate_numbers
    print "#{@p2}: "
    user_input = gets.chomp
    if user_input.to_i == @sum
      @player_2_score += 1
      puts "correct your score is #{@player_2_score}"
      print "\n"
    else
      @player_2_life -= 1
      puts "wrong you have #{@player_2_life} lives left"
      print "\n"
      gameover = true if @player_2_life == 0
    end
  end
end


start_game