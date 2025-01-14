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
    teams_players = @teams.map do |team|
      [team.name, team.players.map {|player| player.name}]
    end.to_h
  end

  def most_expensive_player
    players = @teams.map do |team|
      team.players
     end.flatten!
    highest_paid = players.group_by do |player|
      player.salary
    end.max.last
    highest_paid.map do |player|
      player.name
    end
  end

  # def players_by_salary_range
  #   ranges = {}
  #   players = @teams.map do |team|
  #     team.players
  #    end.flatten!
  #   players.each do |player|
  #
  #
  #
  # end

end
