class Player
  attr_reader :name, :position, :salary
  def initialize(details)
    @name = details.fetch(:name)
    @position = details.fetch(:position)
    @salary = details.fetch(:salary)
  end

end
