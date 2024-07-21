animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

# 1. return the value of dogs
puts animals["dogs"]
# 2. add 3 parakeets
puts animals["parakeets"] = 3
# 3. increase the amount of cats by 2
animals["cats"] += 2
animals["cats"] = animals["cats"] + 2

pet_names = ["Fela", "Spot", "Patch", "Willy"]

# 1. add “Claude” to the end of the array
puts pet_names.push("Claude")
# 2. access the first name in the list
puts pet_names[0]
# 3. access the last name in the list
puts pet_names[4]
# 4. remove “Fela” from the list
puts pet_names.shift #takes "Fela" out of the list
puts pet_names #returns the new array with "Fela" removed

