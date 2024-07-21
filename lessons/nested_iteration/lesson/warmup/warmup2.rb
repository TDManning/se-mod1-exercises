# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
p nested_animals.flatten

#or

nested_animals_flatten = nested_animals.flatten do |animal|
  animal.to_s
end

puts nested_animals_flatten

#or
 
unnested = []  #becasue I'm using .each

nested_animals.each do |animals|
  animals.each do |animal|
    unnessted << animal
  end
end

puts unnested

# 2. Return an unnested array of animals with length >= 4


# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }


pet_inventory = {
 kat: ['cat', 'cat', 'cat'],
 bob: ['fish', 'snake', 'gerbil'],
 stoney: ['cat', 'dog'],
 gerri: ['dog', 'dog'],
 jamison: ['bird', 'dog']
}

# Return an array that holds all the pet types owned by all owners,
# in alphabetical order, using .each
# do NOT use
#.uniq, .flatten, .values, or .keys
all_pets = []
pet_inventory.each do |owner, pets|
  pets.each do |pet|
    all_pets << pet if !all_pets.include?(pet) 
  end
end

p all_pets
