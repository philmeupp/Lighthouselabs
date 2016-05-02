
class Players

  attr_accessor :name

  # :p1, :p2, :player_1_life, :player_2_life, :player_1_score, :player_2_score
  
  def initialize(name)
    @name = name
    @player_lives = 3
    @player_score = 0
  end

  #Getters
  def player_life
    @player_lives
  end

  def score
    @player_score
  end

  def name
    @name
  end

  #Setters
  def minus_player_score
    @player_score -= 1
  end

  def minus_player_life
    @player_lives -= 1
  end

  def plus_one_score
    @player_score += 1
  end

  def reset_life
    @player_lives += 3
  end

end

# player = Players.new("phil")
# puts player.inspect
# puts phil.initialize