require 'game'

describe 'Game' do

subject(:game) { Game.new(player1, player2) }
let(:player1) { double :player, hp: 60, attacked: 50 }
let(:player2) { double :player, hp: 60 }

describe '#initialize' do
  it "returns player1" do
    expect(game.player1).to eq(player1)
  end

  it "returns player2" do
    expect(game.player2).to eq(player2)
  end
end

describe '#attack' do
  it "causes the opponent to be attacked" do
    expect(player2).to receive(:attacked)
    game.attack
  end

  it "attacks the opponent" do
    #expect(player2).to receive(:attacked)
    #game.attack(player2)
    expect(game).to respond_to (:attack)
  end
end

describe "#current_turn" do
  it "starts as Player 1" do
    expect(game.current_turn).to eq player1
  end
end

describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end

    it 'creates an opponent' do
      game.switch_turns
      expect(game.opponent).to eq player1
    end
  end

  # describe '#game_over?' do
  #   it 'returns false if no-one is at 0HP' do
  #     expect(game.game_over?).to be false
  #   end
  #
  #   it 'returns true if at least one player is at 0HP' do
  #     expect(finished_game.game_over?).to be true
  #   end
  # end

  # describe '#loser' do
  #   it 'returns a player on less than 0HP' do
  #     expect(finished_game.loser).to eq dead_player
  #   end
  # end

end
