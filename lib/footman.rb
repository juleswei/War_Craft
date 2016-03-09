# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_reader :health_points, :attack_power 

  def initialize 
    super(60, 10)
  end

  def attack!(enemy)

    new_attack_points = enemy.is_a?(Barracks) ? (attack_power / 2).ceil : attack_power
    enemy.damage(new_attack_points)
  end

end

