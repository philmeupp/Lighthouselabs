# require_relative 'footman'

class Unit 

  attr_reader :attack_power, :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    unless alive?(enemy) 
        if enemy.is_a?(Barracks)
          enemy.damage((@attack_power/2).ceil)
        else
          enemy.damage(@attack_power)
        end
    end
  end

  def damage(attack_power)
    @health_points -= attack_power  
  end

  def is_dead?
    health_points <= 0
    #raise exeption error?
  end

  def alive?(enemy)
    is_dead? || enemy.is_dead?
  end
end

# def attacking_building(Barracks)
