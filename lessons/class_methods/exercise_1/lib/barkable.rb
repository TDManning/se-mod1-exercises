## This module is included for your practice in figuring out how modules can be used in conjunction with class methods. Be careful of your scoped variables! 

module Barkable

  def barking
    puts "#{@name} says, 'bark'."
  end
  
end

include Barkable
Barkable.barking