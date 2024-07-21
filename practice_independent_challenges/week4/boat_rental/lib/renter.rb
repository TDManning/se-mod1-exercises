class Renter
  attr_reader :name, :credit_card_number

  def initialize(name, credit_card_num)
    @name = name
    @credit_card_number = credit_card_num
  end

end
