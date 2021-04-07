class League

  attr_reader :name, :teams
  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  def captains
    @teams.map do |team|
      team.captain
    end
  end

  def players_by_team
  # teams_players = Hash.new do |hash, key|
  #   hash[key] = []
  # @teams.each do |team|
  #   teams_players[team.name] << team.players
  # end
  # player_names = @teams.map do |team|
  #   team.players.map do |player|
  #     player.name
  #    end
  #  end
  teams_players = @teams.map do |team|
    [team.name, team.players.map {|player| player.name}]
   end.to_h

  end


end
