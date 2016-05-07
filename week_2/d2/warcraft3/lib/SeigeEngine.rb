
class SeigeEngine < Unit

  attr_reader :attack_power, :health_points

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.is_a?(Barracks)
      enemy.damage((attack_power * 2)
    elsif enemy.is_a?(SeigeEngine)
      super(enemy)
    end
  end
end


