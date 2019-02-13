# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

require_relative 'missile'

class Ship

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
    @missile = Missile.new
  end

  def move_left(amount)
    @x -= amount
  end

  def move_right(amount)
    @x += amount
  end
  
  def fire_missile
    missile.fire
  end
  
  def move_missiles
    missile.move
  end

  def draw
    # Ignore this
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers? A better way to write programs.
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later). True
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
5. How does applying SRP naturally lead to good design? When classes and methods only do one thing, there is less coupling.
=end
