class Barracks 

  attr_reader :gold, :food,:health_points, :lumber

  def initialize (health_points = 500, gold= 1000, food = 80, lumber=500)
    @health_points = health_points
    @gold = gold
    @food = food
    @lumber = lumber
  end

  def can_train_footman? 
    gold >= 135 && food >= 2
  end
  def train_footman 
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
     end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end
  def train_peasant  
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end       
  end 
    def damage(attack_power)
    @health_points -= attack_power
  end

end

