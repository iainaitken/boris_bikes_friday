class Bike
 attr_reader :broken
  def initialize
    @broken = false
  end
  def report_broken
    @broken = true
  end
  def working?
    @broken == true ? false : true
  end
end
