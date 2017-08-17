require "player"

feature Player do
  subject(:guy) { described_class.new("Guy") }
  subject(:freddie) { described_class.new("Freddie") }
  let(:game) { double :game, attack: freddie.reduce_hp }

  it "returns it name" do

   expect(guy.name).to eq "Guy"
  end
  it 'shows hit points' do
    expect(subject.hit_points).to eq 100
  end
  it 'damages the player' do
    game.attack
    expect(freddie.hit_points).to eq 90
  end


end
