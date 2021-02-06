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

  describe '#deliver' do

    it 'van can deliver bike to garage' do
      bike = double("bike")
      garage = double("garage", :receive => "bike received")
      van.pickup(bike)
      expect  { van.deliver(garage) }.to change { van.bikes.length }.from(1).to(0)
    end

    it 'garage receives bike when van delivers it' do
      bike = double("bike")
      garage = double("garage", :receive => "bike received")
      van.pickup(bike)
      expect(van.deliver(garage)).to eq("bike received")
    end
  end
end
