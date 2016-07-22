require_relative 'player'
class Game
  attr_accessor :player1, :player2, :current_turn, :opponent, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
    @opponent = player2
  end

  def attack
    opponent.attacked
    switch_turns
  end

  def switch_turns
  @current_turn, @opponent = @opponent, @current_turn
  end
end
