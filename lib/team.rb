class Team

  attr_reader :name, :coach, :players, :positions_filled
  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = players
    @positions_filled = []
  end

  def total_salary
    all_salaries = @players.map do |player|
      player.salary
    end
    all_salaries.sum
  end

  def captain
    highest_paid = @players.max_by do |player|
      player.salary
    end
    highest_paid.name
  end

  def fill_positions
    @players.each do |player|
      @positions_filled << player.position
    end
  end


end
