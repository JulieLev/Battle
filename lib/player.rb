class Player
  DEFAULT_HIT_POINTS = 60
attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HIT_POINTS
  end

  def attacked
    @hp -= (1 + rand(10))
  end
end
