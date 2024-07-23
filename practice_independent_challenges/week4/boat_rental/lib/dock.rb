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

  end
  
end