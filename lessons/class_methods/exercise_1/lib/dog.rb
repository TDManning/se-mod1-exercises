require 'barkable' #or type require_relative "barkable.rb"
require 'pry'

class Dog
  include Barkable

  attr_reader :name, :number_of_woofs
  def initialize(name)
    @name = name
    @number_of_woofs = 0
    #binding.pry ## What will the @name property be?
  end

  def bark
    # binding.pry
    #binding.pry ## What will be output here?
    "#{@name} goes Bark!"
  end

  def woof
    # binding.pry
    #binding.pry ## When calling .woof on a Dog class, will this pry be hit? 
    #It just gave me a number and skipped the word "Woof!" I moved "Woof!" to the last line in the method and it passed.
    @number_of_woofs += 1
    "Woof!"
  end

  def self.woof
    "Self woof!"
    #binding.pry ## Can we call @number_of_woofs inside this class method? Why or why not?
  end

end

Barkable.barking