require 'colorize'

def generate_numbers
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @operator = [:+, :-, :*, :/].sample
  @sum = @num1.send(@operator, @num2)
  puts "What is #{@num1} #{@operator} #{@num2} equal to? "
  puts  
  puts @sum
end

# def player_details
  @player_1_life = 3
  @player_2_life = 3
  @player_1_score = 0
  @player_2_score = 0
# end

def player_name
  puts "Input your names"
  print "Player 1: "
  name1 = gets.chomp
  print "Player 2: "
  name2 = gets.chomp
  @p1 = name1.cyan   
  @p2 = name2.yellow
end

# def restart?
#   puts "Do you want to play again? yes/no "
#   user_input = gets.chomp.lowercase
#     case user_input
#     when "yes" 
#       # do something
#     when "no"
#       puts "WORKED"
#       @gameover = true
#     end
# end

def start_game
  player_name
  @gameover = false
  while !@gameover 
      print "\n"
      generate_numbers
      print "#{@p1}: "
      user_input = gets.chomp
        if user_input.to_i == @sum  
          @player_1_score += 1
          puts "CORRECT! your score is #{@player_1_score}".blue
          print "\n"
        else
          @player_1_life -= 1
          puts "WRONG! you have #{@player_1_life} lives left".red
          print "\n" 
          if @player_1_life <= 0
            print "Restart? y/n  ".light_red
            user_input = gets.chomp.downcase
            if user_input == "n"
              return @gameover = true
            elsif user_input == "y"
              @player_2_life = 3
              @player_1_life = 3
              puts "The current score is:"
              puts "#{@p1}: #{@player_1_score}".cyan
              puts "#{@p2}: #{@player_2_score}".yellow
              puts "\n"
            end
          end
        end

        generate_numbers
        print "#{@p2}: "
        user_input = gets.chomp
        if user_input.to_i == @sum
          @player_2_score += 1
          puts "CORRECT! your score is #{@player_2_score}".blue
          print "\n"
        else
          @player_2_life -= 1
          puts "WRONG! you have #{@player_2_life} lives left".red
          print "\n"
          if @player_2_life <= 0
            print "Restart? y/n  ".light_red
            user_input = gets.chomp.downcase
            if user_input == "n"
              return @gameover = true
            elsif user_input == "y"
              @player_2_life = 3
              @player_1_life = 3
              puts "The current score is:"
              puts "#{@p1}: #{@player_1_score}".cyan
              puts "#{@p2}: #{@player_2_score}".yellow
              puts "\n"
            end
        end
      end
    end
  end



start_game