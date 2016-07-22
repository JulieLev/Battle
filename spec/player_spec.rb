require 'player'
describe 'Player' do
  subject(:player1) { Player.new("Player1") }
  subject(:player2) { Player.new("Player2") }

  describe '#name' do
    it 'has a name' do
      expect(player1.name).to eq "Player1"
    end
  end

  describe '#hit points (hp)' do
    it 'has 60 HP when created' do
      expect(player1.hp).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attacked' do
    it 'loses 10 HP when attacked' do
      expect{ player2.attacked }.to change { player2.hp }.by(-10)
    end
  end

end
