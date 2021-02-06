require 'van'

describe Van do

  let(:van) { Van.new }

  describe '#pickup' do
    it 'stores a bike in the van' do
      bike = double("bike")
      expect { van.pickup(bike) }.to change { van.bikes.length }.from(0).to(1)
    end
  end

  describe '#dropoff' do
    it 'releases a bike from the van' do
      bike = double("bike")
      van.pickup(bike)
      expect { van.dropoff }.to change {van.bikes.length }.from(1).to(0)
    end
  end
end
