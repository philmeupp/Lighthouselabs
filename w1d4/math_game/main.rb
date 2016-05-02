require 'colorize'
require_relative 'players'
require_relative 'questions'
###
## Simple Math game, takes in users input based on math questions generated.
###

# The main engine of the game
def start_game
  puts "\n\tInput your names".light_green
  print "Player 1: ".cyan
  name1 = gets.chomp.to_s
  @p1 = Players.new(name1)
  print "Player 2: ".yellow
  name2 = gets.chomp
  @p2 = Players.new(name2)
  @gameover = false
  while !@gameover 
    generate_numbers
    user_response        
  end
end


def game_over?
  print "\tRestart? y/n  ".light_red
  user_input = gets.chomp.downcase
  if user_input == "y"
    @p1.reset_life
    @p2.reset_life
    puts "\n\tThe current score is:"
    display_score
  else    
    return @gameover = true
  end
end

def user_response
  print "#{@p1.name}: "
  user_input = gets.chomp
  if user_input.to_i == @sum  
    @p1.plus_one_score
    puts  "\tCORRECT!".green 
    display_score
  else
    @p1.minus_player_life
    puts "\tWRONG! you have #{@p1.player_life} left"
    display_score
    game_over? if @p1.player_life <= 0
  end
  # I feel like the return below code is gross and redundant.. But without it, if player 1 choose to
  # discontinue after gameover?, code still runs through to player 2's response before actaully
  # returning true to start_game. 
  return @gameover == true if @gameover == true
  generate_numbers
  print "#{@p2.name}: "
  user_input = gets.chomp
  if user_input.to_i == @sum  
    @p2.plus_one_score
    puts  "\tCORRECT!".green 
    display_score
  else
    @p2.minus_player_life
    puts "\tWRONG! you have #{@p2.player_life} left"
    display_score
    game_over? if @p2.player_life <= 0
  end
end

def display_score
  puts "\t#{@p1.name}: #{@p1.score}".cyan 
  puts "\t#{@p2.name}: #{@p2.score}".yellow
end






start_game

