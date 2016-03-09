class SiegeEngine < Unit
attr_reader :gold, :lumber, :food

  def initialize
    super(400, 50)
    @gold = 200
    @lumber = 60
    @food = 3
  end
  def attack!(enemy)
    
    if enemy.is_a?(Barracks) || enemy.is_a?(SiegeEngine)
    new_attack_points = enemy.is_a?(Barracks) ? (attack_power * 2).ceil : attack_power
    enemy.damage(new_attack_points)
    end
  end


end