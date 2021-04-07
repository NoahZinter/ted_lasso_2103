require './lib/player'


describe Player do
  it 'exists' do
    player = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})

    expect(player).to be_a(Player)
  end

  it 'stores initialize info in a hash' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})

    expect(roy.name).to eq("Roy Kent")
    expect(roy.position).to eq("Center Midfielder")
    expect(roy.salary).to eq(1_000_000)
  end



end
