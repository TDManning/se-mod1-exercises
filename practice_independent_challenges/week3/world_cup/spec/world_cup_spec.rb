require './lib/world_cup'
require './lib/team'
require './lib/player'

RSpec.describe WorldCup do
  before(:each) do
    @team = Team.new("France")
    @france = Team.new("France")
    @croatia = Team.new("Croatia") 

    @player = Player.new({name: "Luka Modric", position: "midfielder"})
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  
    @vida = Player.new({name: "Domagoj Vida", position: "defender"}) 

    @world_cup = WorldCup.new(2018, [@france, @croatia])   

    @france.add_player(@mbappe) 
    @france.add_player(@pogba)    
    @croatia.add_player(@modric) 
    @croatia.add_player(@vida) 
  end

  it "exists" do
    expect(@france).to be_instance_of(Team)
    expect(@croatia).to be_instance_of(Team)
    expect(@world_cup).to be_instance_of(WorldCup)
  end

  it 'has a year' do
    expect(@world_cup.year).to eq(2018)
  end

  it "has teams" do
    expect(@world_cup.teams).to eq([@france, @croatia])
  end

  it "can return active players by position" do
    expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba, @modric])
    @croatia.eliminated = true 
    expect(@world_cup.active_players_by_position("midfielder")).to eq([@pogba])
  end

  it 'can return all players by position' do 
    all_players_by_position = {
      "forward" => [@mbappe],
      "midfielder" => [@pogba, @modric],
      "defender" => [@vida]
    }
    expect(@world_cup.all_players_by_position).to eq(all_players_by_position)
  end
end
