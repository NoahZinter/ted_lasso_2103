require './lib/player'
require './lib/team'
require './lib/league'

describe League do
  it 'has a name' do
    premier = League.new("Premier League")

    expect(premier.name).to eq("Premier League")
  end

  it 'starts with empty array of teams' do
    premier = League.new("Premier League")

    expect(premier.teams).to eq([])
  end

  describe "#add_team" do
    it 'can add teams' do
      premier = League.new("Premier League")
      roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
      jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
      fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
      manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.teams).to eq([richmond, manchester])
    end
  end

  describe "#captains" do
    it 'returns the captain of each team' do
      premier = League.new("Premier League")
      roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
      jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
      fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
      manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.captains).to eq([roy, fernandinho])
    end
  end

  describe '#players_by_team' do
    it "returns a hash with teams as keys and arrays of players as values" do
      premier = League.new("Premier League")
      roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
      sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
      richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
      jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
      fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
      manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
      premier.add_team(richmond)
      premier.add_team(manchester)

      expect(premier.players_by_team).to eq({
        "AFC Richmond" => ["Roy Kent", "Sam Obisanya"],
        "Manchester City FC" => ["Jamie Tartt", "Fernandinho"]
        })
      end
    end
end
