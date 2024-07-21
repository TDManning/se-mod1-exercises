class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet = 'bat', thirstiness = true)
    @name = name
    @pet = pet
    @thirsty = thirstiness
  end

  def drink
    @thirsty = false
  end
end