require 'pry'
# require 'byebug'
require_relative 'footman'

class Barracks

  attr_accessor :food, :gold

  def initialize(food = 80, gold = 1000)
    @food = food
    @gold = gold
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

end
