def generate_numbers
  @num1 = rand(1..20)
  @num2 = rand(1..20)
  @sum = @num1 + @num2
  puts @sum
end

# def player_details
  @player_1_life = 3
  @player_2_life = 3
  @player_1_score = 0
  @player_2_score = 0
# end


def start_game
gameover = false
  while !gameover  
    generate_numbers
    puts "Player 1: what is #{@num1} + #{@num2} ?"
    user_input = gets.chomp
    if user_input.to_i == @sum
      @player_1_score += 1
      puts "correct your score is #{@player_1_score}"
    else
      @player_1_life -= 1
      puts "wrong you have #{@player_1_life} lives left"
      gameover = true if @player_1_life == 0
    end
    generate_numbers
    puts "Player 2: what is #{@num1} + #{@num2} ?"
    user_input = gets.chomp
    if user_input.to_i == @sum
      @player_2_score += 1
      puts "correct your score is #{@player_2_score}"
    else
      @player_2_life -= 1
      puts "wrong you have #{@player_2_life} lives left"
      gameover = true if @player_2_life == 0
    end
  end
end

# puts generate_numbers

start_game