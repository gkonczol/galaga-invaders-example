class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(craft)
    missile = Missile.new(craft.muzzle_location)
    missile.launch(craft.launch_speed)
    add(missile)
  end

end
