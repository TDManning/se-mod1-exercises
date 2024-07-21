require './lib/boat'
require './lib/renter'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Boat do
  let!(:kayak) { Boat.new(:kayak, 20) }
  
  describe '#initialize' do
    it 'starts with attributes' do
      expect(kayak).to be_an_instance_of(Boat)
      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
      expect(kayak.hours_rented).to eq(0)
    end
  end

  describe '#add_hour' do
    it 'adds hours to the boat rental' do
      kayak.add_hour
      kayak.add_hour
      kayak.add_hour 

      expect(kayak.hours_rented).to eq(3)
    end
  end 
end






