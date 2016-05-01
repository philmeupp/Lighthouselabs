require 'colorize'
###
## Simple Math game, takes in users input based on math questions generated.
###

  @player_1_life = 3
  @player_2_life = 3
  @player_1_score = 0
  @player_2_score = 0

#Method gets players names
def player_name
  puts "\n\tInput your names".light_green
  print "Player 1: ".cyan
  name1 = gets.chomp
  print "Player 2: ".yellow
  name2 = gets.chomp
  @p1 = name1.cyan   
  @p2 = name2.yellow
end

#Generates numbers and operators
def generate_numbers
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @operator = [:+, :-, :*, :/].sample
  @sum = @num1.send(@operator, @num2)
  puts "\tWhat is #{@num1} #{@operator} #{@num2} equal to?\n".light_magenta
  
end

# accepts user input to check whether to continue. Not sure if method name should end 
# in '?' as the 'else' returns a boolean but the 'if' doesnt explicitly return anything.
def game_over?
  print "\tRestart? y/n  ".light_red
  user_input = gets.chomp.downcase
  if user_input == "y"
    @player_2_life = 3
    @player_1_life = 3
    puts "\n\tThe current score is:"
    display_score
  else    
    return @gameover = true
  end
end

#Takes in users input and compares to the sum, 
#Method also keeps track of players lives and score.
def user_response
  print "#{@p1}: "
  user_input = gets.chomp
  if user_input.to_i == @sum  
    @player_1_score += 1
    puts  "\tCORRECT!".green 
    display_score
  else
    @player_1_life -= 1
    puts "\tWRONG! you have #{@player_1_life} lives left".red
    display_score
    game_over? if @player_1_life <= 0
  end
  # I feel like the return below code is gross and redundant.. But without it, if player 1 choose to
  # discontinue after gameover?, code still runs through to player 2's response before actaully
  # returning true to start_game. 
  return @gameover == true if @gameover == true
  generate_numbers
  print "#{@p2}: "
  user_input = gets.chomp
  if user_input.to_i == @sum
    @player_2_score += 1
    puts "\tCORRECT!".green
    display_score
  else
    @player_2_life -= 1
    puts "\tWRONG! you have #{@player_2_life} lives left".red
    display_score
    game_over? if @player_2_life <= 0
  end
end

#Prints score
def display_score
  puts "\t#{@p1}: #{@player_1_score}".cyan 
  puts "\t#{@p2}: #{@player_2_score}".yellow
end


# The main engine of the game
def start_game
  player_name
  @gameover = false
  while !@gameover 
    generate_numbers
    user_response        
  end
end


start_game

