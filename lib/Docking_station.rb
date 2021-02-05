require_relative 'Bike'

class DockingStation
	DEFAULT_CAPACITY = 20

	attr_reader :bike_list

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
		@bike_list = []
	end

	# def bike_broke?
	# 	@bike_list[-1].broken == true
	# end

	def release_bike
    raise "No bikes avaliable" if dock_empty?
		last_bike = @bike_list[-1]
		raise "Bike is broken" if last_bike.broken == true
	  bike_list.pop
	end

	def dock(bike)
    raise "Station full" if dock_full?
		bike_list << bike
	end

	def check_bike
		!bike_list.empty?
	end

  private
	def dock_empty?
		bike_list.empty?
	end
	def dock_full?
		bike_list.length >= @capacity
	end

end
