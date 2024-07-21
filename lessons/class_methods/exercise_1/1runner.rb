require './lib/dog'
## FYI, Terra, this file is referencing dog.rb

max = Dog.new("Max")
puts max.woof

## Describe what each part of the code above did -
# `max` =>
# `Dog` =>
# `.woof` =>

# puts Dog.woof

# Is there any difference between the two methods above? (max.woof and Dog.woof)?
max.woof 
#This returns "Woof!"
puts Dog.woof
#This returns "Self woof!"


## Un-comment the line of code below, does it work? Why or why not? No, bark is being asked to run on the class Dog. 
#bark doesn't exist in this code 
# Dog.bark

