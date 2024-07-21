class Centaur
  attr_reader :name, :breed, :actions
  def initialize(name, breed)
    @name = name
    @breed = breed
    @actions = 0 
  end

  def shoot
    @actions += 1
    "Twang!!!"
  end 

  def run
    @actions += 1
    'Clop clop clop clop!'
  end 

  def cranky?
    @actions >= 3
    # if @actions >= 3  
    #   true
    # else 
    #   false
    # end
  end
  
  def standing?
    true
  end
  
end