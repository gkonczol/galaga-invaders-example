class Missile

  def initialize
    @missile_coordinates = []
  end

  def fire
    @missile_coordinates << [@x, @y - HEIGHT / 2]
  end

  def move
    @missile_coordinates.each do |missile|
      missile[1] -= 10
    end
  end
  
  def draw
    @missile_coordinates.each do |missile|

    end
  end

end