class Robot

  class CannotHealDeadBot < StandardError
  end

  class CannotAttackNonBots < StandardError
  end

  MAX_WEIGHT = 250
  DEFAULT_DAM = 5
  attr_reader :position, :items, :health 
  attr_accessor :equipped_weapon

  def initialize
    @position = [0,0]
    @items = []
    @health = 100
    @equipped_weapon = nil
  end

  def move_left
    @position[0] -= 1
  end

  def move_right
    @position[0] += 1
  end

  def move_up
    @position[1] += 1
  end

  def move_down
    @position[1] -= 1
  end

  def pick_up(item)
    @equipped_weapon = item if item.is_a?(Weapon)
    if (item.weight + items_weight) <= MAX_WEIGHT
    @items << item
    end
  end

  def items_weight    
    @items.inject(0){|sum, item| sum += item.weight }
  end

  def wound(dmg)
    if (@health - dmg) < 0
      @health = 0
    else
      @health -= dmg
    end
  end

  def heal(heal_points)
    heal!
    if(@health + heal_points) > 100
      @health = 100
    else
    @health += heal_points
    end
  end

  def attack(robot)
    attack!(robot)
    if @equipped_weapon
      equipped_weapon.hit(robot)
    else
      robot.wound(DEFAULT_DAM)
    end
  end

  def heal!
    raise CannotHealDeadBot if @health <= 0 
  end


  def attack!(robot)
    raise CannotAttackNonBots unless robot.is_a?(Robot)
  end
end








# if damage minus health is < 0
#   health = zero
#   otherwise
#   health -= dmg

# if attacking another robot
#   robot damage = defualt dam
#   robot damage -= health


