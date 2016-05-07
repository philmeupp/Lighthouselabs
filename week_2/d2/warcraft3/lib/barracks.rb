require 'pry'
# require 'byebug'
require_relative 'footman'

class Barracks

  attr_reader :food, :gold, :health_points, :lumber

  def initialize(food = 80, gold = 1000, health_points = 500, lumber = 500)
    @food = food  
    @gold = gold
    @health_points = health_points
    @lumber = lumber
  end

  def can_train_footman?
    self.food >= 2 && self.gold >= 135
  end

  def train_footman(gold = 135, food = 2)
    if can_train_footman?
    footman = Footman.new
    @gold -= gold
    @food -= food
    footman
    end
  end

  def can_train_peasant?
    self.food >= 5 && self.gold >= 90
  end

  def train_peasant(gold = 90, food = 5)
    if can_train_peasant?
      peasant = Peasant.new
      @gold -= gold
      @food -= food
      peasant
    end
  end

  def can_train_seigeEngine?
    self.gold >= 200 && self.lumber >= 60
  end

  def train_seigeEngine
    if can_train_seigeEngine?
    seigeEngine = SeigeEngine.new
    @gold -= 200
    @lumber -= 60
    end
  end

  def damage(attack_power)
    @health_points -= attack_power
  end



end
