require 'garage'

class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def pickup(bike)
    @bikes.push(bike)
  end

  def dropoff
    @bikes.pop
  end

  def deliver(garage)
    bike = @bikes.pop
    garage.receive(bike)
  end
end
