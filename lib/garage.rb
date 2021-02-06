class Garage

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def receive(bike)
    @bikes.push(bike)
  end

end
