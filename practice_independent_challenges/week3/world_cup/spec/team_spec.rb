require './lib/player'
require './lib/team'

RSpec.describe Player do
  before(:each) do
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
    @team = Team.new("France")
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  
  end

  it "exists" do
    expect(@team).to be_instance_of(Team)
  end

  it "can be eliminated" do
    expect(@team.country).to eq("France")
    expect(@team.eliminated?).to eq(false)
    @team.eliminated = true
    expect(@team.eliminated?).to eq(true)
  end

  it "can take team players" do
    expect(@team.players).to eq([])
    @team.add_player(@mbappe)
    @team.add_player(@pogba) 
    expect(@team.players).to eq([@mbappe, @pogba])
  end

  it "can show team players by position" do
    @team.add_player(@modric)
    @team.add_player(@mbappe)
    @team.add_player(@pogba) 
    expect(@team.players_by_position("midfielder")).to eq(["Luka Modric", "Paul Pogba"])
    expect(@team.players_by_position("defender")).to eq([])
  end
end 