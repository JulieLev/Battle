require_relative 'player'
class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def attack
    case @turn
      when 1
        opponent = @player2
      when 2
        opponent = @player1
    end
    opponent.attacked
    switch_turn
  end

  def switch_turn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end

end
