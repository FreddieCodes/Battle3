require "player"

feature Player do
  it "returns it name" do
   player = Player.new("Guy")
   expect(player.name).to eq "Guy"
  end
end
