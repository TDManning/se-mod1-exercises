class Dock
  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, rental_time)
    @name = name
    @max_rental_time = rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat) 
    amount_charged = {
      card_number: "4242424242424242",
      amount: 60
    }
  end
end