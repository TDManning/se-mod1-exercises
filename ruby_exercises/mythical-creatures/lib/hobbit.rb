class Hobbit
  attr_reader :name, :disposition, :age, :has_ring
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @has_ring = false
  end 

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if age <= 32
      false
    elsif age >= 33
      true
    end
  end

  def old?
    age >= 101
    true
  end

  def has_ring?
    if self.name == "Sam" 
      true
    else false
    end
  end

  def is_short?
    true
  end

end