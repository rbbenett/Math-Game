class Player

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def get_name
    @name
  end

  def get_lives
    @lives
  end
end

p1 = Player.new("Player 1", 3)
p2 = Player.new("Player 2", 3)

@p1Name = p1.get_name
@p2Name = p2.get_name
@p1Lives = p1.get_lives
@p2Lives = p2.get_lives
