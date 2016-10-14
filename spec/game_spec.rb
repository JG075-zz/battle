require 'game'
require 'player'

describe Game do
  # let(:player1) { double :player1 }
  # let(:player2) { double :player2 }
  subject(:game) { described_class.new(Player.new("A"),Player.new("B"))}

  # before :each do
  #   allow(player1).to receive(:hitpoints).and_return(10)
  #   allow(player2).to receive(:hitpoints).and_return(10)
  # end

  before :each do
    game.player_1.hitpoints = 10
    game.player_2.hitpoints = 10
  end

  it "won't deduct health if current target health is <= 0"  do
    subject.attack
    expect(game.current_target.hitpoints).to eq 0
  end

  # xit "assigns a winner" do
  #     subject.attack
  #     allow(game.current_target).to receive(:hitpoints).and_return(0)
  #     expect(game.winning_player).to eq game.current_player
  # end


end
