require 'Docking_station'

describe DockingStation do

	it { is_expected.to respond_to(:check_bike)}

  let(:docking_station) { subject } # DockingStation.new



	# dock is a method held by DockingStation, taking an argument of (bike)

	describe '#release_bike' do
		it { is_expected.to respond_to(:release_bike)}

		context 'When Docking Station is Empty' do
			it 'return error if release method called' do
				expect { docking_station.release_bike }.to raise_error("No bikes avaliable")
			end
		end

		context 'when a bike is broken' do
			it 'does not release' do
				bike = double("bike", :working? => false)
				docking_station.dock(bike)
				expect { docking_station.release_bike }.to raise_error("Bike is broken")
				end
			end
		end


	describe '#dock' do
		let(:empty_docking) { subject } # this will break once the @bike_list is initialise with some bikes

		it 'can dock a bike' do
			bike = double(:bike)
			expect(docking_station.dock(bike).count).to eq (1)
		end

		context 'When Docking Station is Full' do
			it 'return error if dock method called on full station' do
				# allow(docking_station).to receive(:bike_list) {Array.new(20) { Bike.new }}
				ds = DockingStation.new
				20.times { ds.dock double(:bike) }
				expect { ds.dock double(:bike) }.to raise_error("Station full")
			end
		end
	end

	describe '#check_bike' do
		context 'when a bike is available' do
			it 'should return true' do
				# docking_station.dock(bike)
				ds = DockingStation.new
				ds.dock double(:bike)
				expect(ds.check_bike).to be true
			end
		end
	end

end
