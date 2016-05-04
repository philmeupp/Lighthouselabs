# http://classic.battle.net/war3/human/units/footman.shtml
require 'pry'

class Footman < Unit

  attr_reader :attack_power, :health_points 
  # attr_writer :damage

  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(attack_power)
    @health_points -= attack_power
  end
  
end