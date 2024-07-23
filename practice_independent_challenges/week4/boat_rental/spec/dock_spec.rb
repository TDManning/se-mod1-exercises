require './lib/boat'
require './lib/renter'
require './lib/dock'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Dock do
  let!(:dock) { Dock.new("The Rowing Dock", 3) }
  let!(:kayak_1) { Boat.new(:kayak, 20) }
  let!(:kayak_2) { Boat.new(:kayak, 20) }
  let!(:sup_1) { Boat.new(:standup_paddle_board, 15) }
  let!(:patrick) { Renter.new("Patrick Star", "4242424242424242") }
  let!(:eugene) { Renter.new("Eugene Crabs", "1313131313131313") }
  
  describe '#initialize' do
    it 'starts with attributes' do
      expect(dock).to be_an_instance_of(Dock)
      expect(dock.name).to eq("The Rowing Dock")
      expect(dock.max_rental_time).to eq(3)
      expect(dock.rental_log).to eq({})
    end
  end

  describe '#rent' do
    it 'add boats and renters to the rental log' do
      expect(dock.rental_log).to eq({})

      dock.rent(kayak_1, patrick)    
      dock.rent(kayak_2, patrick)    
      dock.rent(sup_1, eugene) 

      result = {
        kayak_1 => patrick,
        kayak_2 => patrick,
        sup_1 => eugene
      }

      expect(dock.rental_log).to eq(result)
    end
  end

  describe '#Dock#charge' do
    it 'calculate how much to charge for a boat rental' do
      kayak_1.add_hour
      kayak_1.add_hour
      kayak_1.add_hour
      dock.rent(kayak_1, patrick)  
      dock.charge(kayak_1)
    
      amount_charged = {card_number: "4242424242424242", amount: 60}
      expect(dock.charge(kayak_1)).to eq(amount_charged)
    end
  end
end
