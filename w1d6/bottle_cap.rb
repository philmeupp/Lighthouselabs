
require 'colorize'

@total_bots = 0
@bots = 0
@bot_caps = 0
@free_bots = 0
@free_caps = 0
@caps = 0
BOT_COST = 2


def purchase_bots(money)
  bots_bought = money / BOT_COST
  @caps = @bots = @total_bots = bots_bought
  freebies
  display_stats(money, bots_bought)
end 

def freebies
  # adding total of free bots +  adding to total freebies
  freebies_bots = @bots / 2
  freebies_caps = @caps / 4
  @free_bots += freebies_bots
  @free_caps += freebies_caps
  total_freebies = freebies_caps + freebies_bots
  #calculating remainder
  @caps = @caps % 4
  @bots = @bots % 2
  @bots += total_freebies
  @caps += total_freebies
  @total_bots += total_freebies
end

def display_stats(money, bots_bought)
  puts "You have spent: $#{money}"
  puts "Bottles purchased: #{bots_bought}"
  puts "Total bottles: #{@total_bots}"
  puts "Total of free bottles from bottles: #{@free_bots}"
  puts "Total of free bottles from caps: #{@free_caps}"
  puts "You can further reedeem #{@caps} caps"
  puts "You can further redeem #{@bots} bottles"
end

def run_repl
  over = false
  while !over
    puts "Enter amount you would like to spend".green
    puts "\tEnter 'quit' to stop".red
    user_input = gets.chomp
    if user_input.downcase == 'quit'
      over = true
    else
      purchase_bots(user_input.to_i)
    end
  end
end


run_repl