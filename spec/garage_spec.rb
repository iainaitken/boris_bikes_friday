require 'garage'

describe Garage do

  let(:garage) { Garage.new }


  describe '#receive' do
    it 'garage can receive a bike' do
      expect(garage).to respond_to(:receive)
    end

    it 'garage can store a bike' do
      bike = double("bike")
      expect { garage.receive(bike) }.to change { garage.bikes.length }.from(0).to(1)
    end
  end
end
