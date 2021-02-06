class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def pickup(bike)
    @bikes.push(bike)
  end
end
