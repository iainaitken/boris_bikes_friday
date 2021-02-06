require 'van'

describe Van do

  let(:van) { Van.new }

  describe '#pickup' do
    it 'stores a bike in the van' do
      bike = double("bike")
      expect { van.pickup(bike) }.to change { van.bikes.length }.from(0).to(1)
    end
  end

end
