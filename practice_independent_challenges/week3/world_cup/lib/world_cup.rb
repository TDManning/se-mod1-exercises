class WorldCup
  attr_reader :year, :teams
  

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    @teams
    .reject(&:eliminated?)
    .flat_map { |team| team.players } 
    .select { |player| player.position == position }
  end

  def all_players_by_position
    all_players_by_position = {}
    @teams.each do |team|
      team.players.each do |player|
        if all_players_by_position[player.position]
          all_players_by_position[player.position] << player
        else
          all_players_by_position[player.position] = [player]
        end
      end
    end
    all_players_by_position
  end
end