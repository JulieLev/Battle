require_relative 'player'
class Game
  attr_reader :player1, :player2, :current_turn, :opponent, :game_over

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
    @opponent = player2
    @game_over = false
  end

  def attack
    opponent.attacked
    switch_turns
  end

  def switch_turns
    @current_turn, @opponent = @opponent, @current_turn
  end

  def loser
    @player1 # Obviously needs real code here!
  end

  def game_over?
    @player1.hp || @player2.hp <= 0
  end
end
